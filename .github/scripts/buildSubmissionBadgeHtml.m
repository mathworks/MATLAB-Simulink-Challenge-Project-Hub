function badgeHtml = buildSubmissionBadgeHtml(projectTitle, count)
% Build the HTML for the "View Submissions" badge under project tiles.

    slug = char(projectTitle);
    slug = strrep(slug, ' ', '%20');
    slug = strrep(slug, '&', '%26');
    slug = strrep(slug, '#', '%23');

    color = '%23137DAA';
    labelColor = '%23BD5013';

    if count <= 0
        countStr = '0';
    else
        countStr = sprintf('%d', count);
    end

    badgeUrl = sprintf([ ...
        'https://img.shields.io/badge/View%%20Submissions-%s-%s?style=flat&labelColor=%s' ...
        ], countStr, color, labelColor);

    href = sprintf('projects/%s/submissions.md', slug);

    badgeHtml = sprintf([ ...
        '<p align="left" style="margin-top:6px;">' ...
        '<a href="%s"><img src="%s" alt="Submissions: %s"></a>' ...
        '</p>' ...
        ], href, badgeUrl, countStr);
end
