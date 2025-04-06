---@diagnostic disable: undefined-global

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- File explorer (if using nvim-tree)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- Format file
map("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", opts)
