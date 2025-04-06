---@diagnostic disable: undefined-global

local lspconfig = require("lspconfig")

-- Initialize diagnostic configuration
vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,
    underline = true,
    signs = true,
    severity_sort = true,
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
