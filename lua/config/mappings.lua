----------------------------------
-- NeoVim Aliases
----------------------------------
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
-----------------------------------
-- NeoVim Mapings Key
-- Disable Arrow Keys
-----------------------------------
map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })

-- User mode movement
map("i", "<C-b>", "<ESC>^1", { desc = "Move Beginnig of line"})
map("i", "<C-e>", "<End>", { desc = "Move End of line"})
map("i", "<C-h>", "<left>", { desc = "Move left"})
map("i", "<C-l>", "<right>", { desc = "Move right"})
map("i", "<C-j>", "<down>", { desc = "Move down"})
map("i", "<C-k>", "<up>", { desc = "Move up"})

map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save"})
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole"})

-- bufferline
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", default_opts)
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", default_opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer"})
-- nvim-tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window"})
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Nivmtree Focus Window"})
-- Comments
-- Lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", default_opts)
-- Tmux
-- map("t", "<C-E>", "<C-\\><C-n>", default_opts)
-- map("n", "<C-H>", "<cmd>TmuxNavigateLeft<cr>", default_opts)
-- map("n", "<C-L>", "<cmd>TmuxNavigateRight<cr>", default_opts)
-- map("n", "<C-K>", "<cmd>TmuxNavigateUp<cr>", default_opts)
-- map("n", "<C-J>", "<cmd>TmuxNavigateDown<cr>", default_opts)
-- Reload configuration without restart nvim
map("n", "<F5>", ":so %<cr>", default_opts)
-- whichkey
map("n", "<leader>wk", "<cmd>WhichKey <CR>", { desc = "Whichkey all keymaps"})
