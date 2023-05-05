set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
"Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/vimux'
Plug 'conweller/findr.vim'
"Plug 'andweeb/presence.nvim'
Plug 'jiangmiao/auto-pairs'

call plug#end()
