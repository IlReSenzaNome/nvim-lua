return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        event = "VeryLazy",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup{
              options = {
                tab_size = 18,
                show_tab_indicators = true,
                indicator_icon = '|',
                diagnostics = "nvim_lsp",
                separator_style = "thick",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                  local icon = level:match("error") and " " or " "
                  return " " .. icon .. count
                end
              }
            }
        end,
    },
}
