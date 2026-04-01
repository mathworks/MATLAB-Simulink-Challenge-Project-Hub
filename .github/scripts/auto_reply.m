function auto_reply()
%AUTO_REPLY Automated discussion reply bot for MathWorks Challenge Projects Hub
%   Triggered by a GitHub Action when a new comment is posted on a GitHub
%   Discussion. Uses OpenAI ChatGPT API to generate helpful responses to
%   student questions about challenge projects and the program.

    %% Read environment variables
    githubToken = getenv('GH_TOKEN');
    openaiKey   = getenv('OPENAI_API_KEY');
    repo        = getenv('REPO_FULL_NAME');
    discNumber  = str2double(getenv('DISCUSSION_NUMBER'));
    commentId   = getenv('COMMENT_NODE_ID');

    repoParts = strsplit(repo, '/');
    owner     = repoParts{1};
    repoName  = repoParts{2};

    %% 1. Fetch discussion info and comment details via GraphQL
    fprintf('Fetching discussion and comment info...\n');
    query  = buildInfoQuery(owner, repoName, discNumber, commentId);
    result = githubGraphQL(query, githubToken);

    discussion = result.data.repository.discussion;
    comment    = result.data.node;

    %% 2. Build thread context (only the relevant thread, not full discussion)
    [threadContext, replyToId] = buildThreadContext(comment);

    %% 3. Read context files
    mainReadme  = readFileIfExists('README.md');
    projectDesc = extractProjectReadme(discussion.body);
    wikiContent = readWikiContent('wiki');

    %% 4. Extract images from latest comment and convert to base64 data URIs
    imageUrls = extractImageUrls(comment.body);
    fprintf('Found %d image(s) in comment.\n', numel(imageUrls));
    imageDataUris = downloadImagesAsDataUris(imageUrls);

    %% 5. Build prompt and call ChatGPT
    fprintf('Calling OpenAI API (gpt-5.4-mini)...\n');
    systemPrompt = buildSystemPrompt(mainReadme, projectDesc, wikiContent);
    userPrompt   = buildUserPrompt(discussion, threadContext, comment.body);

    try
        aiReply = callChatGPT(systemPrompt, userPrompt, imageDataUris, openaiKey);
    catch ME
        fprintf(2, 'OpenAI API error: %s\n', ME.message);
        return
    end

    %% 6. Check if we should reply
    if startsWith(strtrim(aiReply), 'NO_REPLY')
        fprintf('Skipping: comment is directed at a specific person.\n');
        return
    end

    %% 7. Post reply with bot attribution footer
    footer = sprintf(['\n\n---\n' ...
        '*🤖 This is an automated response. For further assistance, ' ...
        'please tag a project mentor or visit the ' ...
        '[wiki](https://github.com/%s/wiki).*'], repo);
    aiReply = aiReply + string(footer);

    fprintf('Posting reply...\n');
    try
        postReply(discussion.id, replyToId, char(aiReply), githubToken);
        fprintf('Reply posted successfully.\n');
    catch ME
        fprintf(2, 'GitHub API error: %s\n', ME.message);
    end
end

%% ---- GraphQL Query Builder ----

function query = buildInfoQuery(owner, repoName, discNumber, commentId)
    query = sprintf([ ...
        '{ repository(owner: "%s", name: "%s") {' ...
        '    discussion(number: %d) { id title body }' ...
        '  }' ...
        '  node(id: "%s") {' ...
        '    ... on DiscussionComment {' ...
        '      id body author { login }' ...
        '      replyTo {' ...
        '        id body author { login }' ...
        '        replies(first: 100) {' ...
        '          nodes { id body author { login } }' ...
        '        }' ...
        '      }' ...
        '    }' ...
        '  }' ...
        '}'], owner, repoName, discNumber, commentId);
end

%% ---- Thread Context ----

function [threadContext, replyToId] = buildThreadContext(comment)
    if isfield(comment, 'replyTo') && isstruct(comment.replyTo)
        % Comment is a reply — get parent + all sibling replies
        parent = comment.replyTo;
        lines  = {sprintf('**%s**: %s', parent.author.login, parent.body)};

        if isfield(parent, 'replies') && isstruct(parent.replies) ...
                && isfield(parent.replies, 'nodes') && isstruct(parent.replies.nodes)
            nodes = parent.replies.nodes;
            for k = 1:numel(nodes)
                lines{end+1} = sprintf('**%s**: %s', ...
                    nodes(k).author.login, nodes(k).body); %#ok<AGROW>
            end
        end

        replyToId     = parent.id;
        threadContext = strjoin(lines, sprintf('\n---\n'));
    else
        % Top-level comment — thread is just this comment
        threadContext = sprintf('**%s**: %s', comment.author.login, comment.body);
        replyToId     = comment.id;
    end
end

%% ---- File Reading Helpers ----

function content = readFileIfExists(filepath)
    if isfile(filepath)
        content = fileread(filepath);
    else
        content = '';
    end
end

