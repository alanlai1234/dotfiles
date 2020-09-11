set laststatus=2

" color presets
hi roundnormal guifg=#db9b32
hi roundinsert guifg=lightgreen
hi roundreplace guifg=#32abdb
hi roundvisual guifg=#a78acf
hi NormalColor guifg=Black guibg=#db9b32 
hi InsertColor guifg=Black guibg=lightgreen 
hi ReplaceColor guifg=Black guibg=#32abdb 
hi VisualColor guifg=Black guibg=#a78acf 

" function

" start
set statusline=%{RedrawColors(mode())}
set statusline=
set statusline+=%#Normal#
set statusline+=\ 
set statusline+=\ 

"modes
set statusline+=%#roundnormal#%{(mode()=='n')?'':''}
set statusline+=%#roundinsert#%{(mode()=='i')?'':''}
set statusline+=%#roundreplace#%{(mode()=='R')?'':''}
set statusline+=%#roundvisual#%{(mode()=='v')?'':''}

set statusline+=%#NormalColor#%{(mode()=='n')?'\ NORMAL':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ INSERT':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ REPLACE':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ VISUAL':''}

set statusline+=%#roundnormal#%{(mode()=='n')?'':''}
set statusline+=%#roundinsert#%{(mode()=='i')?'':''}
set statusline+=%#roundreplace#%{(mode()=='R')?'':''}
set statusline+=%#roundvisual#%{(mode()=='v')?'':''}

" filename
set statusline+=\ \ 


set statusline+=%#Normal#
