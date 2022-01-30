# TODO: Prompt for each step so they can be skipped etc.
# TODO: Test if steps were already completed.
#
#

# remap capslock key to escape
caps-remap.reg

# install Git with winget
winget install Git.Git

# install Wez terminal
winget install wez.wezterm

# install GitHub CLI with winget
winget install --id GitHub.cli

# Login to GitHub
gh auth login

# Initialize basic repos
mkdir $HOME\Projects
cd $HOME\Projects

# install the posh-git module
Install-Module posh-git -Scope CurrentUser -Force

# install cd-extras
Install-Module -Name cd-extras -Scope CurrentUser -Force

# Set the execution policy to Bypass so we can run scripts
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install programs using chocolatey
choco install neovim -y
choco install vifm

# Install Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

