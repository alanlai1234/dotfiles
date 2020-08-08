set nocompatible
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamed
set cursorline
set number relativenumber
set tabstop=4
set shiftwidth=4
" fold settings
set foldmethod=syntax
set foldlevel=10
set foldnestmax=3 
"end fold settings
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_indent_levels = 3
" switch cursor between modes
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]52;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]53;CursorShape=0\x7\<Esc>\\"
" delete but not cut
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c
nnoremap s "_s
"indent line
set list lcs=tab:\|\ 
let g:indentLine_char = '|'
"comfortable motion
let g:comfortable_motion_friction = 52.0
let g:comfortable_motion_air_drag = 8.0

" coc-explorer presets
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

"workspace config
let g:workspace_create_new_tabs = 0

" make vim smoother
set timeoutlen=1000
set ttimeoutlen=0

"fzf
"let $FZF_DEFAULT_OPTS='--color=dark --color=fg:7,bg:-1,hl:1,fg+:#FFFFFF,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'

"let g:fzf_colors =
            "\ { 'fg':      ['fg', 'Normal'],
            "\ 'bg':      ['bg', 'Normal'],
            "\ 'hl':      ['fg', 'Comment'],
            "\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            "\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            "\ 'hl+':     ['fg', 'Statement'],
            "\ 'info':    ['fg', 'PreProc'],
            "\ 'prompt':  ['fg', 'Conditional'],
            "\ 'pointer': ['fg', 'Exception'],
            "\ 'marker':  ['fg', 'Keyword'],
            "\ 'spinner': ['fg', 'Label'],
            "\ 'header':  ['fg', 'Comment'] }
"let g:fzf_colors ={
			"\ 'fg':      7,
			"\ 'bg':      -1,
			"\ 'hl':      1,
			"\ 'fg+':     '#FFFFFF',
			"\ 'bg+':     0,
			"\ 'hl+':     1,
			"\ 'info':    0,
			"\ 'prompt':  0,
			"\ 'pointer': 12,
			"\ 'marker':  4,
			"\ 'spinner': 11,
			"\ 'header':  -1 }

"let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(20)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

"autocmd! FileType fzf set laststatus=0 noshowmode noruler
  "\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

