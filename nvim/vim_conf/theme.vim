"color theme
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 256
if (has("autocmd"))
  augroup colorextend
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight("Normal", { "bg": { "gui": "#1e2127" } })
	"autocmd ColorScheme * call onedark#extend_highlight("Pmenu", { "bg": { "gui": "#21252B" } } )
	"autocmd ColorScheme * call onedark#extend_highlight("PmenuSel", { "bg": { "gui": "#767F98" } } )
	autocmd ColorScheme * call onedark#extend_highlight("CursorLineNr", { "bg": { "gui": "#2D323B" }, "gui": "bold" } )
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

" lightline and bufferline
set showtabline=2
let g:lightline = {
	  \ 'colorscheme': 'onedark',
	  \ 'tabline': {
	  \   'left': [ ['buffers'] ],
	  \   'right': [ ['close'] ]
	  \ },
	  \ 'enable': {
	  \   'statusline': 1,
	  \   'tabline':1
	  \	},
	  \ 'active': {
	  \ 	'left': [ [ 'paste',  'coc_errors', 'coc_warnings', 'coc_ok' ], [ 'readonly', 'filename', 'modified' ] ],
	  \ 	'right': [['lineinfo'], ['percent'], ['filetype']]
	  \ },
	  \ 'separator': {'left': '', 'right': ''},
	  \ 'subseparator': {'left': '\uE0B5', 'right': '\uE0B7'},
	  \ }

call lightline#coc#register()

" vimwiki syntax highlights
hi VimwikiLink guifg=#98D4F2 gui=underline
hi VimwikiHeader2 guifg=orange 
hi VimwikiBoldItalic guifg=#8982C9

"buftabline setting
let g:buftabline_indicators = 1
let g:buftabline_separators = 1
