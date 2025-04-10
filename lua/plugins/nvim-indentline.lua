return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- required for new API
    opts = {
        indent = {
            char = "┊", -- or "┊", "¦", etc.
            tab_char = "┊",
        },
        scope = {
            enabled = true,
            show_start = true,
            show_end = false,
            highlight = { "Function", "Label" },
        },
        exclude = {
            filetypes = { "help", "dashboard", "neo-tree", "Trouble", "lazy" },
            buftypes = { "terminal", "nofile" },
        },
    },
}
