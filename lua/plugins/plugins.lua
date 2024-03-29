return {
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  {
    "windwp/nvim-autopairs",
    opts={},
    event="VeryLazy",
  },
  {
    "brenoprata10/nvim-highlight-colors",
    event={ "BufReadPre", "BufNewFile"},
    config = function ()
      require("nvim-highlight-colors").setup({
        render = "background",
        enable_named_colors = true,
        enable_tailwind = false,
      })
    end
  },
  {
    "folke/zen-mode.nvim",
    dependencies = {
      "folke/twilight.nvim",
    },
    keys = {
      {"<leader>oz", ":ZenMode<cr>", desc = "Open ZenMode"},
    },
    opts = {},
  },
}
