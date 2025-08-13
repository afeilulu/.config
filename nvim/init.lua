require("core.lazy")
require("config.autocmds")

local map = vim.keymap.set
vim.g.mapleader = " "
-- map for bufferline
map('n', '<leader>1', ':lua require("bufferline").go_to(1, true)<CR>')
map('n', '<leader>2', ':lua require("bufferline").go_to(2, true)<CR>')
map('n', '<leader>3', ':lua require("bufferline").go_to(3, true)<CR>')
map('n', '<leader>4', ':lua require("bufferline").go_to(4, true)<CR>')
map('n', '<leader>5', ':lua require("bufferline").go_to(5, true)<CR>')
map('n', '<leader>6', ':lua require("bufferline").go_to(6, true)<CR>')
map('n', '<leader>7', ':lua require("bufferline").go_to(7, true)<CR>')
map('n', '<leader>8', ':lua require("bufferline").go_to(8, true)<CR>')
map('n', '<leader>9', ':lua require("bufferline").go_to(9, true)<CR>')
map('n', '<leader>$', ':lua require("bufferline").go_to(-1, true)<CR>')

