return {
  -- amongst your other plugins
  {
      'akinsho/toggleterm.nvim',
      version = "*",
      config = true,
      theme = 'tokyonight',
      dependencies = {
          'christoomey/vim-tmux-navigator',
      },
      keys = {
          {"<leader>ot", ":ToggleTerm size=40 dir=git_dir direction=vertical name=git_dir<cr>", desc = "Open a Toggle Term"},
      },
  };
  -- or
  {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
}
