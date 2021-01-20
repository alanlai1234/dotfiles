map <space> <Nop>
let mapleader = ' '
imap <C-a> <ESC>
map <silent> <leader>t :Clap tags<CR>
map <silent> / :Clap blines <CR>
ab qq q!
let g:SuperTabDefaultCompletionType = "<c-n>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gr <Plug>(coc-references)
map <silent> <leader>s :w <CR>
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
nmap 0 ^
nmap <silent> <leader>n :bn <CR>
nmap <silent> <leader>p :bp <CR>
nmap <silent> <leader>d :bd <CR>
nnoremap <silent> <leader>hh :SignifyHunkDiff<CR>
nnoremap <silent> <leader>hu :SignifyHunkUndo<CR>
nnoremap <silent> <leader>f :Clap filer<CR>

" delete but not cut
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c
nnoremap s "_s
nnoremap C "_C

"vim's native search is annoying, often miss click it
map n <Nop>
map <C-c> <Nop>

" run program
let file=expand("%:p")
let exe=expand("%:p:r")
autocmd Filetype c execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && gcc " . file ." -o " . exe ." && " . exe ." <CR>"
"autocmd Filetype python execute "nmap <silent> <C-c>> :w <CR> :VimuxPromptCommand <CR> python " . file ."<CR>"
"autocmd Filetype cpp execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && g++ " . file ." -o " . exe ." && " . exe ." <CR>"
nmap ; :

" coc-explorer
"nmap <silent> <leader>e :CocCommand explorer<CR>
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
