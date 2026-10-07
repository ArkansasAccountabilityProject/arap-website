param([string]$Repository = 'D:\ARAP\arap-website')
$ErrorActionPreference = 'Stop'
$packageRoot = $PSScriptRoot
$repositoryRoot = (Resolve-Path -LiteralPath $Repository).Path.TrimEnd('\')
if (-not (Test-Path -LiteralPath (Join-Path $repositoryRoot 'wrangler.jsonc'))) { throw 'Expected ARAP repository was not found.' }
$manifest = Get-Content -LiteralPath (Join-Path $packageRoot 'update_manifest.json') -Raw | ConvertFrom-Json
foreach ($entry in $manifest) {
    $targetPath = [IO.Path]::GetFullPath((Join-Path $repositoryRoot $entry.path))
    if (-not $targetPath.StartsWith($repositoryRoot + '\', [StringComparison]::OrdinalIgnoreCase)) { throw 'Target escapes repository.' }
    $sourcePath = Join-Path $packageRoot $entry.path
    if ((Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant() -ne $entry.new_sha256) { throw "Package hash mismatch: $($entry.path)" }
    if ($null -ne $entry.base_sha256) {
        if (-not (Test-Path -LiteralPath $targetPath)) { throw "Original file missing: $($entry.path)" }
        if ((Get-FileHash -LiteralPath $targetPath -Algorithm SHA256).Hash.ToLowerInvariant() -ne $entry.base_sha256) { throw "Repository file changed since review: $($entry.path). Reconcile before applying." }
    } elseif (Test-Path -LiteralPath $targetPath) { throw "New target already exists: $($entry.path). Reconcile before applying." }
}
$backupRoot = Join-Path $repositoryRoot ('.arap-update-backups\jacksonville-alpr-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
foreach ($entry in $manifest) {
    $targetPath = Join-Path $repositoryRoot $entry.path
    if ($null -ne $entry.base_sha256) {
        $backupPath = Join-Path $backupRoot $entry.path
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $backupPath) | Out-Null
        Copy-Item -LiteralPath $targetPath -Destination $backupPath
    }
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $targetPath) | Out-Null
    Copy-Item -LiteralPath (Join-Path $packageRoot $entry.path) -Destination $targetPath
}
Write-Output "Applied $($manifest.Count) reviewed files. Replaced originals are backed up at $backupRoot. No commit, push or deployment performed."
