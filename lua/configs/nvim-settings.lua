---@diagnostic disable: undefined-global

-- Set global defaults
-- -------------------

-- Set leader key
vim.g.mapleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab and indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Special characters display
vim.opt.list = true
vim.opt.listchars:append("tab:┊ ")
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

-- Mouse
vim.opt.mouse = "a"
