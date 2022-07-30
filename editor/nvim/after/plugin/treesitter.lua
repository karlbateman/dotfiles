-- Syntax highlighting
local sitter = require 'nvim-treesitter.configs'

sitter.setup {
  ensure_installed = "all",
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}
