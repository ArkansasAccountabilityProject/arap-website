# ARAP Website Version 3.0

Official website source for the Arkansas Accountability Project.

## Architecture
- Static website files: `public/`
- Worker entry point: `src/index.js`
- Cloudflare deployment: `wrangler.jsonc`
- Public downloads: Cloudflare R2 at `download.arkansasaccountabilityproject.org`

## Version 3.0
Version 3.0 establishes a statewide evidence-repository framework with standardized jurisdiction pages and category placeholders. Exact R2 file links should be added only after public-release documents are reviewed and renamed under the approved ARAP repository standard.

## Deployment
Commit the contents of this package to the existing `arap-website` Git repository. Cloudflare Workers Builds should deploy the `main` branch automatically.

## Important
Do not delete the local `.git` folder. This package intentionally does not contain `.git` or large public-record downloads.
