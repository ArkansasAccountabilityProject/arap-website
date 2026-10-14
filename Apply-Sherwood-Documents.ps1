param([string]$Destination = 'D:\ARAP\arap-website')
$ErrorActionPreference = 'Stop'
$packageRoot = $PSScriptRoot
$manifest = Get-Content -LiteralPath (Join-Path $packageRoot 'manifest.json') -Raw | ConvertFrom-Json
$targetRoot = [IO.Path]::GetFullPath($Destination).TrimEnd('\')
foreach ($entry in $manifest.files.PSObject.Properties) {
 $sourcePath = Join-Path $packageRoot $entry.Name
 if ((Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash -ne $entry.Value) { throw "Package checksum mismatch: $($entry.Name)" }
 $targetPath = [IO.Path]::GetFullPath((Join-Path $targetRoot $entry.Name))
 if (-not $targetPath.StartsWith($targetRoot + '\',[StringComparison]::OrdinalIgnoreCase)) { throw 'Invalid destination path' }
 if (Test-Path -LiteralPath $targetPath) {
  $existingHash = (Get-FileHash -LiteralPath $targetPath -Algorithm SHA256).Hash
  $baselineEntry = $manifest.baseline.PSObject.Properties[$entry.Name]
  if ($existingHash -ne $entry.Value -and (-not $baselineEntry -or $existingHash -ne $baselineEntry.Value)) { throw "Website changed; update stopped: $($entry.Name)" }
 }
}
$backupRoot = Join-Path $targetRoot ('.arap-update-backups\sherwood-drone-documents-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
foreach ($entry in $manifest.files.PSObject.Properties) {
 $targetPath = Join-Path $targetRoot $entry.Name
 if ((Test-Path -LiteralPath $targetPath) -and (Get-FileHash -LiteralPath $targetPath -Algorithm SHA256).Hash -eq $entry.Value) { continue }
 if (Test-Path -LiteralPath $targetPath) {
  $backupPath = Join-Path $backupRoot $entry.Name
  New-Item -ItemType Directory -Path (Split-Path $backupPath) -Force | Out-Null
  Copy-Item -LiteralPath $targetPath -Destination $backupPath
 }
 New-Item -ItemType Directory -Path (Split-Path $targetPath) -Force | Out-Null
 Copy-Item -LiteralPath (Join-Path $packageRoot $entry.Name) -Destination $targetPath
 if ((Get-FileHash -LiteralPath $targetPath -Algorithm SHA256).Hash -ne $entry.Value) { throw "Verification failed: $($entry.Name)" }
}
Write-Host 'Sherwood documents added and verified locally. The live website has not been deployed.'
