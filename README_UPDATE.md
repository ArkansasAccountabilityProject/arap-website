# Little Rock website update

Adds the approved Little Rock evidence-library pages under `/jurisdictions/little-rock/evidence-library/`, links from the existing homepage and Little Rock repository, and five sitemap entries. It preserves existing pages and publications outside these additions. Built against the current local website folder on October 9, 2026.

Extract this ZIP into its own folder. Run `Apply-WebsiteUpdate.ps1` from that folder to apply it to `D:\ARAP\arap-website`. The script verifies every payload hash and checks each replaced file against the current baseline before making changes. It stops if a baseline changed or a proposed new file already exists. Replaced files are backed up under `.arap-update-backups` in the repository.

The script applies local files only. It does not commit, push or deploy. Use the website's usual deployment workflow after reviewing the applied changes. Uploading this ZIP to an unrelated storage location will not change the website.

Only `public/` is the deployment payload, matching the current `wrangler.jsonc`. Do not upload package instructions or the apply script as website content. The update contains no original FOIA files, private archive, Russ screenshots, request security keys or home addresses. Record downloads remain pending redaction review and approval; it publishes the catalogue and analysis, not the private records.

Internal links, manifest hashes, baseline hashes, sitemap XML and sensitive-string checks passed. Browser layout and interactive-filter checks remain pending because this session's local preview socket was blocked.
