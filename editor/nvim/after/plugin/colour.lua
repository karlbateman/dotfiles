local cmd = vim.api.nvim_command
cmd('colorscheme dracula')

vim.cmd [[
    colorscheme dracula
    highlight ColorColumn ctermbg=0 guibg=grey
    highlight Normal guibg=none
]]

-- Improve syntax highlighting for Go files.
vim.g['go_highlight_operators'] = 1
vim.g['go_highlight_functions'] = 1
vim.g['go_highlight_function_parameters'] = 1
vim.g['go_highlight_function_calls'] = 1
vim.g['go_highlight_types'] = 1
vim.g['go_highlight_fields'] = 1
