# ARAP Benton + Sherwood DFR website update

Prepared October 13, 2026 against `D:\ARAP\arap-website`. This package adds the combined preventive-oversight publication, two city investigation pages, both submitted FOIA request transcripts, category-by-category request/production comparisons, source-linked graphics, and selected downloads.

**Application status:** This session's filesystem permissions blocked creation of the required backup directory in `D:\ARAP\arap-website`. The six existing website files were verified unchanged and none of the proposed new target files were present. The local repository and live website have not been updated by this session. The same helper was successfully tested in a workspace copy: all 33 copied-file hashes and six original backup hashes matched; repeating the apply made no changes.

## Review first

Open `offline-review/Open-DFR-Review.html` in a browser. Its local navigation leads to both city pages and the request transcripts. Older website routes not included in the offline copy point to the existing ARAP domain. The offline copy is a review aid, not the deployment payload.

Live-server browser QA was blocked by this session's socket restrictions; the in-app browser timed out. Browser security policy also blocks `file:` previews in this tool. Static source/link/privacy checks and functional category-filter checks passed. The offline copy can be reviewed manually in your local browser; a desktop/mobile visual review remains appropriate before deployment.

## Apply locally

Extract the ZIP into its own folder. Double-click `Apply-Local-Update.cmd`, or run `Apply-DFRWebsiteUpdate.ps1` in PowerShell. The default destination is `D:\ARAP\arap-website`.

The apply script verifies every package hash and the baseline hash for each replaced website file before changing anything. It stops if the local website changed or a proposed new file exists with different content. It backs up replaced files under `.arap-update-backups`, copies only the 33 listed `public/` files, and verifies their hashes afterward. Reapplying an identical completed update makes no changes.

This is a local file update only. The helper does not commit, push, deploy, change access, register a new Sites project, modify the Worker, or replace Cloudflare hosting configuration. After reviewing the applied pages, use the existing ARAP deployment workflow.

## New routes

- `/publications/dfr-proactive-oversight/`
- `/jurisdictions/benton/dfr/`
- `/jurisdictions/sherwood/dfr/`
- `/publications/dfr-proactive-oversight/requests/benton/`
- `/publications/dfr-proactive-oversight/requests/sherwood/`

Homepage, publications index, evidence-repository index, Benton jurisdiction page, Sherwood jurisdiction page, and sitemap receive focused entry-point updates. Existing prior content is preserved.

## Evidence and publication boundaries

- Benton comparison: nine scope/production-format areas from the October 1 request, matched against the 54-file folder. Additional flight/access requests are clearly identified as separate proposed follow-up; the draft is not represented as submitted.
- Sherwood comparison: eleven scope/production-format areas from CITY-2026-189, submitted October 7. The portal print shows Completed and four uploads dated October 9. Upload/status dates are not equated with first receipt or complete fulfillment.
- The public request transcripts preserve substantive scope while removing requester home-address/birth-date/contact fields and account/portal navigation URLs. Paragraph breaks and extraction ligatures are normalized; the requests are not rewritten or expanded.
- Four supplied Sherwood log files retain the agency's original redactions; webpage labels distinguish page visits from flights and configured link windows from actual viewing.
- Benton raw originals and the complete raw folder are not added to the public payload. A filename/page-count/hash inventory and selected actual-document excerpt cards are provided instead.
- Graphical captions are ARAP analysis. They are not agency findings or evidence of misconduct. “Not identified” means not identified in the reviewed record set.
- Only `public/` is the live website payload. Do not deploy the offline-review directory, apply helpers, or private source folders.

## Validation

See `validation.json`: 128 local links checked; both HTML request bodies match the public transcript text; privacy-string exclusions, image alt text, duplicate IDs, sitemap parsing, and manifest hashes checked. The category filter/live count was verified for all options in both city matrices. Browser layout remains unverified in this session.