function projectDesc = extractProjectReadme(discussionBody)
    projectDesc = '';
    if isempty(discussionBody), return; end

    tokens = regexp(discussionBody, ...
        'https://github\.com/[^/]+/[^/]+/(?:blob|tree)/main/(projects/[^\s\)\"'']+README\.md)', ...
        'tokens', 'once');

    if ~isempty(tokens)
        filePath = urlDecode(tokens{1});
        if isfile(filePath)
            projectDesc = fileread(filePath);
            fprintf('Loaded project README: %s\n', filePath);
        else
            fprintf('Project README not found locally: %s\n', filePath);
        end
    else
        fprintf('No project README link found in discussion body.\n');
    end
end

function decoded = urlDecode(str)
    decoded = regexprep(str, '%([0-9A-Fa-f]{2})', '${char(hex2dec($1))}');
end

function content = readWikiContent(wikiDir)
    content = '';
    if ~isfolder(wikiDir), return; end
    files = dir(fullfile(wikiDir, '*.md'));
    parts = cell(1, numel(files));
    for k = 1:numel(files)
        parts{k} = fileread(fullfile(files(k).folder, files(k).name));
    end
    if ~isempty(parts)
        content = strjoin(parts, newline);
    end
    fprintf('Loaded %d wiki page(s).\n', numel(files));
end

%% ---- Image Extraction ----

function urls = extractImageUrls(text)
    % Markdown image syntax: ![alt](url)
    mdTokens = regexp(text, '!\[.*?\]\((https?://[^\s\)]+)\)', 'tokens');
    urls = cellfun(@(c) c{1}, mdTokens, 'UniformOutput', false);

    % HTML img tags: <img src="url">
    htmlTokens = regexp(text, '<img[^>]+src="(https?://[^"]+)"', 'tokens');
    htmlUrls = cellfun(@(c) c{1}, htmlTokens, 'UniformOutput', false);

    % Raw GitHub user-content image URLs
    rawTokens = regexp(text, ...
        '(https://user-images\.githubusercontent\.com/[^\s\)]+)', 'tokens');
    rawUrls = cellfun(@(c) c{1}, rawTokens, 'UniformOutput', false);

    % GitHub user-attachments (newer format)
    attachTokens = regexp(text, ...
        '(https://github\.com/user-attachments/assets/[^\s\)]+)', 'tokens');
    attachUrls = cellfun(@(c) c{1}, attachTokens, 'UniformOutput', false);

    urls = unique([urls, htmlUrls, rawUrls, attachUrls]);
end

%% ---- Image Download ----

function dataUris = downloadImagesAsDataUris(urls)
    import matlab.net.http.*
    import matlab.net.http.field.*

    dataUris = {};
    for k = 1:numel(urls)
        try
            fprintf('Downloading image: %s\n', urls{k});
            request  = RequestMessage(RequestMethod.GET);
            options  = HTTPOptions('ConnectTimeout', 15);
            response = request.send(URI(urls{k}), options);

            if response.StatusCode ~= 200
                fprintf(2, 'Failed to download image (HTTP %d), skipping.\n', ...
                    int32(response.StatusCode));
                continue
            end

            % Get MIME type from Content-Type header
            ctField = response.getFields('Content-Type');
            if ~isempty(ctField)
                mimeType = char(ctField.Value);
                mimeType = strtok(mimeType, ';');  % strip charset etc.
            else
                mimeType = 'image/png';
            end

            % Base64 encode
            imageBytes = response.Body.Data;
            if ~isa(imageBytes, 'uint8')
                imageBytes = uint8(imageBytes);
            end
            base64Str = matlab.net.base64encode(imageBytes);

            dataUris{end+1} = sprintf('data:%s;base64,%s', ...
                strtrim(mimeType), base64Str); %#ok<AGROW>
        catch ME
            fprintf(2, 'Error downloading image: %s\n', ME.message);
        end
    end
    fprintf('Successfully downloaded %d/%d image(s).\n', numel(dataUris), numel(urls));
end

%% ---- Prompt Construction ----

