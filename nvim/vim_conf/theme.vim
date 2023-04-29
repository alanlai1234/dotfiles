if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

set background=dark

" vimwiki syntax highlights
hi VimwikiLink guifg=#98D4F2 gui=underline
hi VimwikiHeader2 guifg=orange 
hi VimwikiBoldItalic guifg=#8982C9

"hi normal guibg=white
"hi PmenuSel guibg=#747a8c guifg=#c8cdde
"hi TabLineSel guibg=#2c2e34 guifg=#c8cdde
"hi SignColumn ctermfg=250 ctermbg=236 guifg=#e2e2e3 guibg=#2c2e34

if &background=="dark"
	colorscheme sonokai
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

	"coc.nvim custom popup menu color
	"hi CocMenuSel guibg=#747a8c 

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
