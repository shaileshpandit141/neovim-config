---@diagnostic disable: undefined-global
--[[
  This is the entry point for Neovim configuration.
  It loads all the necessary configuration modules:

  - settings: Basic Neovim settings and options
  - keymaps: Custom key mappings and shortcuts
  - lazy: Plugin management using lazy.nvim
  - cmp: Completion settings and configuration
  - lsp: Language Server Protocol configuration
  - treesitter: Syntax highlighting and code parsing
  - autosave: Automatic file saving functionality
--]]

-- Load custom nvim-settings configs
require("configs.nvim-settings")

-- Load lazy.nvim and plugins
require("nvim-lazy-setup")

-- Load custom configs
require("configs.nvim-keymaps")
require("configs.nvim-lsp")
require("configs.nvim-cmp")
require("configs.nvim-treesitter")
require("configs.nvim-autopairs")
require("configs.nvim-indent")


-- Force diagnostics to update while in insert mode
vim.cmd [[
  autocmd InsertLeave,TextChanged * lua vim.diagnostic.setloclist({open=false})
  autocmd TextChangedI * lua vim.diagnostic.enable()
]]
