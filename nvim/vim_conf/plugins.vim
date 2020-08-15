set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'benmills/vimux'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'ChristianChiarulli/codi.vim', {'on' : 'Codi'}
Plug 'vimwiki/vimwiki'
Plug 'rhysd/clever-f.vim'
Plug 'honza/vim-snippets'
Plug 'thaerkh/vim-workspace'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'josa42/vim-lightline-coc'
Plug 'tpope/vim-dadbod'
Plug 'ap/vim-buftabline'
Plug 'wellle/targets.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'mhinz/vim-signify'

call plug#end()
