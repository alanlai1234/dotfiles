set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'lifepillar/vim-solarized8'
Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'benmills/vimux'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
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
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
