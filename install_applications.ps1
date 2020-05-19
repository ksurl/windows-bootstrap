param([string]$install="minimal")

$minimal = @(
    "7zip"
    "discord"
    "firefox"
    "git"
    "googlechrome"
    "greenshot"
    "keepass"
    "notepadplusplus"
    "openssh"
    "vscode"
)

$full = @(
    "7zip"
    "discord"
    "etcher"
    "filezilla"
    "firefox"
    "git"
    "googlechrome"
    "greenshot"
    "keepass"
    "notepadplusplus"
    "obs-studio"
    "openssh"
    "python3"
    "steam"
    "vscode"
)

$selfupdating = @(
    "discord"
    "filezilla"
    "Firefox"
    "GoogleChrome"
    "steam"
    "vscode"
)

switch ($install) {
    "minimal" { $apps = $minimal }
    "full" { $apps = $full }
    Default { $apps = $minimal }
}

foreach ($app in $apps) {
    winget.exe install $app
}

<#
foreach ($app in $selfupdating) {
    if (Test-Path -Path "C:\ProgramData\chocolatey\lib\$app") {
        Remove-Item -Path "C:\ProgramData\chocolatey\lib\$app" -Recurse -Force
    }
}
#>
