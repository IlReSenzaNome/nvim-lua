return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
    init = function()
        vim.g.tokyonight_style = "moon"
    end,
    config = function()
        vim.cmd.colorscheme "tokyonight"
    end,
}
