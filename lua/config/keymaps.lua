----------------------------------
-- NeoVim Aliases
----------------------------------
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd
-----------------------------------
-- NeoVim Mapings Key
----------------------------------
-- Disable Arrow Keys
-----------------------------------
map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })
-----------------------------------
-- Iser mode movement
-----------------------------------
map("i", "<M-h>", "<left>", default_opts)
map("i", "<M-j>", "<down>", default_opts)
map("i", "<M-k>", "<up>", default_opts)
map("i", "<M-l>", "<right>", default_opts)
-----------------------------------
-- Save File
-----------------------------------
map("n", "<C-S>", ":w<cr>", default_opts)
map("v", "<C-S>", "<esc>:w<cr>", default_opts)
map("i", "<C-S>", "<esc>:w<cr>", default_opts)
-----------------------------------
-- bufferline
-----------------------------------
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", default_opts)
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", default_opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", default_opts)
-----------------------------------
-- Neo-tree
-----------------------------------
map("n", "<leader>fe", "<cmd>Neotree<cr>", default_opts)
map("v", "<leader>fe", "<cmd>Neotree<cr>", default_opts)
map("n", "<leader>fc", "<cmd>NeoTreeClose<cr>", default_opts)
map("v", "<leader>fc", "<cmd>NeoTreeClose<cr>", default_opts)
------------------------------------
-- Comments
------------------------------------
map("n", "<leader>cl", "<cmd>CommentToggle<cr>", default_opts)
map("v", "<leader>cl", "<cmd>CommentToggle<cr>", default_opts)
------------------------------------
-- Lazy
------------------------------------
map("n", "<leader>l", "<cmd>Lazy<cr>", default_opts)
------------------------------------
-- Tmux
------------------------------------
map("t", "<C-E>", "<C-\\><C-n>", default_opts)
map("n", "<C-H>", "<cmd>TmuxNavigateLeft<cr>", default_opts)
map("n", "<C-L>", "<cmd>TmuxNavigateRight<cr>", default_opts)
map("n", "<C-K>", "<cmd>TmuxNavigateUp<cr>", default_opts)
map("n", "<C-J>", "<cmd>TmuxNavigateDown<cr>", default_opts)
-------------------------------------
-- Reload configuration without restart nvim
-------------------------------------
map("n", "<F5>", ":so %<cr>", default_opts)
