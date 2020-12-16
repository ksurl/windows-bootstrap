param([string]$install="minimal")

$minimal = @(
    "7zip"
    "authy"
    "chrome"
    "discord"
    "ditto"
    "dockerdesktop"
    "firefox"
    "git"
    "github.cli"
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
    "dockerdesktop"
    "egs"
    "etcher"
    #"ffmpeg"
    "filezilla"
    "firefox"
    "git"
    "github.cli"
    "greenshot"
    "hexchat"
    #"imgburn"
    "keepass"
    "mkvtoolnix"
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
    "transgui"
    #"ubuntu"
    "ubisoft.connect"
    #"veeam-agent"
    #"vnc-viewer"
    #"vnc-server"
    "vscode"
    "vmware.horizonclient"
    "vmware.workstationpro"
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
    "ubisoft.connect"
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
