return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  main = "config.plugins.nvim-tree",
  config = function (_,opts)
    local g = vim.g
    g.nvim_tree_side = "left"
    g.nvim_tree_widht = 30
    g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
    g.nvim_tree_auto_open = 1
    g.nvim_tree_auto_close = 1
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    -- If you want icons for diagnostic errors, you'll need to define them somewhere:
    vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
    -- NOTE: this is changed from v1.x, which
    require("nvim-tree").setup(opts)
  end,
}
