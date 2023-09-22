return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Load the colorscheme here

		require("tokyonight").setup({
			-- your configuration here
			style = "moon",
			light_style = "storm",
			transparent = false,
			terminal_colors = true,
		})
	end,
}
