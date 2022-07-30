local Remap = require 'krb.keymap'
local nnoremap = Remap.nnoremap
local api = vim.api

nnoremap(';', ':')
nnoremap('<S-Tab>', '<<')
nnoremap('<S-Tab>', '<C-d>')

local YankGroup = api.nvim_create_augroup('YankHighlight', { clear = true })
api.nvim_create_autocmd('TextYankPost', {
    group = YankGroup,
    command = "silent! lua vim.highlight.on_yank({ timeout = 40 })",
})

local GoGroup = api.nvim_create_augroup('GoGroup', { clear = true })
api.nvim_create_autocmd('BufWritePre', {
    group = GoGroup,
    command = 'lua OrgImports(1000)',
    pattern = '*.go',
})
api.nvim_create_autocmd('FileType', {
    group = GoGroup,
    command = 'setlocal omnifunc=v:lua.vim.lsp.omnifunc',
    pattern = 'go',
})
