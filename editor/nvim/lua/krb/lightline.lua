local cmd = vim.api.nvim_command
local g = vim.g

-- Status bar configuration.
g.lightline = {
    colorscheme = 'dracula',
    active = {
        left = { { 'mode', 'paste' }, { 'readonly', 'filename', 'modified' } },
        right = { { 'lineinfo' }, { 'percent' }, { 'fileencoding', 'filetype' } },
    },
    component_function = {
        filename = 'LightlineFilename',
    },
    separator = { left = '', right = '' },
    subseparator = { left = '', right = '' },
}

cmd 'set noshowmode'
