return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 40,
                side = "left",
                relativenumber = true,
            },
            renderer = {
                highlight_git = true,
                indent_markers = {
                    enable = true,
                    icons = {
                        corner = "╰", -- Try "└", "╰", "L", etc.
                        edge   = "┊", -- Try "│", "┃", "╎", "┊", etc.
                        item   = "┊", -- Same as above
                        bottom = "┄", -- Try "─", "━", "=", "┄", "╍" etc.
                        none   = " ", -- keep as space
                    },
                },
                icons = {
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true,
                    },
                },
            },
            git = {
                enable = true,
                ignore = false,
            },
            filters = {
                dotfiles = false,
            },
        })
    end
}
