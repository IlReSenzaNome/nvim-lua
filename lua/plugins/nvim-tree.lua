return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  main = "config.plugins.nvim-tree",
  config = function (_,opts)
    require("nvim-tree").setup(opts)
  end,
}
