Sherwood drone documents update

Double-click Apply-Local-Update.cmd to add all three documents and a download panel to D:\ARAP\arap-website.
The installer verifies package hashes, stops if the Sherwood page has changed, backs up the existing page, and verifies copied files.
The original source documents are copied without modification. Only the active public/ website is updated; the older src/public copy is not the deployment directory.
This does not deploy the live website. Use your existing deployment workflow afterward.

Validation: all three download targets exist; copied documents match their originals; applying twice to a workspace copy succeeded without duplicate content.
