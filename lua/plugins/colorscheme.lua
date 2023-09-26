return {
	"folke/tokyonight.nvim",
	lazy = true,
    name = "tokyonight",
	priority = 1000,
    opts = {
         integrations = {
             lsp_trouble = true,
             mason = true,
         },
         style = "moom",
         terminal_colors = true,
    },
    init = function()
        vim.cmd[[colorscheme tokyonight]]
    end,
}
