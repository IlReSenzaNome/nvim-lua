return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Load the colorscheme here
		vim.cmd([[colorscheme tokyonight]])
	end,
} 
