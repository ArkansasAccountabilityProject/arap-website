# Sherwood four-request review - October 23, 2026

New route: /jurisdictions/sherwood/foia-four-request-review/

The public/ directory is a targeted overlay for the existing ARAP static site, not a replacement for the whole website. It adds the review, privacy-reviewed documents, exact CITY-189 agency-redacted exports, public derivatives, native-message excerpt transcripts, ZIP/member inventories, 39-category comparison and 31-entry ledger. It links the new review from Sherwood and the evidence repository, adds a dated supersession note to the older register, and adds the sitemap route.

Do not publish inventory.json, PRIVATE-source-map.json, texts/, qa/, source scripts or the private original ZIPs. Only public/ belongs in the website. Original images/plate, requester personal fields and unreviewed operational URLs are excluded. Public derivatives are labelled and original/public hashes distinguished. Raw original ZIPs are not public downloads.

The four cases are a purposive selection, not a compliance rate. CITY-150's later ZIP adds 34 filenames and changes six; do not call all 58 new files. CITY-164's routing and infrastructure evidence comes from CITY-150. CITY-112's 85 files are 84 JPEGs plus one 80-row CSV. CITY-189's page log is not a flight inventory. Preserve the full caveats.

The apply step verifies baseline hashes and refuses stale target pages. It creates recoverable backups of changed existing files, then adds only the manifest-listed files. No Git commit, push, Cloudflare deployment or social post is performed by the apply step.
