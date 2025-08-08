# Foreground.BrightCyan + Bold . This is a bug fix.
$PSStyle.FileInfo.Directory = "`e[96;1m"

# Firstly install by Install-Module -Name Terminal-Icons -Repository PSGallery
# https://github.com/devblackops/Terminal-Icons?WT.mc_id=-blog-scottha
Import-Module -Name Terminal-Icons

oh-my-posh init pwsh | Invoke-Expression

Set-Alias -Name vi -Value E:\App\nvim-win64\bin\nvim.exe