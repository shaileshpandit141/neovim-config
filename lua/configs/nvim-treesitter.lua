---@diagnostic disable: undefined-global

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "python", "html", "javascript", "typescript", "tsx", "css", "json"
    },
    highlight = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    indent = {
        enable = true,
    }
})
