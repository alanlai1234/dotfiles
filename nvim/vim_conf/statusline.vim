set laststatus=2

" color presets
hi err guifg=#e85635 guibg=#535961
hi warn guifg=#d17a32 guibg=#535961
hi good guifg=#8acf72 guibg=#535961
hi roundtrans guifg=#fab152 guibg=#535961
hi round2fg guifg=#fab152
hi ModeColor guibg=#fab152 guifg=#0b2026
augroup VisualEvent
  autocmd!
  autocmd ModeChanged *:i* hi ModeColor guibg=#6ffc90|hi roundtrans guifg=#6ffc90|hi round2fg guifg=#6ffc90
  autocmd ModeChanged *:c* hi ModeColor guibg=#53f7fc|hi roundtrans guifg=#53f7fc|hi round2fg guifg=#53f7fc
  autocmd ModeChanged *:v* hi ModeColor guibg=#f2acfa|hi roundtrans guifg=#f2acfa|hi round2fg guifg=#f2acfa
  autocmd ModeChanged *:V* hi ModeColor guibg=#659666 guifg=#d3dbd6|hi roundtrans guifg=#659666|hi round2fg guifg=#659666
  autocmd ModeChanged *:* hi ModeColor guibg=#0d4f6b guifg=#d3dbd6|hi roundtrans guifg=#0d4f6b|hi round2fg guifg=#0d4f6b
  autocmd Modechanged v*:*,c*:*,i*:*,V*:*,:* hi ModeColor guibg=#fab152 guifg=#0b2026|hi roundtrans guifg=#fab152|hi round2fg guifg=#fab152
augroup END

" function
"   Modification mark
function! SetModifiedSymbol(modified)
    if a:modified == 1
        hi modify guifg=#cf6848
	  return ' '
    endif
    return ' '
endfunction

"diagnostic
function! Error() abort
	let cnt=luaeval("#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.ERROR})")
	if(cnt>0)
		return ' ' . cnt
	else
		return ''
	endif
endfunction

function! Warning() abort
	let cnt=luaeval("#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.WARN})")
	if(cnt>0)
		return ' ' . cnt
	else
		return ''
	endif
endfunction

function! Good() abort
	let cnt=luaeval("#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.ERROR})")+luaeval("#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.WARN})")
	if(cnt==0)
		return ''
	else
		return ''
	endif
endfunction

" start
set statusline=
set statusline+=%#Normal#
set statusline+=\ \ 

"modes
let vb = "\<C-v>"
set statusline+=%#round2fg#
set statusline+=%#ModeColor#
set statusline+=%{mode()}
set statusline+=%#roundtrans#

"set statusline+=%#Normal#

" filename
"set statusline+=%#roundfg#
set statusline+=%#icon#\ %{WebDevIconsGetFileTypeSymbol()}\ 
set statusline+=%#global#
set statusline+=%t\ %#modify#%{SetModifiedSymbol(&modified)}
set statusline+=%r
set statusline+=%#roundfg#

"right
" diagnostic
set statusline+=%=

set statusline+=%#round2fg#
set statusline+=%#ModeColor#%l
set statusline+=/ 
set statusline+=%L
set statusline+=%#roundtrans#\ 

set statusline+=%#global#
set statusline+=%#good#%{Good()}%#err#%{Error()}\ %#warn#%{Warning()}
set statusline+=%#roundfg#\ \ 
