-- Alias
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd 

map('i', 'C-h', '<left>', default_opts) 
map('i', 'C-j', '<down>', default_opts) 
map('i', 'C-k', '<up>', default_opts) 
map('i', 'C-l', '<right>', default_opts) 
