# ARAP Website Version 3.6

Official website source for the Arkansas Accountability Project.

## Architecture

- Static website files: `public/`
- Worker entry point: `src/index.js`
- Cloudflare deployment: `wrangler.jsonc`
- Public downloads bundled under `public/downloads/`

## Version 3.6

Version 3.6 adds a redacted Sherwood ALPR travel-pattern explorer based on an 80-row June 2026 export. The public page provides an interactive date and pattern map, reproducible methodology, explicit inference limits, a redacted analysis workbook, and a downloadable standalone map. The plate is removed and the underlying source CSV is not republished.

The release also updates the home page, Publications index, Sherwood jurisdiction page, sitemap, release notes, and deployment checklist.

## Version 3.5

Version 3.5 publishes ALPR audit evaluations for Sherwood, Cabot, Jacksonville, Little Rock, and Pulaski County; regional audit and policy comparisons; an evidence manifest; a machine-readable repository index; and SHA-256 publication checksums. Jurisdiction pages and repository status labels now link directly to the public evaluations.

Raw search and network audit records containing names, email addresses, plates, query details, or operational identifiers are not republished in this release. The evidence manifest records their filenames, hashes, and public-handling status.

## Version 3.4

Version 3.4 expands the Sherwood repository with the July 11–August 9, 2026 public search audit, a reproducible analysis workbook, FOIA-custody correspondence, a corrected supplemental legislative review, contract records, installation and retention correspondence, contemporaneous web screenshots, and a downloadable evidence register with SHA-256 hashes and limitations.

Evidence IDs were reconciled so H-064 remains the March 11 Sherwood public statement and H-065 remains the public search audit. CITY-2026-130 records now use H-066/H-067, while the supplemental review remains H-078. H-067 is indexed but not distributed because the produced copy still requires additional requester/contact-information redaction.

## Earlier releases

- Version 3.3 published the complete ARAP-PUB-2026-003 Sherwood Council Briefing Book Version 2.1 and archived Version 2.0.
- Version 3.2 added the Sherwood Council Briefing Book and Resident Information Packet.
- Version 3.1 added the public-reference legislative review landing page and packet.
- Version 3.0 established the standardized statewide evidence-repository framework.

## Deployment

Commit the contents of this package to the existing `arap-website` Git repository. Cloudflare Workers Builds should deploy the `main` branch automatically.

Preserve the repository's existing `.git` directory. This release package intentionally does not contain `.git`.
