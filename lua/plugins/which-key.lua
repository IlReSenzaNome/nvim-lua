return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        mdoe = "n",
        prefix = " ",
        buffer = nil,
        silent = true,
        noremap = true,
        nowait = false,
        expr = false,
    }
}
