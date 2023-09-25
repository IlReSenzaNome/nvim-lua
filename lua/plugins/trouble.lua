return {
    "folke/trouble.nvim",
    opts = {
        enabled = false,
        icons = false,
        fold_open = "v",
        fold_closed = ">",
        indent_lines = false,
        sigs = {
            -- icons / text used for a diagnostic 
            error = "error",
            warning = "warn",
            hint = "hint",
            information = "info"
        },
        use_diagnostic_sigs = true --enablig this will use the sigs defined in your lsp client
    }
}
