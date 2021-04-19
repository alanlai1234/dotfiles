set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'alanlai1234/vim-calculator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'ervandew/supertab'
Plug 'vimwiki/vimwiki'
Plug 'honza/vim-snippets'
Plug 'wellle/targets.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-buftabline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/vimux'

call plug#end()
