---@diagnostic disable: undefined-global

local lspconfig = require("lspconfig")

-- Initialize diagnostic configuration
-- vim.diagnostic.config({
--     virtual_text = true,
--     update_in_insert = true,
--     underline = true,
--     signs = true,
--     severity_sort = true,
-- })

-- configure diagnostic update message time
vim.o.updatetime = 300

vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        severity = nil,     -- Show all levels (can set to vim.diagnostic.severity.ERROR if you want only errors)
        source = "if_many", -- Show source only if multiple LSPs
        format = function(diagnostic)
            -- Keep it short: trim to 60 chars
            local msg = diagnostic.message:gsub("\n", " "):gsub("%s+", " ")
            return #msg > 60 and (msg:sub(1, 57) .. "...") or msg
        end,
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
    float = {
        border = "none", -- rounded
        focusable = false,
        source = "always",
        max_width = 80,
    },
})

-- Auto show float on hover (normal + insert mode)
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end,
})

vim.api.nvim_create_autocmd("CursorHoldI", {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end,
})

-- Python (Django)
lspconfig.pyright.setup({})

-- JavaScript / TypeScript / React
lspconfig.tsserver = nil -- prevent warning if autoloaded
lspconfig.ts_ls.setup({
    settings = {
        typescript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayVariableTypeHints = true,
            },
        },
        javascript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayVariableTypeHints = true,
            },
        },
    },
})

-- HTML + Django templates
lspconfig.html.setup({})

-- JSON
lspconfig.jsonls.setup({})

-- Emmet for HTML/JSX
lspconfig.emmet_ls.setup({
    filetypes = {
        "html", "css", "javascript", "javascriptreact", "typescriptreact"
    }
})
