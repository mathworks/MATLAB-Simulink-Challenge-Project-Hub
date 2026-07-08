function build_submissions_markdown(jsonPath, repoRoot)
    if nargin < 2
        repoRoot = pwd;
    end

    raw = fileread(jsonPath);
    submissions = jsondecode(raw);

    % jsondecode returns a struct array if all objects have the same fields,
    % or a cell array of structs if fields differ across entries.
    if iscell(submissions)
        submissions = unifyStructFields(submissions);
    end
    if ~isstruct(submissions)
        error('Expected JSON to decode to struct or struct array.');
    end
    if ~isfield(submissions, 'project_title')
        error('JSON must contain field "project_title" per submission.');
    end
    submissions = normalizeSubmissions(submissions);

    % --- 2. Generate ALL_SUBMISSIONS.md inside /projects ---
    allFile = fullfile(repoRoot, 'projects', 'ALL_SUBMISSIONS.md');
    fprintf('Writing %s\n', allFile);
    writeAllSubmissions(submissions, allFile);

    % --- 3. Per-project submissions ---
    projectsRoot = fullfile(repoRoot, 'projects');
    fprintf('Writing per-project submissions under %s\n', projectsRoot);
    writeProjectSubmissions(submissions, projectsRoot);

    % --- 4. Update main README badges ---
    readmePath = fullfile(repoRoot, 'README.md');
    updateMainReadme(submissions, readmePath);
end


%====================================================================
function submissions = normalizeSubmissions(submissions)

    if ~isfield(submissions, 'submission_date')
        error('JSON submissions must contain "submission_date" in yyyy-MM-dd format.');
    end

    n = numel(submissions);
    for i = 1:n
        try
            submissions(i).submission_datetime = datetime(submissions(i).submission_date, ...
                'InputFormat', 'yyyy-MM-dd', 'TimeZone', 'local');
        catch
            submissions(i).submission_datetime = NaT;
        end

        if isfield(submissions, 'tech_trend')
            tt = submissions(i).tech_trend;
        else
            tt = [];
        end
        submissions(i).megatrends = normalizeStrOrArray(tt);

        if isfield(submissions, 'tags')
            submissions(i).technologies = normalizeStrOrArray(submissions(i).tags);
        else
            submissions(i).technologies = {};
        end

        submissions(i).authors = ensureStr(submissions(i), 'authors');
        submissions(i).affiliation = ensureStr(submissions(i), 'affiliation');
        submissions(i).summary = ensureStr(submissions(i), 'summary');
        submissions(i).submission_title = ensureStr(submissions(i), 'submission_title');
        submissions(i).repo_url = ensureStr(submissions(i), 'repo_url');
        submissions(i).video_url = ensureStr(submissions(i), 'video_url');

        if isfield(submissions, 'TS')
            val = submissions(i).TS;
            if islogical(val)
                submissions(i).TS = val;
            else
                vstr = lower(strtrim(string(val)));
                submissions(i).TS = any(strcmp(vstr, ["yes","y","true","1","top"]));
            end
        else
            submissions(i).TS = false;
        end
    end
end

function v = ensureStr(s, fieldName)
    if ~isfield(s, fieldName) || isempty(s.(fieldName))
        v = "";
        return;
    end
    v = string(s.(fieldName));
end

function arr = normalizeStrOrArray(v)
    if isempty(v)
        arr = {};
        return;
    end
    if isstring(v) || ischar(v)
        parts = strsplit(strtrim(string(v)), ',');
        arr = strtrim(parts);
        arr = cellstr(arr);
    elseif iscell(v)
        arr = cellfun(@(x) strtrim(char(x)), v, 'UniformOutput', false);
    else
        arr = {char(string(v))};
    end
    arr = arr(~cellfun(@isempty, arr));
end

