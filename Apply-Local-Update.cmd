@echo off
set "ARAP_DFR_PACKAGE=%~dp0"
powershell.exe -NoProfile -Command "$taskScript = Join-Path $env:ARAP_DFR_PACKAGE 'Apply-DFRWebsiteUpdate.ps1'; & ([scriptblock]::Create((Get-Content -LiteralPath $taskScript -Raw))) -PackageRoot $env:ARAP_DFR_PACKAGE"
echo.
pause
