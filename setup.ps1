# TODO: Prompt for each step so they can be skipped etc.
# TODO: Test if steps were already completed.
#
#

# install the posh-git module
Install-Module posh-git -Scope CurrentUser -Force
Import-Module posh-git

# install cd-extras
Install-Module -Name cd-extras -Scope CurrentUser -Force
Import-Module cd-extras

# Set the execution policy to Bypass so we can run scripts
Set-ExecutionPolicy Bypass -Scope Process -Force

# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
Invoke-RestMethod get.scoop.sh | Invoke-Expression

# To save your currently installed scoops use:
# scoop export > scoopfile.json
scoop import .\scoopfile.json

# install Your favorite terminal
# winget install wez.wezterm
winget install Microsoft.WindowsTerminal

# install some Gnu utilities
winget install GnuWin32.Grep

