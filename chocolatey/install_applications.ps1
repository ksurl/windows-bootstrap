param([string]$install="minimal")

$minimal = @(
    "7zip.install"
    "authy-desktop"
    "bitwarden"
    "discord.install"
    "firefox"
    "git.install --params `"/NoShellIntegration`""
    "keepass.install"
    "mpc-be"
    "notepadplusplus.install"
    "sumatrapdf.install"
    "veeam-agent"
    "vscode"
)

$full = @(
    "7zip.install"
    "authy-desktop"
    "balenaetcher"
    "bitwarden"
    "bulkrenameutility.install"
    "calibre"
    "discord.install"
    #"ffmpeg"
    "filezilla"
    "firefox"
    "git.install --params `"/NoShellIntegration`""
    "keepass.install"
    "mpc-be"
    "notepadplusplus.install"
    "obs-studio"
    "plex"
    "python3.10 --params `"/InstallDir:$env:localappdata\Programs\Python\Python310`""
    "spotify"
    "steam"
    "sumatrapdf.install"
    "ubisoft.connect"
    "veeam-agent"
    "vscode"
    "vmware-horizon-client"
    "vmwareworkstation"
    "vnc-connect"
)

$selfupdating = @(
    "authy-desktop"
    "bitwarden"
    "discord.install"
    "filezilla"
    "firefox"
    "plex"
    "steam"
    "ubisoft.connect"
    "vmwareworkstation"
    "vscode"
)

switch ($install) {
    "minimal" { $apps = $minimal }
    "full" { $apps = $full }
    Default { $apps = $minimal }
}

foreach ($app in $apps) {
    choco.exe install -y $app
}

foreach ($app in $selfupdating) {
    if (Test-Path -Path "C:\ProgramData\chocolatey\lib\$app") {
        Remove-Item -Path "C:\ProgramData\chocolatey\lib\$app" -Recurse -Force
    }
}
