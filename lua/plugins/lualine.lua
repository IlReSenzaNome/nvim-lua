local function get_time()
  return os.date("%H:%M")
end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  init = function ()
    vim.g.lualine_laststatus = vim.o.laststatus
    vim.o.laststatus = 0
  end,
  config = function()
    local icon = require("nvim-web-devicons")
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        icons_enabled = true,
        globalstatus = true,
        disable_filetypes = { statusline = {"startify"} },
      },
      sections = {
        lualine_a = { { "fileformat", symbols = { unix = "", dos = "", mac = "" } }, { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = {
          { icons = icon.get_icon, color = { fg = "#61afef" gui = "NONE" } },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          {
            "filename",
            file_status = true,
            path = 1,
            symbols = { modified = "  ", readonly = "", unnamed = "" },
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = "", warn = "", info = "", hint = "" },
          },
        },
        lualine_x = { 
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
          }, 
          { require("lazy.status").updates, cond = require("lazy.status").has_update },
          {
            "diff",
            symbols = {
              dded = " ",
              modified = " ",
              removed = " ",
            },
          },
        },
        lualine_y = { 
          { "progress", separator = " ", padding = { left = 1, right = 0 } }, 
          { "location", padding = { left = 0, right = 1} }, 
        },
        lualine_z = { 
          function()
            return " " .. os.date("%R")
          end,
        },
      },
      extensions = { "neo-tree", "lazy"},
      })
  end,
}
