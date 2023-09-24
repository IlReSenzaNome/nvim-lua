return {
    "neovim/nvim-lspconfig",
    dependencies = {
    "jose-elias-alvarez/null-ls.nvim",
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
    opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    config = function()
        require("neodev").setup()
        require("lspconfig").lua_ls.setup({})
    end,
}
