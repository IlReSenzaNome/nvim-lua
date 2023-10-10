local function get_time()
  return os.date("%H:%M")
end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    local navic = require("nvim-navic")
    navic.setup({
      icons = {
        File = "󰈙 ",
        Module = " ",
        Namespace = "󰌗 ",
        Package = " ",
        Class = "󰌗 ",
        Method = "󰆧 ",
        Property = " ",
        Field = " ",
        Constructor = " ",
        Enum = "󰕘",
        Interface = "󰕘",
        Function = "󰊕 ",
        Variable = "󰆧 ",
        Constant = "󰏿 ",
        String = "󰀬 ",
        Number = "󰎠 ",
        Boolean = "◩ ",
        Array = "󰅪 ",
        Object = "󰅩 ",
        Key = "󰌋 ",
        Null = "󰟢 ",
        EnumMember = " ",
        Struct = "󰌗 ",
        Event = " ",
        Operator = "󰆕 ",
        TypeParameter = "󰊄 ",
      },
      lsp = {
        auto_attach = false,
        preference = nil,
      },
      highlight = false,
      separator = " > ",
      depth_limit = 0,
      depth_limit_indicator = "..",
      safe_output = true,
      lazy_update_context = false,
      click = false,
    })

    require("lspconfig").clangd.setup({
      on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
      end,
    })
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        icons_enabled = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { { "fileformat", symbols = { unix = "", dos = "", mac = "" } }, { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = {
          {
            "filename",
            file_status = true,
            path = 1,
            symbols = { modified = "", readonly = "🔒", unnamed = "⭕", newfile = "+" },
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = "", warn = "", info = "", hint = "" },
          },
        },
        lualine_x = { { "keymap" } },
        lualine_y = { { "progress" }, { "location" } },
        lualine_z = { { get_time } },
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
