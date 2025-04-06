-- Lualine Configuration

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for icons
    config = function()
        require('lualine').setup {
            options = {
                theme = 'gruvbox', -- 'auto' or 'tokyonight', 'catppuccin', etc.
                section_separators = '',
                component_separators = ''
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff' },
                lualine_c = {
                    {
                        'diagnostics',
                        sources = { 'nvim_diagnostic' }, -- ✅ use this, not 'nvim_lsp'
                        sections = { 'error', 'warn', 'info', 'hint' },
                        symbols = {
                            error = ' ',
                            warn  = ' ',
                            info  = ' ',
                            hint  = ' '
                        },
                        colored = true,
                        update_in_insert = true, -- ✅ enable live update
                        always_visible = true,
                    },
                    'filename'
                },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
        }
    end
}
