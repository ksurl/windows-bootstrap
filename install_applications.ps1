param([string]$install="minimal")

$minimal = @(
    "7zip"
    "chrome"
    "Discord"
    "Firefox"
    "Git"
    "Greenshot"
    "KeePass"
    "NPP"
    #"openssh"
    "vscode"
)

$full = @(
    "7zip"
    "chrome"
    "Discord"
    "Etcher"
    "Filezilla"
    "Firefox"
    "Git"
    "Greenshot"
    "KeePass"
    "NPP"
    "obsstudio"
    #"openssh"
    #"pwsh"
    "python"
    "spotify"
    "steam"
    #"ubuntu"
    "vscode"
    #"Windows Terminal"
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
