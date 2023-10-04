----------------------------------
-- NeoVim Aliases
----------------------------------
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd
-----------------------------------
-- NeoVim Mapings Key
----------------------------------
-- Disable Arrow Keys
-----------------------------------
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})
-----------------------------------
-- Iser mode movement
-----------------------------------
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)
-----------------------------------
-- Save File
-----------------------------------
map('n', '<C-S>', ':w<cr>', default_opts)
map('v', '<C-S>', '<esc>:w<cr>', default_opts)
map('i', '<C-S>', '<esc>:w<cr>', default_opts)
-----------------------------------
-- bufferline
-----------------------------------
map('n','<Tab>', ':BufferLineCycleNext<cr>', default_opts)
map('n', '<S-tab>', ':BufferLineCyclePrev<cr>', default_opts)
-----------------------------------
-- Neo-tree
-----------------------------------
map('n', '<leader>t', ':NeoTreeFloatToggle<cr>', default_opts)
map('v', '<leader>t', ':NeoTreeFloatToggle<cr>', default_opts)
map('n', '<C-C>', ':NeoTreeClose<cr>', default_opts)
map('v', '<C-C>', ':NeoTreeClose<cr>', default_opts)
------------------------------------
-- Comments
------------------------------------
map('n', '<leader>a', ':CommentToggle<cr>', default_opts)
map('v', '<leader>a', ':CommentToggle<cr>', default_opts)
------------------------------------
-- Lazy
------------------------------------
map('n', '<leader>l', ':Lazy<cr>', default_opts)
------------------------------------
-- Tmux
------------------------------------
map('t', '<C-E>', '<C-\\><C-n>', default_opts)
map('n', '<S-E>', ':TmuxNavigateLeft<cr>', default_opts)
map('n', '<s-F>', ':TmuxNavigateRight<cr>', default_opts)
map('n', '<S-A>', ':TmuxNavigateUp<cr>', default_opts)
map('n', '<S-B>', ':TmuxNavigateDown<cr>', default_opts)
