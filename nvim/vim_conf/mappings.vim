map <space> <Nop>
let mapleader = ' '
imap <C-a> <ESC>
map <silent> <leader>t :Clap tags<CR>
map <silent> / :Clap blines <CR>
ab qq q!
command YY execute "%y"
let g:SuperTabDefaultCompletionType = "<c-n>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map <silent> <leader>s :w <CR>
nmap 0 ^
nmap F $
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
"autocmd Filetype c execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && gcc " . file ." -o " . exe ." && " . exe ." <CR>"
"autocmd Filetype python execute "nmap <silent> <C-c>> :w <CR> :VimuxPromptCommand <CR> python " . file ."<CR>"
autocmd Filetype cpp execute 'nmap <C-c> :call VimuxRunCommand("g++ -std=c++11 ".@%." -o ".expand("%:p:r")." && ".expand("%:p:r")) <CR>'
nmap ; :

"coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"move text block or line
nnoremap <down> :m .+1<CR>==
nnoremap <up> :m .-2<CR>==
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv
