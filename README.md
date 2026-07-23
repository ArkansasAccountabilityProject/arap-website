# ARAP Website Version 3.1

Official website source for the Arkansas Accountability Project.

## Architecture
- Static website files: `public/`
- Worker entry point: `src/index.js`
- Cloudflare deployment: `wrangler.jsonc`
- Public downloads: Cloudflare R2 at `download.arkansasaccountabilityproject.org`

## Version 3.1
Version 3.1 adds the public-reference landing page and downloadable legislative review packet concerning Ark. Code Ann. §§ 12-12-1801 through 12-12-1808, a homepage feature, a publications entry, social metadata, sitemap, and public-redaction notice.

## Version 3.0
Version 3.0 establishes a statewide evidence-repository framework with standardized jurisdiction pages and category placeholders. Exact R2 file links should be added only after public-release documents are reviewed and renamed under the approved ARAP repository standard.

## Deployment
Commit the contents of this package to the existing `arap-website` Git repository. Cloudflare Workers Builds should deploy the `main` branch automatically.

## Important
Do not delete the local `.git` folder. This package intentionally does not contain `.git`. Version 3.1 includes one approved public-reference PDF under `public/downloads/` for direct website delivery.
