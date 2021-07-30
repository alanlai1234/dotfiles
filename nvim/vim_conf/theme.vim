"color theme
"let g:onedark_hide_endofbuffer = 1
"let g:onedark_termcolors = 256
"if (has("autocmd"))
  "augroup colorextend
	"autocmd!
	"autocmd ColorScheme * call onedark#extend_highlight("Normal", { "bg": { "gui": "#1e2127" } })
	""autocmd ColorScheme * call onedark#extend_highlight("Pmenu", { "bg": { "gui": "#21252B" } } )
	"autocmd ColorScheme * call onedark#extend_highlight("PmenuSel", { "bg": { "gui": "#767F98" } } )
  "augroup END
"endif

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

set background=dark

" vimwiki syntax highlights
hi VimwikiLink guifg=#98D4F2 gui=underline
hi VimwikiHeader2 guifg=orange 
hi VimwikiBoldItalic guifg=#8982C9
hi normal guibg=white
"hi PmenuSel guibg=#747a8c guifg=#c8cdde
"hi TabLineSel guibg=#2c2e34 guifg=#c8cdde
"hi SignColumn ctermfg=250 ctermbg=236 guifg=#e2e2e3 guibg=#2c2e34

if &background=="dark"
	colorscheme sonokai
	"let g:vim_monokai_tasty_italic = 1
	"statusline presets
	let stbg = '#40444a'
	exe 'hi roundfg guifg=' . stbg
	exe 'hi global guibg=' . stbg . ' guifg=#c7c4ad'
	exe 'hi icon guibg=' . stbg . ' guifg=LightBlue'
	exe 'hi modify guibg=' . stbg . ' guifg=#cf6848'

	"other
	hi PmenuSel guibg=#747a8c guifg=#c8cdde
	hi TabLineSel guibg=#2c2e34 guifg=white
	hi SignColumn ctermfg=250 ctermbg=236 guifg=#e2e2e3 guibg=#2c2e34
	hi TabLineFill guifg=#c8cdde

else
	colorscheme solarized8_high

	"statusline presets
	let stbg = '#eedfbb'
	exe 'hi roundfg guifg=' . stbg
	exe 'hi global guibg=' . stbg . ' guifg=dark'
	exe 'hi icon guibg=' . stbg . ' guifg=#65a895'
	exe 'hi modify guibg=' . stbg . ' guifg=#cf6848'

	"other
	hi PmenuSel guibg=#e8dcb6 guifg=black
	hi LineNr guibg=#FDF6E3
	hi TabLineSel guifg=#e8dcb6 guibg=black
	hi SignColumn ctermfg=250 ctermbg=236 guifg=#e2e2e3 guibg=#FDF6E3
	highlight VertSplit guibg=NONE guifg=230
	hi TabLineFill guifg=#FDF6E3 guibg=grey

endif

hi HighlightedyankRegion guibg=#50b3af
