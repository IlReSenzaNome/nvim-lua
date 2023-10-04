return {
    'terrortylor/nvim-comment',
    lazy = false,
    opts = {},
    config = function()
        require('nvim_comment').setup()
    end,
}
