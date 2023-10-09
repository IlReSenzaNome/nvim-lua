local function get_time()
  return os.date("%H:%M")
end

return {
	"nvim-lualine/lualine.nvim",
  event = "VeryLazy",
	config = function()
        require("lualine").setup({
			options = {
				theme = "tokyonight",
				icons_enabled = true,
				globalstatus = true,
			},
			sections = {
				lualine_a = { {'fileformat', symbols = { unix = '', dos = '', mac = '',},}, { 'mode', upper = true},},
				lualine_b = { { "branch", icon = "" }, "db_ui#statusline"},
				lualine_c = { {"filename",file_status = true, path = 1, symbols = { modified = '', readonly = '🔒', unnamed = '⭕', newfile = '+', },}, { "diagnostics", sources = { "nvim_diagnostic" }, symbols = { error = "", warn = "", info = "", hint = "" },  },},
				lualine_x = { { "keymap" } },
				lualine_y = { {"progress"}, {"location"} },
				lualine_z = { {get_time} },
			},
			winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
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
		})
	end,
}