%====================================================================
function writeAllSubmissions(submissions, outPath)

    fid = fopen(outPath, 'w');
    if fid < 0
        error('Cannot open %s for writing.', outPath);
    end
    cleaner = onCleanup(@() fclose(fid));

    fprintf(fid, '# All Submissions\n\n');
    fprintf(fid, '> `*` indicates a submission that appears under multiple megatrends.\n\n');

    canon = canonicalMegatrends();
    allMT = {};
    for i = 1:numel(submissions)
        m = submissions(i).megatrends;
        m = m(:)';
        allMT = [allMT, m]; %#ok<AGROW>
    end
    mtList = intersect(canon.order, allMT, 'stable');

    % Collapsible TOC
    fprintf(fid, '<details>\n');
    fprintf(fid, '<summary><strong>Jump to megatrend</strong></summary>\n\n');
    for i = 1:numel(mtList)
        mt = mtList{i};
        anchor = megatrendAnchor(mt);
        fprintf(fid, '- [%s](#%s)\n', mt, anchor);
    end
    fprintf(fid, '\n</details>\n\n---\n\n');

    seenKeys = {};
    keyToNumber = containers.Map('KeyType','char','ValueType','double');
    count = 1;

    for m = 1:numel(mtList)
        mt = mtList{m};
        meta = canon.map.(matlab.lang.makeValidName(mt));

        fprintf(fid, '## [%s](%s)\n\n', mt, meta.url);
        fprintf(fid, '<details>\n');
        fprintf(fid, '<summary><strong>Show projects in %s</strong></summary>\n\n', mt);

        idx = arrayfun(@(s) any(strcmp(s.megatrends, mt)), submissions);
        subsMT = submissions(idx);

        if isempty(subsMT)
            fprintf(fid, '_No submissions for this megatrend yet._\n\n');
            fprintf(fid, '</details>\n\n---\n\n');
            continue;
        end

        projTitles = {subsMT.project_title};
        [uniqueTitles, ~, gidx] = unique(projTitles, 'stable');

        for p = 1:numel(uniqueTitles)
            pt = uniqueTitles{p};
            subsProj = subsMT(gidx == p);
            [~, order] = sort([subsProj.submission_datetime], 'descend');
            subsProj = subsProj(order);

            projSlug = urlEncodeProjectTitle(pt);
            fprintf(fid, '### [%s](projects/%s)\n\n', pt, projSlug);

            fprintf(fid, '|#| Submission | Links |\n');
            fprintf(fid, '|-|-|-------------------------------------------|\n');

            for k = 1:numel(subsProj)
                key = sprintf('%s|%s|%s', subsProj(k).project_title, subsProj(k).submission_title, subsProj(k).submission_date);

                if isKey(keyToNumber, key)
                    numStr = sprintf('%d*', keyToNumber(key));
                else
                    numStr = sprintf('%d', count);
                    keyToNumber(key) = count;
                    seenKeys{end+1} = key; %#ok<AGROW>
                    count = count + 1;
                end

                row = buildSubmissionRow3col(subsProj(k), numStr);
                fprintf(fid, '%s\n', row);
            end

            fprintf(fid, '\n---\n\n');
        end

        fprintf(fid, '</details>\n\n---\n\n');
    end
end

%====================================================================
function writeProjectSubmissions(submissions, projectsRoot)

    projTitles = {submissions.project_title};
    [uniqueTitles, ~, gidx] = unique(projTitles, 'stable');

    for p = 1:numel(uniqueTitles)
        pt = uniqueTitles{p};
        subsProj = submissions(gidx == p);
        [~, order] = sort([subsProj.submission_datetime], 'descend');
        subsProj = subsProj(order);

        projFolder = fullfile(projectsRoot, pt);
        if ~isfolder(projFolder)
            warning('Project folder not found: %s (will still write submissions.md here)', projFolder);
            mkdir(projFolder);
        end

        outPath = fullfile(projFolder, 'submissions.md');
        fprintf('  Writing %s\n', outPath);
        fid = fopen(outPath, 'w');
        if fid < 0
            warning('Cannot open %s for writing.', outPath);
            continue;
        end
        cleaner = onCleanup(@() fclose(fid)); %#ok<NASGU>

        fprintf(fid, '# Submissions for: %s\n\n', pt);

        if isempty(subsProj)
            fprintf(fid, '_No submissions for this project yet._\n');
            continue;
        end

        fprintf(fid, '|#| Submission | Links |\n');
        fprintf(fid, '|-|-|-------------------------------------------|\n');

        for k = 1:numel(subsProj)
            row = buildSubmissionRow3col(subsProj(k), num2str(k));
            fprintf(fid, '%s\n', row);
        end
    end
end

%====================================================================
function row = buildSubmissionRow3col(s, numStr)

    spacerLink = '<img width="400" height="0" style="display:block;line-height:0;border:none;" alt="">';

    title = strtrim(s.submission_title);
    desc  = strtrim(s.summary);
    authors = strtrim(char(s.authors));
    aff     = strtrim(char(s.affiliation));

    mtBadges = buildMegatrendBadges(s.megatrends);
    [repoCell, videoCell] = buildRepoAndVideoCells(s.repo_url, s.video_url);

    if ~isnat(s.submission_datetime)
        dateStr = datestr(s.submission_datetime, 'yyyy-mm-dd'); %#ok<DATST>
    else
        dateStr = '';
    end

    submissionCol = sprintf( ...
        '[%s](%s)<br/> %s <br><br> **Authors:** %s <br/> **Affiliation:** %s <br> **Submission Date:** %s', ...
        title, s.repo_url, desc, authors, aff, dateStr);

    linksCol = sprintf('%s<br>%s <br> %s <br><br><br> %s', ...
        spacerLink, repoCell, videoCell, mtBadges);

    row = sprintf('|%s|%s|%s|', numStr, submissionCol, linksCol);
end


