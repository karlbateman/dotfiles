local opt = vim.opt
local Remap = require 'krb.keymap'
local nnoremap = Remap.nnoremap

opt.syntax = 'enable'  -- Required for matching our colour scheme.

nnoremap('<Leader>n', ':NERDTreeFocus<CR>')
nnoremap('<C-n>', ':NERDTree<CR>')
nnoremap('<C-t>', ':NERDTreeToggle<CR>')
nnoremap('<C-f>', ':NERDTreeFind<CR>')
