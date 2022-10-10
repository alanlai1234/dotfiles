set nocompatible
set ttyfast
set lazyredraw
set noshowmode
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamedplus
set nocursorline
set number relativenumber
set tabstop=4
set shiftwidth=4
set updatetime=100
" fold settings
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=10
set foldnestmax=3 
"end fold settings
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_indent_levels = 3

" make vim smoother
set timeoutlen=1000
set ttimeoutlen=0

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

"treesitter
:lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
	enable = true,              
  },
}
require "nvim-treesitter.highlight"
vim.treesitter.highlighter.hl_map.error = nil
EOF
