alias ..='cd ..'

alias la='ls -al'

alias rmd='rm -rf'

alias gitlog='git log --oneline'

alias gitaddcommit='git add -A ; git commit '

export TERM=xterm-256color

export VISUAL=nvim;

export EDITOR=nvim;

alias vimrc='vim ~/.config/nvim/vim_conf/$(ls ~/.config/nvim/vim_conf | fzf)'

alias tmuxa='tmux a -t'

alias tmuxd='tmux detach'

alias pacs='sudo pacman -S'
alias pacr='sudo pacman -R'
alias pacq='pacman -Q | grep'

alias night='~/.toggle-warm.sh'

alias vim='nvim'

# fzf settings
export FZF_DEFAULT_OPTS="--color=dark --color=fg:7,bg:-1,hl:1,fg+:12,bg+:-1,hl+:1 --color=info:43,prompt:6,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4 --height 50%"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
