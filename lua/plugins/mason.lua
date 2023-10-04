return {
    {
        "folke/null-ls.nvim",
        keys = {
            {"<leader>q", desc = "Null"},
        },
        opts = function(_, opts)
            local nls = require("null-ls")
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            })
        end,
        keys = {
            {"<leader>m", ":Mason<cr>", desc = "Open mason"}
        }
    },
}
