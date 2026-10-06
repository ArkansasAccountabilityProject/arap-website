# Sherwood DFR website update — review package

Prepared October 6, 2026 for D:\ARAP\arap-website. This package has not been applied or deployed. The Facebook post should be published only after the new URL is available.

The active public/ directory in wrangler.jsonc is used. Legacy src/public/ copies are not changed. Existing files are supplied as reviewable updated copies; update_manifest.json records SHA-256 hashes of the original and new files. The source repository was read only. No commit, push or deployment is included.

Review website_preview.html in the parent outputs folder and sherwood_dfr_analysis.pdf. The page uses existing ARAP styling. Six existing files change (home, Publications, Sherwood, repository index, sitemap, changelog); the new publication and supporting assets are added. No site-wide version bump is assumed.

To apply: run Apply-WebsiteUpdate.ps1 from PowerShell. It verifies original file hashes, requires absent new targets, backs up replaced files under the repository’s .arap-update-backups directory, then copies the listed files. It neither commits nor deploys. Review the resulting repository diff before publication. The script is a user-run application helper, not an action already performed by Codex.

Publication records: the already-redacted six-page FAA certificate is unchanged; the Talking Paper DOCX is unchanged; only reviewed pages of the site survey and installation summary are included as images. No bulk email production, contact list or infrastructure credentials are included.
