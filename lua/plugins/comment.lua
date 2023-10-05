return {
    'terrortylor/nvim-comment',
    event = "VeryLazy",
    lazy = false,
    opts = {},
    config = function()
        require('nvim_comment').setup()
    end,
}
