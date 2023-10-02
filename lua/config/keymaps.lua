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
map('n', '<C-S>', ':w<cr>', default_opts)
map('v', '<C-S>', '<esc>:w<cr>', default_opts)
map('i', '<C-S>', '<esc>:w<cr>', default_opts)
-- bufferline
map('n','<Tab>', ':BufferLineCycleNext<cr>', default_opts)
map('n', '<S-tab>', ':BufferLineCyclePrev<cr>', default_opts)
-- Neo-tree
map('n', '<C-T>', ':NeoTreeFloatToggle<cr>', default_opts)
map('i', '<C-T>', ':NeoTreeFloatToggle<cr>', default_opts)
map('v', '<C-T>', ':NeoTreeFloatToggle<cr>', default_opts)
map('n', '<C-C>', ':NeoTreeClose<cr>', default_opts)
