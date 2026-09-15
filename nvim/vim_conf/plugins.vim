set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'rachartier/tiny-inline-diagnostic.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
"Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'preservim/vimux'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'github/copilot.vim'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()
