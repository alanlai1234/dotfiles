set laststatus=2

" color presets
hi NormalColor guifg=#db9b32
hi InsertColor guifg=#79b389 
hi ReplaceColor guifg=#32abdb 
hi VisualColor guifg=#a78acf 
hi CommandColor guifg=#88b9c2
hi LineColor guifg=#659666
hi err guifg=#e85635
hi warn guifg=#d17a32
hi good guifg=#8acf72

" function
"   Modification mark
function! SetModifiedSymbol(modified)
    if a:modified == 1
        hi modify guifg=#cf6848
	  return ' '
    endif
    return ' '
endfunction

"  coc lint information
function! Error() abort
  if (winwidth(0) < 40)
    return ''
  endif
  let info = get(b:, 'coc_diagnostic_info', {})
  let msgs = []

  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'])
  endif

  if(join(msgs, ' ') == '' )
    return ''
  else
    return join(msgs, ' ')
  endif
endfunction

function! Warning() abort
  if (winwidth(0) < 40)
    return ''
  endif
  let info = get(b:, 'coc_diagnostic_info', {})
  let msgs = []

  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'])
  endif

  if(join(msgs, ' ') == '' )
    return ''
  else
    return join(msgs, ' ')
  endif
endfunction

function! Good() abort
  if (winwidth(0) < 40)
    return ''
  endif
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return ' ' | endif 
  let flag = 0

  if get(info, 'error', 0)
    let flag=1
  endif
  if get(info, 'warning', 0)
    let flag=1
  endif

  if(flag==0)
    return ' '
  else
    return ''
  endif
endfunction

" start
set statusline=
set statusline+=%#Normal#
set statusline+=\ \ 

"modes
set statusline+=%#NormalColor#%{(mode()=='n')?'\ <N>':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ <I>':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ <R>':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ <V>':''}
set statusline+=%#CommandColor#%{(mode()=='c')?'\ <C>':''}
set statusline+=%#LineColor#%{(mode()=='V')?'\ <V-L>':''}
set statusline+=%#CommandColor#%{(mode()=='\<C-v>')?'\ <V-B>':''}

set statusline+=%#Normal#

" filename
set statusline+=\ \ \ 
set statusline+=%#roundfg#
set statusline+=%#icon#\ %{WebDevIconsGetFileTypeSymbol()}\ \ 
set statusline+=%#global#
set statusline+=%t\ %#modify#%{SetModifiedSymbol(&modified)}
set statusline+=%#roundfg#

"right
" coc diagnostic
set statusline+=%=
set statusline+=%#good#%{Good()}%#err#%{Error()}\ %#warn#%{Warning()}\ \ 

set statusline+=%#roundfg#
set statusline+=%#global#%l
set statusline+=/ 
set statusline+=%L
set statusline+=%#roundfg#\ \ 
