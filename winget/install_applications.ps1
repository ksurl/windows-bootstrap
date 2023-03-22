param([string]$install="minimal")

$minimal = @(
    "7zip"
    "authy"
    "bitwarden"
    "discord"
    "firefox"
    "git"
    "keepass"
    "mpc-be"
    "npp"
    "sumatrapdf"
    "vscode"
)

$full = @(
    "7zip"
    "authy"
    "battlenet"
    "bitwarden"
    "bulkrenameutility"
    "calibre"
    "discord"
    "ea app"
    "egs"
    "balenaetcher"
    #"ffmpeg"
    "filezilla"
    "firefox"
    "git"
    "github.cli"
    "hexchat"
    "keepass"
    "mpc-be"
    "naps2"
    "npp"
    "obsstudio"
    "plexmediaplayer"
    "postbox"
    "pwsh"
    "python 3.10"
    "spotify"
    "steam"
    "sumatrapdf"
    "ubisoft.connect"
    "vscode"
    "vmware.horizonclient"
    "vmware.workstationpro"
    "vncserver"
)

$selfupdating = @(
    "authy"
    "battlenet"
    "bitwarden"
    "discord"
    "egs"
    "filezilla"
    "firefox"
    "plexmediaplayer"
    "postbox"
    "spotify"
    "steam"
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
