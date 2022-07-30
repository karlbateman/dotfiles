local cmd = vim.api.nvim_command

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colour scheme.
  use { 'dracula/vim', as = 'dracula' }

  -- Telescope (finding shit!).
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-file-browser.nvim' }
    }
  }

  -- Prime's shizzle.
  use 'ThePrimeagen/git-worktree.nvim'
  use 'ThePrimeagen/harpoon'

  -- Git integration.
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Such a time saver!
  use 'tpope/vim-surround'

  -- GUI enhancements.
  use 'editorconfig/editorconfig-vim'
  use 'itchyny/lightline.vim'
  use { 'junegunn/fzf', run = './install --bin' }
  use { 'junegunn/fzf.vim' }
  use { 'preservim/nerdtree' }

  -- LSP and completion.
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'simrat39/symbols-outline.nvim'

  -- Improved syntax highlighting.
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'williamboman/nvim-lsp-installer'
  use 'romgrk/nvim-treesitter-context'
  use 'nvim-treesitter/playground'

  -- Language support.
  use 'ambv/black'
  use 'rust-lang/rust.vim'
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
end)
