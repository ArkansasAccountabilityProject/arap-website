# ARAP Website Version 2.0

Official website source for the Arkansas Accountability Project.

## Deployment

This repository is designed for Cloudflare Workers Builds using `wrangler.jsonc`.
Static files are in `public/`; the Worker entry point is `src/index.js`.

## First deployment

1. Connect this repository to Cloudflare.
2. Deploy the `main` branch.
3. Test the generated `workers.dev` preview before moving the public domains.

## Counters

The site works without a database, but counters will show zero/pending until a D1 binding named `DB` is added.

Create a D1 database in Cloudflare, run `schema.sql`, and bind it to the Worker as `DB`.
No names, IP addresses, email addresses, user agents, or visitor histories are stored by the counter code.

## Updating the website

Edit files inside `public/`, commit changes to `main`, and Cloudflare will deploy automatically.



Last updated: July 20, 2026

