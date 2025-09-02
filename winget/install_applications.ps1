param([string]$install="minimal")

$minimal = @(
    "bitwarden"
    "discord"
	"ente-auth"
    "firefox"
    "git"
    "keepass"
    "mpc-be"
    "npp"
    "vscode"
)

$full = @(
    "amazon.workspacesclient"
    "balenaetcher"
    "bitwarden"
    "calibre"
    "discord"
    "ffmpeg"
    "firefox"
    "git"
    "hexchat"
    "keepass"
    "mpc-be"
    "naps2"
    "npp"
    "obsstudio"
    "plex"
    "python 3.13"
    "spotify"
    "steam"
    "vscode"
	"winscp"
)

$selfupdating = @(
    "amazon.workspacesclient"
    "bitwarden"
    "discord"
    "firefox"
    "plex"
    "spotify"
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


foreach ($app in $selfupdating) {
    if ($app) {
        # remove app from winget installed list without uninstalling
        Write-Host 'noop'
    }
}
