return {
    {
        "folke/null-ls.nvim",
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
    },
}