function prompt = buildSystemPrompt(mainReadme, projectDesc, wikiContent)
    prompt = sprintf([ ...
        'You are an automated assistant for the MathWorks Challenge Projects ' ...
        'Hub on GitHub. You help students with questions about their challenge ' ...
        'projects and about the MathWorks Challenge Projects program.\n\n' ...
        'RULES:\n' ...
        '1. NEVER solve the project for the student. Only provide suggestions, ' ...
        'guidance, hints, and point them to relevant MATLAB/Simulink resources ' ...
        'or documentation.\n' ...
        '2. Only answer questions related to the project or the MathWorks ' ...
        'Challenge Projects program. For unrelated questions, reply with a ' ...
        'single short sentence declining (e.g., "This discussion is for ' ...
        'questions about the challenge project. Please post general questions ' ...
        'elsewhere.") — do not elaborate.\n' ...
        '3. If the comment is clearly directed at a specific person (e.g., ' ...
        '"@john can you review this?", "Thanks @jane for your help", or a ' ...
        'private back-and-forth with another user), respond with exactly: NO_REPLY\n' ...
        '4. If the comment references another user but asks a general question ' ...
        '(e.g., "regarding @user''s approach, how would I..."), answer normally.\n' ...
        '5. Keep responses concise but complete — aim for 3-5 sentences (around 100-150 words). ' ...
        'Never restate the question. Go straight to the answer. ' ...
        'Use bullet points when they are necessary and useful (e.g., listing steps or options), ' ...
        'but vary your format — do not default to bullet lists for every response.\n' ...
        '6. You are a bot — do not pretend to be a human. Do not make promises ' ...
        'about rewards, project acceptance, or timelines.\n' ...
        '7. If images are provided, analyze them to better understand the ' ...
        'student''s question (e.g., plots, error screenshots, diagrams).\n' ...
        '8. When relevant, suggest specific MATLAB/Simulink functions, ' ...
        'toolboxes, or documentation links.\n' ...
        '9. Help students with questions about MathWorks tools, including MATLAB, ' ...
        'Simulink, and related toolboxes. You can explain how specific functions work, ' ...
        'suggest appropriate toolboxes for their task, and point them to relevant ' ...
        'MathWorks documentation (mathworks.com/help).\n\n' ...
        'CONTEXT:\n\n' ...
        '--- Main Program Description ---\n%s\n\n' ...
        '--- Project Description ---\n%s\n\n' ...
        '--- Program Wiki ---\n%s'], ...
        mainReadme, projectDesc, wikiContent);
end

function prompt = buildUserPrompt(discussion, threadContext, latestComment)
    prompt = sprintf([ ...
        'Discussion title: %s\n\n' ...
        'Discussion description:\n%s\n\n' ...
        'Thread conversation:\n%s\n\n' ...
        'Latest comment (answer this):\n%s'], ...
        discussion.title, discussion.body, threadContext, latestComment);
end

%% ---- HTTP Helper ----

function data = httpPost(url, bodyStruct, authValue, timeoutSec)
    import matlab.net.http.*
    import matlab.net.http.field.*

    header = [
        ContentTypeField(MediaType('application/json')), ...
        GenericField('Authorization', authValue)
    ];

    jsonBody = jsonencode(bodyStruct);
    request  = RequestMessage(RequestMethod.POST, header);
    request.Body = matlab.net.http.MessageBody();
    request.Body.Payload = unicode2native(jsonBody, 'UTF-8');

    options  = matlab.net.http.HTTPOptions('ConnectTimeout', timeoutSec);
    response = request.send(matlab.net.URI(url), options);

    statusCode = int32(response.StatusCode);

    if isa(response.Body.Data, 'uint8')
        responseText = native2unicode(response.Body.Data, 'UTF-8');
    elseif ischar(response.Body.Data) || isstring(response.Body.Data)
        responseText = char(response.Body.Data);
    else
        responseText = jsonencode(response.Body.Data);
    end

    if statusCode >= 400
        fprintf(2, 'HTTP %d from %s\nResponse: %s\n', statusCode, url, responseText);
        error('httpPost:failed', 'HTTP %d: %s', statusCode, responseText);
    end

    data = jsondecode(responseText);
end

%% ---- OpenAI API ----

function reply = callChatGPT(systemPrompt, userPrompt, imageUrls, apiKey)
    sysMsg = struct('role', 'system', 'content', systemPrompt);

    if isempty(imageUrls)
        userMsg = struct('role', 'user', 'content', userPrompt);
    else
        content    = cell(1, 1 + numel(imageUrls));
        content{1} = struct('type', 'text', 'text', userPrompt);
        for k = 1:numel(imageUrls)
            content{k+1} = struct('type', 'image_url', ...
                'image_url', struct('url', imageUrls{k}));
        end
        userMsg         = struct('role', 'user');
        userMsg.content = content;
    end

    body            = struct();
    body.model      = 'gpt-5.4-mini';
    body.messages   = {sysMsg, userMsg};
    body.max_completion_tokens = 1024;

    response = httpPost('https://api.openai.com/v1/chat/completions', ...
        body, ['Bearer ' apiKey], 120);
    reply    = response.choices(1).message.content;
end

%% ---- GitHub GraphQL API ----

function result = githubGraphQL(query, token)
    body = struct('query', query);
    result = httpPost('https://api.github.com/graphql', body, ['Bearer ' token], 30);
end

function postReply(discussionId, replyToId, replyBody, token)
    mutation = [ ...
        'mutation($discussionId: ID!, $replyToId: ID!, $body: String!) {' ...
        '  addDiscussionComment(input: {' ...
        '    discussionId: $discussionId,' ...
        '    replyToId: $replyToId,' ...
        '    body: $body' ...
        '  }) { comment { id } }' ...
        '}'];

    payload = struct( ...
        'query', mutation, ...
        'variables', struct( ...
            'discussionId', discussionId, ...
            'replyToId',    replyToId, ...
            'body',         replyBody));

    httpPost('https://api.github.com/graphql', payload, ['Bearer ' token], 30);
end
