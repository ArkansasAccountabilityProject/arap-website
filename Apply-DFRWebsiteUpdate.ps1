param(
    [string]$Repository = 'D:\ARAP\arap-website',
    [string]$PackageRoot = $PSScriptRoot
)
$ErrorActionPreference = 'Stop'
if (-not $PackageRoot) { $PackageRoot = $PWD.Path }
$packageResolved = (Resolve-Path -LiteralPath $PackageRoot).Path.TrimEnd('\')
$repositoryResolved = (Resolve-Path -LiteralPath $Repository).Path.TrimEnd('\')
if (-not (Test-Path -LiteralPath (Join-Path $repositoryResolved 'wrangler.jsonc'))) { throw 'Expected ARAP website repository was not found.' }
$manifest = Get-Content -LiteralPath (Join-Path $packageResolved 'update_manifest.json') -Raw | ConvertFrom-Json
$changes = @()
foreach ($entry in $manifest) {
    if (-not $entry.path.StartsWith('public/')) { throw 'Manifest contains a path outside the public website payload.' }
    $target = [IO.Path]::GetFullPath((Join-Path $repositoryResolved $entry.path))
    $source = [IO.Path]::GetFullPath((Join-Path $packageResolved $entry.path))
    if (-not $target.StartsWith($repositoryResolved + '\', [StringComparison]::OrdinalIgnoreCase)) { throw 'Target escapes the website repository.' }
    if (-not $source.StartsWith($packageResolved + '\', [StringComparison]::OrdinalIgnoreCase)) { throw 'Source escapes the update package.' }
    if ((Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash.ToLowerInvariant() -ne $entry.new_sha256) { throw "Package file hash mismatch: $($entry.path)" }
    $currentHash = if (Test-Path -LiteralPath $target) { (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant() } else { $null }
    if ($currentHash -eq $entry.new_sha256) { continue }
    if ($null -ne $entry.base_sha256) {
        if ($currentHash -ne $entry.base_sha256) { throw "Website file changed since review: $($entry.path). Reconcile before applying." }
    } elseif ($null -ne $currentHash) { throw "A proposed new file already exists: $($entry.path). Reconcile before applying." }
    $changes += $entry
}
if ($changes.Count -eq 0) { Write-Output 'This exact update is already applied. No changes made.'; return }
$backupRoot = Join-Path $repositoryResolved ('.arap-update-backups\dfr-oversight-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
foreach ($entry in $changes) {
    if ($null -ne $entry.base_sha256) {
        $backup = Join-Path $backupRoot $entry.path
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $backup) | Out-Null
        Copy-Item -LiteralPath (Join-Path $repositoryResolved $entry.path) -Destination $backup
    }
}
foreach ($entry in $changes) {
    $target = Join-Path $repositoryResolved $entry.path
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
    Copy-Item -LiteralPath (Join-Path $packageResolved $entry.path) -Destination $target
    if ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant() -ne $entry.new_sha256) { throw "Verification failed after copying: $($entry.path)" }
}
Write-Output "Applied and verified $($changes.Count) files."
Write-Output "Replaced files backed up at: $backupRoot"
Write-Output 'No commit, push, deployment, or hosting configuration change performed.'
