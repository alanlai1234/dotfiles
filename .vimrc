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
Plug 'majutsushi/tagbar', {'on':'TagbarToggle'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'francoiscabrol/ranger.vim', {'on' : 'Ranger'}
Plug 'rbgrouleff/bclose.vim', {'on' : 'Ranger'}
Plug 'yuttie/comfortable-motion.vim'
Plug 'ChristianChiarulli/codi.vim', {'on' : 'Codi'}
Plug 'vimwiki/vimwiki'

call plug#end()

"color theme
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 256
if (has("autocmd"))
  augroup colorextend
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight("Normal", { "bg": { "gui": "#1e2127" } })
    autocmd ColorScheme * call onedark#extend_highlight("CursorLineNr", { "fg": { "gui": "66FF66" } })
  augroup END
endif
colorscheme onedark 
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
endif
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" settings
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamed
set cursorline
set number relativenumber
set formatoptions-=cro
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
"indent line
set list lcs=tab:\|\ 
let g:indentLine_char = '|'
"comfortable motion
let g:comfortable_motion_friction = 52.0
let g:comfortable_motion_air_drag = 8.0

" mappings
let mapleader = ','
imap <C-a> <ESC>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
map <silent> <C-t> :TagbarToggle <CR>
map / :BLines <CR>
ab qq q!
nnoremap <silent> <F5> :NERDTreeToggle<CR>
let g:SuperTabDefaultCompletionType = "<c-n>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
map <silent> <leader>b :Buffers <CR>
map <silent> <leader>s :w <CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap 0 ^
nmap <C-g> $
map <leader>f :Ranger <CR>
" vim's native search is annoying, often miss click it
map n <Nop>
map <C-c> <Nop>
" run program
let file=expand("%:p")
let exe=expand("%:p:r")
autocmd Filetype c execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && gcc " . file ." -o " . exe ." && " . exe ." <CR>"
autocmd Filetype python execute "nmap <silent> <C-c>> :w <CR> :VimuxPromptCommand <CR> python " . file ."<CR>"
autocmd Filetype cpp execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && g++ " . file ." -o " . exe ." && " . exe ." <CR>"

" lightline bufferline
"let g:lightline = {
      "\ 'tabline': {
      "\   'left': [ ['buffers'] ],
      "\   'right': [ ['close'] ]
      "\ },
      "\ 'component_expand': {
      "\   'buffers': 'lightline#bufferline#buffers'
      "\ },
      "\ 'component_type': {
      "\   'buffers': 'tabsel'
      "\ }
      "\ }
