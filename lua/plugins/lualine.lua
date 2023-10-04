return {
	"nvim-lualine/lualine.nvim",
	config = function()
        require("lualine").setup({
			options = {
				theme = "tokyonight",
				icons_enabled = true,
				globalstatus = true,
			},
			sections = {
			    lualine_a = { { 'mode', upper = true, icon = ""} }, -- e712 dos = '',  -- e70f mac = '',  -- e711
				lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
				lualine_c = { { "filename", file_status = true, path = 1 } },
				lualine_x = {},
				lualine_y = { "filetype" },
				lualine_z = { "location" },
			},
			winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
            extensions = { 'fugitive', 'neotree'}
		})
	end,
}
