--------------------------------------
-- NeoVim API Aliases
--------------------------------------
local cmd = vim.cmd            -- Execute Vim Comands
local exec = vim.api.nvim_exec -- Execute Vim Script
local fn = vim.fn              -- Call Vim Functions
local g = vim.g                -- Global values
local opt = vim.opt            -- General options
local au = vim.api.nvim_create_autocmd -- create autocomand
local ag = vim.api.nvim_create_augroup -- Create autogroup

--------------------------------------
-- NeoVim General config
--------------------------------------
g.mapleader = " "              -- leader to space
-- opt.clipboard = 'unnamedplus'  -- Copy/Paste to sytem clipboard 
opt.swapfile = false           -- Don't use swapfile

--------------------------------------
-- NeoVim Interfaces
--------------------------------------
opt.number = true
opt.relativenumber = true

--------------------------------------
-- Tabs, Ident
--------------------------------------
opt.expandtab = true           -- Use spaces Instead of tabs
opt.shiftwidth = 4             -- Shift 4 spaces when tab
opt.tabstop = 4                -- 1 Tab == 4 Spaces
opt.smartindent = true         -- autoindent now lines 

--------------------------------------
-- Spell
--------------------------------------
local markdown_spell = ag("markdownSpell",{})
au(
	"fileType",
	{
		pattern = "markdown",
		callback = function()
			vim.opt.spelllang = "es"
			vim.opt.spell = true
		end,
		group = markdown_spell
	}
)
au(
	{"BufRead", "BufNewFile"},
	{
		pattern = "*.md",
		callback = function()
			vim.opt.spelllang = "es"
			vim.opt.spell = true
		end,
		group = markdown_spell
	}
)
