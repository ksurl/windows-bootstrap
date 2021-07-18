# Bootstrap

## Instructions

1. Download the repo or clone it.
2. Check script file line endings (CRLF preferred on Windows).

### Chocolatey

1. Run the `install_chocolatey.bat` script to ensure Chocolatey is installed.
2. Edit the list of applications in `install_applications.ps1` to your preferences.
3. Run `install_applications.ps1`. If it fails, check your script execution policy.

### winget

1. Run the `install_winget.bat` script to ensure winget is installed (This will be deprecated in future Windows versions where it is installed by default).
2. Edit the list of applications in `install_applications.ps1` to your preferences.
3. Run `install_applications.ps1`. If it fails, check your script execution policy.
