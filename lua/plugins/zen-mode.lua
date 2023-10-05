return {
    -- Lua
    {
        "folke/zen-mode.nvim",
        dependencies = {
            "folke/twilight.nvim",
        },
        keys = {
            {"<leader>oz", ":ZenMode<cr>", desc = "Open ZenMode" },
        },
        opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
}
