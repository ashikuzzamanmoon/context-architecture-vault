<#
.SYNOPSIS
    Initializes a new project with the Context Architecture Vault structure.
.EXAMPLE
    .\scaffold.ps1 -TargetDir "E:\projects\my-new-app"
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$TargetDir,
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$TemplateRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
    Write-Host "Created target directory: $TargetDir" -ForegroundColor Cyan
}

$TargetAgents = Join-Path $TargetDir "AGENTS.md"
$TargetVault  = Join-Path $TargetDir "vault"

if ((Test-Path $TargetAgents) -and (-not $Force)) {
    throw "AGENTS.md already exists in '$TargetDir'. Use -Force to overwrite."
}
if ((Test-Path $TargetVault) -and (-not $Force)) {
    throw "vault/ directory already exists in '$TargetDir'. Use -Force to overwrite."
}

Copy-Item -Path (Join-Path $TemplateRoot "AGENTS.md") -Destination $TargetAgents -Force
Copy-Item -Path (Join-Path $TemplateRoot "vault") -Destination $TargetVault -Recurse -Force

Write-Host ""
Write-Host "Context Architecture Vault initialized in: $TargetDir" -ForegroundColor Green
Write-Host "Next step: Open '$TargetDir' in Antigravity and draft vault/01 through 06 before coding." -ForegroundColor Yellow