%====================================================================
function mtBadges = buildMegatrendBadges(megatrends)
    if isempty(megatrends)
        mtBadges = '';
        return;
    end
    canon = canonicalMegatrends();
    parts = strings(1, numel(megatrends));
    for i = 1:numel(megatrends)
        mt = megatrends{i};

        if strcmpi(mt, 'Sustainability and Renewable Energy')
            shortLabel = 'Sustainability';
        else
            shortLabel = mt;
        end

        label = urlEncode(shortLabel);
        badgeUrl = sprintf('https://img.shields.io/badge/Trend-%s-blue?style=flat', label);

        if isfield(canon.map, matlab.lang.makeValidName(mt))
            meta = canon.map.(matlab.lang.makeValidName(mt));
            parts(i) = sprintf('[![Trend: %s](%s)](%s)', shortLabel, badgeUrl, meta.url);
        else
            parts(i) = sprintf('![Trend: %s](%s)', shortLabel, badgeUrl);
        end
    end
    mtBadges = strjoin(parts, ' ');
end


function [repoCell, videoCell] = buildRepoAndVideoCells(repoUrl, videoUrl)
    repoUrl = strtrim(char(repoUrl));
    videoUrl = strtrim(char(videoUrl));
    repoCellParts = {};

    if ~isempty(repoUrl)
        if contains(repoUrl, 'github.com')
            ghBadge = ['[![GitHub Repo](https://img.shields.io/badge/GitHub-Repo-181717?' ...
                       'style=flat&logo=github&logoColor=white)](' repoUrl ')'];
            repoCellParts{end+1} = ghBadge;
            [owner, repo] = parseGithubOwnerRepo(repoUrl);
            if ~isempty(owner)
                moUrl = sprintf('https://matlab.mathworks.com/open/github/v1?repo=%s/%s', owner, repo);
                moBadge = sprintf('[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](%s)', moUrl);
                repoCellParts{end+1} = moBadge;
            end
        elseif contains(repoUrl, 'mathworks.com/matlabcentral/fileexchange')
            fexBadge = ['[![MATLAB File Exchange](https://img.shields.io/badge/MATLAB-File%%20Exchange-orange?' ...
                        'style=flat&logo=mathworks&logoColor=white)](' repoUrl ')'];
            repoCellParts{end+1} = fexBadge;
        else
            repoCellParts{end+1} = sprintf('[Link](%s)', repoUrl);
        end
    end

    if isempty(repoCellParts)
        repoCell = '';
    else
        repoCell = strjoin(repoCellParts, ' <br> ');
    end

    if ~isempty(videoUrl)
        videoCell = sprintf('[![YouTube Video](https://img.shields.io/badge/Watch%%20Video-FF0000?style=flat&logo=youtube&logoColor=white)](%s)', videoUrl);
    else
        videoCell = '';
    end
end

%====================================================================
function [owner, repo] = parseGithubOwnerRepo(url)
    owner = '';
    repo  = '';
    tokens = regexp(url, 'github\.com/([^/]+)/([^/?#]+)', 'tokens', 'once');
    if isempty(tokens), return; end
    owner = tokens{1};
    repo  = regexprep(tokens{2}, '\.git$', '');
end

%====================================================================
function canon = canonicalMegatrends()
    names = {
        'Artificial Intelligence'
        'Autonomous Vehicles'
        'Big Data'
        'Computer Vision'
        'Computational Finance'
        'Drones'
        'Industry 4.0'
        'Robotics'
        'Sustainability and Renewable Energy'
        'Wireless Communication'
    };

    canon.order = names;
    canon.map = struct();
    base = 'https://github.com/mathworks/MathWorks-Excellence-in-Innovation/blob/main/megatrends/';
    for i = 1:numel(names)
        n = names{i};
        fileName = urlEncode(n);
        canon.map.(matlab.lang.makeValidName(n)).name = n;
        canon.map.(matlab.lang.makeValidName(n)).url  = [base fileName '.md'];
    end
end

function anchor = megatrendAnchor(name)
    anchor = lower(name);
    anchor = regexprep(anchor, '\s+', '-');
    anchor = regexprep(anchor, '[^a-z0-9\-]', '');
end

function enc = urlEncode(str)
    enc = char(str);
    enc = strrep(enc, ' ', '%20');
    enc = strrep(enc, '&', '%26');
    enc = strrep(enc, '#', '%23');
end

function slug = urlEncodeProjectTitle(title)
    slug = urlEncode(title);
end

%====================================================================
function out = unifyStructFields(cellOfStructs)
% Convert a cell array of structs (with potentially different fields)
% into a struct array with a unified set of fields.
    allFields = {};
    for i = 1:numel(cellOfStructs)
        allFields = union(allFields, fieldnames(cellOfStructs{i}), 'stable');
    end
    % Build struct array with all fields, filling missing ones with []
    out = struct();
    for i = 1:numel(cellOfStructs)
        for f = 1:numel(allFields)
            fn = allFields{f};
            if isfield(cellOfStructs{i}, fn)
                out(i).(fn) = cellOfStructs{i}.(fn);
            else
                out(i).(fn) = [];
            end
        end
    end
    out = out(:);
end
