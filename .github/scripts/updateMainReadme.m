function updateMainReadme(submissions, readmePath)
% Update README.md with "View Submissions" badges under project tiles.
% Uses a robust approach: splits into <tbody> blocks, finds each project
% by title, removes stale badges, and inserts the new one after the last
% submitButton.png image.

    % Read as raw bytes to preserve multi-byte UTF-8 characters (emojis etc.)
    fid_in = fopen(readmePath, 'r');
    rawBytes = fread(fid_in, '*uint8')';
    fclose(fid_in);
    txt = native2unicode(rawBytes, 'UTF-8');

    % Compute submission counts per project
    projTitles = {submissions.project_title};
    [uniqueTitles, ~, gidx] = unique(projTitles, 'stable');
    counts = accumarray(gidx(:), 1);

    % Split file into <tbody> blocks for reliable per-tile editing
    % We process each project independently within its own block
    for i = 1:numel(uniqueTitles)
        title = uniqueTitles{i};
        count = counts(i);
        badgeHtml = buildSubmissionBadgeHtml(title, count);

        % Find the <tbody> block that contains this project title.
        % Strategy: locate the title text inside an <h2><a> tag, then
        % expand to find the enclosing <tbody>...</tbody> or <tbody>...(next <tbody>|end of table)
        tileIdx = findTileForProject(txt, title);
        if isempty(tileIdx)
            fprintf('  Tile not found for project: %s\n', title);
            continue;
        end

        tileStart = tileIdx(1);
        tileEnd = tileIdx(2);
        tile = txt(tileStart:tileEnd);

        % Remove any existing submission badge lines from this tile
        tile = regexprep(tile, ...
            '\s*<p align="left"[^>]*>\s*<a href="projects/[^"]*submissions\.md"[^>]*>.*?</a>\s*</p>[^\n]*', ...
            '', 'dotall');

        % Find the last submitButton.png in the cleaned tile
        [~, btnEnds] = regexp(tile, '<img[^>]*submitButton\.png[^>]*>', 'start', 'end');

        if isempty(btnEnds)
            fprintf('  No submit button found for project: %s\n', title);
            continue;
        end

        insertPos = btnEnds(end);

        % Insert badge after the last submit button
        tile = [tile(1:insertPos) newline '    ' badgeHtml tile(insertPos+1:end)];

        % Replace the tile in the full text
        txt = [txt(1:tileStart-1) tile txt(tileEnd+1:end)];
    end

    % Write result preserving UTF-8 (convert back to bytes)
    outBytes = unicode2native(txt, 'UTF-8');
    fid = fopen(readmePath, 'w');
    if fid < 0
        error('Cannot open %s for writing.', readmePath);
    end
    fwrite(fid, outBytes, 'uint8');
    fclose(fid);
    fprintf('  Updated: %s\n', readmePath);
end


function idx = findTileForProject(txt, projectTitle)
% Find the start and end positions of the <tbody>...</tbody> block
% containing the given project title.
% Returns [startPos, endPos] or [] if not found.

    idx = [];

    % Find all <tbody> start positions
    tbodyStarts = regexp(txt, '<tbody>', 'start');
    % Find all </tbody> end positions
    tbodyEnds = regexp(txt, '</tbody>', 'end');

    if isempty(tbodyStarts) || isempty(tbodyEnds)
        return;
    end

    % For each <tbody> block, check if it contains the project title
    % in an <h2><a ...>TITLE</a></h2> pattern
    for k = 1:numel(tbodyStarts)
        bStart = tbodyStarts(k);

        % Find the matching </tbody>
        possibleEnds = tbodyEnds(tbodyEnds > bStart);
        if isempty(possibleEnds)
            continue;
        end
        bEnd = possibleEnds(1);

        block = txt(bStart:bEnd);

        % Check if this block contains the project title in an h2 link
        % Use a simple contains check first (fast), then verify with structure
        if ~contains(block, projectTitle)
            continue;
        end

        % Verify it's actually in an <h2><a...>TITLE</a></h2> tag
        % Extract the title from the h2 link in this block
        titleTokens = regexp(block, '<h2><a[^>]*>([^<]+)</a></h2>', 'tokens');
        if isempty(titleTokens)
            continue;
        end

        % Check each extracted title
        for t = 1:numel(titleTokens)
            blockTitle = strtrim(titleTokens{t}{1});
            if strcmp(blockTitle, projectTitle)
                idx = [bStart, bEnd];
                return;
            end
        end
    end
end
