local Telescope = require 'telescope.builtin'
local Remap = require 'krb.keymap'
local nnoremap = Remap.nnoremap

nnoremap('<Leader>ff', function()
    Telescope.find_files({ hidden = true })
end)
nnoremap('<Leader>fg', function ()
    Telescope.live_grep()
end)
nnoremap('<Leader>fb', function ()
    Telescope.buffers()
end)
nnoremap('<Leader>fh', function ()
    Telescope.help_tags()
end)
