----------------------------------
-- NeoVim Aliases
----------------------------------
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd
-----------------------------------
-- NeoVim Mapings Key
-- --------------------------------
-- Disable Arrow Keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})
-- Iser mode movement 
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)
-- Save File
map('n', '<C-s>', ':w', default_opts)
