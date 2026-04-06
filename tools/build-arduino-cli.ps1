Param(
    [string]$ProjectRoot = (Resolve-Path "$PSScriptRoot\..\").Path,
    [string]$Fqbn = "CH55xDuino:mcs51:ch552"
)

$ErrorActionPreference = "Stop"
$buildDir = Join-Path $ProjectRoot ".arduino-build/ch552"

if (Test-Path $buildDir) {
    Remove-Item -Recurse -Force $buildDir
}
New-Item -ItemType Directory -Force -Path $buildDir | Out-Null

Write-Host "[INFO] ProjectRoot: $ProjectRoot"
Write-Host "[INFO] FQBN: $Fqbn"
Write-Host "[INFO] Output: $buildDir"

arduino-cli compile `
  --clean `
  --fqbn $Fqbn `
  --output-dir $buildDir `
    --library (Join-Path $ProjectRoot "lib/DS18B20") `
  $ProjectRoot

if ($LASTEXITCODE -ne 0) {
    throw "arduino-cli compile failed with exit code $LASTEXITCODE"
}

Write-Host "[DONE] Build artifacts are in: $buildDir"
