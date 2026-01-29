# Foreground.BrightCyan + Bold . This is a bug fix.
# $PSStyle.FileInfo.Directory = "`e[96;1m"

# show command history as ListView, default is InlineView
if (Get-Module -Name PSReadLine -ListAvailable) {
    try {
        Set-PSReadLineOption -PredictionViewStyle ListView -ErrorAction SilentlyContinue
    } catch {
        # Ignore errors in non-interactive environments
    }
}

# Firstly install by Install-Module -Name Terminal-Icons -Repository PSGallery
# https://github.com/devblackops/Terminal-Icons?WT.mc_id=-blog-scottha
Import-Module -Name Terminal-Icons

# Ensure console's output encoding is set to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$env:LESSCHARSET = 'utf-8'

# POSH_THEMES_PATH: C:\Users\ChenGefei\AppData\Local\Programs\oh-my-posh\themes
oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\gruvbox.omp.json | Invoke-Expression

# neovim
Set-Alias -Name vi -Value E:\App\nvim-win64\bin\nvim.exe

# Claude Code
$env:ENABLE_LSP_TOOLS = "1"
$env:EDITOR="code --wait"

# Git Worktree Helper
function worktree {
    & "C:\Users\ChenGefei\.claude\scripts\worktree-helper.ps1" @Args
}

Set-Alias -Name wt -Value worktree -Force -Scope Global
