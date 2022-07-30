local cmd = vim.api.nvim_command
local opt = vim.opt
local g = vim.g

opt.guicursor = ''

opt.nu = true
opt.relativenumber = true

opt.errorbells = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.smartindent = true

opt.wrap = false

opt.signcolumn = 'yes'
opt.termguicolors = true
opt.scrolloff = 10

-- Give more space for displaying messages.
opt.cmdheight = 1

-- Havin a longer updatetime (default is 4s) leads
-- to noticeable delays and poor user experience.
opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
opt.shortmess:append('c')

opt.colorcolumn = '80'

opt.completeopt = { 'menuone', 'noinsert', 'noselect' }

-- This is from the help docs, it enables mode shapes, "Cursor" highlight, and blinking
vim.o.guicursor = table.concat(
    {
        [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]],
        [[a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]],
        [[sm:block-blinkwait175-blinkoff150-blinkon175]]
    }, ','
)

g.mapleader = ' '

cmd 'filetype plugin indent on'
