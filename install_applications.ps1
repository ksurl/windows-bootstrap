param([string]$install="minimal")

$minimal = @(
    "7zip.install"
    "authy-desktop"
    "bitwarden"
    "discord.install"
    "ditto"
    "firefox"
    "git.install"
    "google-backup-and-sync"
    "googlechrome"
    "greenshot"
    "keepass.install"
    "mpc-be"
    "notepadplusplus.install"
    "openssh"
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
    "chocolateygui"
    "deluge"
    "discord.install"
    "ditto"
    "docker-toolbox"
    #"dropbox"
    #"eac"
    "etcher"
    "ffmpeg"
    "filezilla"
    "firefox"
    #"freefilesync"
    "git.install"
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
    "openssh"
    "packer"
    #"playnite"
    "plexmediaserver"
    "python3"
    #"spotify"
    "steam"
    "sumatrapdf.install"
    "sysinternals"
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
    #"winauth"
    #"wsl"
    #"yumi"
)

switch ($install) {
    "minimal" { $apps = $minimal }
    "full" { $apps = $full }
    Default { $apps = $minimal }
}

foreach ($app in $apps) {
    choco.exe install -y $app
}
