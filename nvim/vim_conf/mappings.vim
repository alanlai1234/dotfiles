map <space> <Nop>
let mapleader = ' '
imap <C-d> <ESC>
let g:SuperTabDefaultCompletionType = "<c-n>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map <silent> <leader>s :w <CR>
nmap 0 ^
nmap F $
nmap <silent> <leader>n :bn <CR>
nmap <silent> <leader>p :bp <CR>
nmap <silent> <leader>d :bd <CR>
nmap ; :

" delete but not cut
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c
nnoremap s "_s
nnoremap C "_C

" move in the same line
nnoremap k gk
nnoremap j gj

"vim's native search is annoying, often miss click it
map <C-c> <Nop>

" run program
"autocmd Filetype c execute "map <silent> <C-c> :w <CR> :VimuxPromptCommand <CR> cd " . expand("%:p:h") ." && gcc " . file ." -o " . exe ." && " . exe ." <CR>"
"autocmd Filetype python execute "nmap <silent> <C-c>> :w <CR> :VimuxPromptCommand <CR> python " . file ."<CR>"
autocmd Filetype cpp execute "nmap <C-c> :!g++ ".@%." -o ".expand("%:p:r")."<CR>"
"expand("%:p:r")

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

"findr.vim
nmap <silent> <leader>f :Findr<CR>

"exit terminal mode
tnoremap <C-\> <C-\><C-n>
