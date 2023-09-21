--------------------------------------
-- NeoVim API Aliases
--------------------------------------
local cmd = vim.cmd -- Comands
local exec = vim.api.nvim_exec --
local fn = vim.fn --
local g = vim.g -- Global values
local opt = vim.opt -- General options

--------------------------------------
-- NeoVim General config
--------------------------------------
g.mapleader = ","

--------------------------------------
-- NeoVim Interfaces
--------------------------------------
opt.number = true
opt.relativenumber = true
