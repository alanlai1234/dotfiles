set laststatus=2

" color presets
"hi roundnormal guifg=#db9b32
"hi roundinsert guifg=lightgreen
"hi roundreplace guifg=#32abdb
"hi roundvisual guifg=#a78acf
hi NormalColor guifg=#db9b32 
hi InsertColor guifg=lightgreen 
hi ReplaceColor guifg=#32abdb 
hi VisualColor guifg=#a78acf 
hi CommandColor guifg=#88b9c2
hi global guifg=#d3c7a0
hi icon guifg=white
hi modify guibg=none
hi diag guibg=none
hi stbg guibg=#3e4357

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
function! CocDiagnostic() abort
  if (winwidth(0) < 40)
    return ''
  endif
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif 
  " if empty(info) | return '' | endif 
  let msgs = []
  if get(info, 'error', 0)
    hi diag guifg=#e85635
    call add(msgs, ' ' . info['error'])
  elseif get(info, 'warning', 0)
    hi diag guifg=#d17a32
    call add(msgs, ' ' . info['warning'])
  else
    hi diag guifg=#8acf72
  endif

  return join(msgs, ' ') == '' ? ' ' : join(msgs, ' ')
endfunction

" start
set statusline=
set statusline+=%#Normal#
set statusline+=\ \ 

"modes
"set statusline+=%#roundnormal#%{(mode()=='n')?'':''}
"set statusline+=%#roundinsert#%{(mode()=='i')?'':''}
"set statusline+=%#roundreplace#%{(mode()=='R')?'':''}
"set statusline+=%#roundvisual#%{(mode()=='v')?'':''}

set statusline+=%#NormalColor#%{(mode()=='n')?'\ <N>':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ <I>':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ <R>':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ <V>':''}
set statusline+=%#CommandColor#%{(mode()=='c')?'\ <C>':''}

"set statusline+=%#roundnormal#%{(mode()=='n')?'':''}
"set statusline+=%#roundinsert#%{(mode()=='i')?'':''}
"set statusline+=%#roundreplace#%{(mode()=='R')?'':''}
"set statusline+=%#roundvisual#%{(mode()=='v')?'':''}

set statusline+=%#Normal#

" filename
set statusline+=\ \ \ 
set statusline+=%#icon#%{WebDevIconsGetFileTypeSymbol()}\ \ 
set statusline+=%#global#
set statusline+=%t\ %#modify#%{SetModifiedSymbol(&modified)}

"right
set statusline+=%=%#diag#%{CocDiagnostic()}\ \ 
set statusline+=%#global#%l
set statusline+=/ 
set statusline+=%L\ \ 
