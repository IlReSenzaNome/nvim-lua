return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.3",
        -- or                          , branch = "-.1.x",
        dependencies = { "nvim-lua/plenary.nvim"},
        key = {
        },
    },
    {
        "telescope.nvim",
        dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
            end,
        },
    },
}
