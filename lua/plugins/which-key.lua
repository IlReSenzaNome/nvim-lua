return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local wk = require("which-key")
        wk.register({}, { prefix = "<leader>o", name = "+Open"})
        wk.register({}, { prefix = "<leader>g", name = "+Git"})
        wk.register({}, { prefix = "<leader>f", name = "+Telescop"})
    end,
    opts = {
        mdoe = "n",
        prefix = "",
        buffer = nil,
        silent = true,
        noremap = true,
        nowait = false,
        expr = false,
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
}
