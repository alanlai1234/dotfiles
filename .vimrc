" themes
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

" vimwiki syntax highlights
hi VimwikiLink guifg=#98D4F2 gui=underline
hi VimwikiHeader2 guifg=orange 
hi VimwikiBoldItalic guifg=#8982C9
