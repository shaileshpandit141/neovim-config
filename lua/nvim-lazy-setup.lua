---@diagnostic disable: undefined-global

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugin specs from plugins/ folder
require("lazy").setup({
    -- Core
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",
    "nvim-telescope/telescope.nvim",
    "nvim-lualine/lualine.nvim",

    -- Colorscheme
    "folke/tokyonight.nvim",

    -- Completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- LSP
    "neovim/nvim-lspconfig",

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    "windwp/nvim-ts-autotag",

    -- Git
    "lewis6991/gitsigns.nvim",

    -- Django syntax
    "lepture/vim-jinja",

    -- Plugins from files
    { import = "plugins" }
})
