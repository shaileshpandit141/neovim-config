---@diagnostic disable: undefined-global

local M = {}

function M.setup()
    -- Python (Django backend): 4 spaces
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "python" },
        callback = function()
            vim.opt_local.shiftwidth = 4
            vim.opt_local.tabstop = 4
            vim.opt_local.expandtab = true
        end,
    })

    -- HTML/CSS (Django templates): 2 spaces
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "html", "css" },
        callback = function()
            vim.opt_local.shiftwidth = 2
            vim.opt_local.tabstop = 2
            vim.opt_local.expandtab = true
        end,
    })

    -- React (JS, TS, JSX, TSX, JSON): 2 spaces
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx", "json" },
        callback = function()
            vim.opt_local.shiftwidth = 2
            vim.opt_local.tabstop = 2
            vim.opt_local.expandtab = true
        end,
    })
end

return M
