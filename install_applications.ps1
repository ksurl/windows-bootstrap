param([string]$install="minimal")

$minimal = @(
    "7zip"
    "authy"
    "chrome"
    "discord"
    "ditto"
    "firefox"
    "git"
    "google.backupandsync"
    "greenshot"
    "keepass"
    #"mpc-be"
    "npp"
    #"openssh"
    "sumatrapdf"
    #"teracopy"
    #"veeam-agent"
    "vscode"
)

$full = @(
    "7zip"
    "authy"
    #"audacity"
    #"audacity-lame"
    "battlenet"
    "bulkrenameutility"
    "calibre"
    "chrome"
    "discord"
    "ditto"
    "docker"
    "egs"
    "etcher"
    #"ffmpeg"
    "filezilla"
    "firefox"
    "git"
    "greenshot"
    "hexchat"
    #"imgburn"
    "keepass"
    #"mpc-be"
    "npp"
    "obsstudio"
    #"openssh"
    "playnite"
    "plexmediaplayer"
    "postbox"
    #"pwsh"
    "python"
    "spotify"
    "steam"
    "sumatrapdf"
    "telegram"
    #"teracopy"
    "transmission"
    #"ubuntu"
    "uplay"
    #"veeam-agent"
    #"vnc-viewer"
    #"vnc-server"
    "vscode"
    "vmware-horizonclient"
    "vmware-workstationpro"
    "terminal"
    "wireguard"
)

$selfupdating = @(
    "authy"
    "battlenet"
    "discord"
    "chrome"
    "egs"
    "filezilla"
    "firefox"
    "playnite"
    "plexmediaplayer"
    "postbox"
    "spotify"
    "steam"
    "telegram"
    "uplay"
    "vscode"
    "terminal"
)

switch ($install) {
    "minimal" { $apps = $minimal }
    "full" { $apps = $full }
    Default { $apps = $minimal }
}

foreach ($app in $apps) {
    winget.exe install $app
}


foreach ($app in $selfupdating) {
    if ($app) {
        # remove app from winget installed list without uninstalling
        Write-Host 'noop'
    }
}
