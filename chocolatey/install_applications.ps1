param([string]$install="minimal")

$minimal = @(
    "bitwarden"
    "discord.install"
	"ente-auth"
    "firefox"
    "git.install --params `"/NoShellIntegration`""
    "keepass.install"
    "mpc-be"
    "notepadplusplus.install"
    "veeam-agent"
    "vscode"
)

$full = @(
    "amazon-workspaces"
    "balenaetcher"
    "bitwarden"
    "calibre"
    "discord.install"
	"ente-auth"
    "ffmpeg"
    "firefox"
    "git.install --params `"/NoShellIntegration`""
    "keepass.install"
    "mpc-be"
	"naps2.install"
    "notepadplusplus.install"
    "obs-studio"
    "plex"
    "python3.13 --params `"/InstallDir:$env:localappdata\Programs\Python\Python313`""
    "steam"
    "veeam-agent"
    "vscode"
	"winscp"
)

$selfupdating = @(
    "amazon-workspaces"
    "bitwarden"
    "discord.install"
    "firefox"
    "plex"
    "steam"
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
