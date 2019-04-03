param([string]$install="minimal")

$minimal = @(
    "7zip.install"
    "authy-desktop"
    "bitwarden"
    "discord.install"
    "ditto"
    "firefox"
    "git.install --params `"/NoShellIntegration`""
    "google-backup-and-sync"
    "googlechrome"
    "greenshot"
    "keepass.install"
    "mpc-be"
    "notepadplusplus.install"
    "openssh --params `"/SSHAgentFeature`""
    "sumatrapdf.install"
    "teracopy"
    "veeam-agent"
    "vscode"
)

$full = @(
    "7zip.install"
    "authy-desktop"
    "audacity"
    "audacity-lame"
    "bitwarden"
    "bulkrenameutility.install"
    "caddy"
    "calibre"
    #"chocolateygui"
    "deluge"
    "discord.install"
    "ditto"
    #"docker-toolbox"
    #"docker-kitematic"
    #"dropbox"
    #"eac"
    "etcher"
    "ffmpeg"
    "filezilla"
    "firefox"
    #"freefilesync"
    "git.install --params `"/NoShellIntegration`""
    "google-backup-and-sync"
    "googlechrome"
    "greenshot"
    "imgburn"
    "keepass.install"
    "mailspring"
    "mpc-be"
    "notepadplusplus.install"
    "obs-studio"
    #"open-shell"
    "openssh --params `"/SSHAgentFeature`""
    #"packer"
    #"playnite"
    "plexmediaserver"
    "python3 --params `"/InstallDir:$env:localappdata\Programs\Python\Python37`""
    #"spotify"
    "steam"
    "sumatrapdf.install"
    #"sysinternals"
    "taiga"
    "teracopy"
    #"ums"
    #"uplay"
    "veeam-agent"
    "vscode"
    "vmware-horizon-client"
    "vmwareworkstation"
    "vnc-connect"
    "vnc-viewer"
    "wget"
    #"winauth"
    #"wsl"
    #"wsltty"
    #"yumi"
)

$selfupdating = @(
    "bitwarden"
    "discord.install"
    "filezilla"
    "Firefox"
    "GoogleChrome"
    "mailspring"
    "plexmediaserver"
    "steam"
    "uplay"
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
