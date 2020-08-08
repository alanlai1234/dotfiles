set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source $HOME/.config/nvim/vim_conf/settings.vim
source $HOME/.config/nvim/vim_conf/mappings.vim
source $HOME/.config/nvim/vim_conf/plugins.vim
source $HOME/.config/nvim/vim_conf/theme.vim
"source $HOME/.config/nvim/vim_conf/statusline.vim
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
