set nocompatible
set ttyfast
set lazyredraw
set noshowmode
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamed
set nocursorline
set number relativenumber
set tabstop=6
set shiftwidth=4
set updatetime=100
" fold settings
set foldmethod=syntax
set foldlevel=10
set foldnestmax=3 
"end fold settings
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_indent_levels = 3
"indent line
"set list lcs=tab:\|\ 
"let g:indentLine_char = '|'
"comfortable motion
let g:comfortable_motion_friction = 52.0
let g:comfortable_motion_air_drag = 8.0

"workspace config
let g:workspace_create_new_tabs = 0

" make vim smoother
set timeoutlen=1000
set ttimeoutlen=0

"fzf
"let g:FZF_DEFAULT_OPTS="--color=dark --color=fg:7,bg:-1,hl:1,fg+:#FFFFFF,bg+:-1,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4"
let g:fzf_colors = {
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 15],
			\ 'bg+':     ['bg', 'Normal'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'prompt':  ['fg', 'Exception'],
			\ 'info': ['fg', 'Exception']}

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

"vista.vim
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1

