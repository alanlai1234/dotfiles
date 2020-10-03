set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'lifepillar/vim-solarized8'
Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'benmills/vimux'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'ChristianChiarulli/codi.vim', {'on' : 'Codi'}
Plug 'vimwiki/vimwiki'
Plug 'rhysd/clever-f.vim'
Plug 'honza/vim-snippets'
Plug 'thaerkh/vim-workspace'
"Plug 'tpope/vim-dadbod'
Plug 'wellle/targets.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-buftabline'
"Plug 'narajaon/onestatus'
"Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()
colorscheme solarized8
