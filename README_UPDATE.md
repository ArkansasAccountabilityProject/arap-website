# Jacksonville website update

This package updates the existing ARAP website. It has not been applied, committed, pushed or deployed.

Extract the ZIP to its own folder. Run Apply-WebsiteUpdate.ps1 from the extracted folder to apply it to D:\ARAP\arap-website. The script verifies every original and replacement hash before changing files, and backs up replaced files. If a repository file changed, it stops for reconciliation.

Only the top-level public/ deployment directory is updated. The older nested src/public/ copy is left alone because wrangler.jsonc deploys ./public.

The package includes a new publication, all 86 redacted cluster summaries, source hashes, homepage/Jacksonville/Publications links, sitemap and changelog. It does not bundle raw records or the private label mapping. The existing repository may contain other sensitive records; this package does not audit or remove those earlier files.

Review the page and outreach statement before normal deployment. The Little Rock comparison is explicitly identified as reported and not independently verified. Existing audience and deployment settings are preserved.
