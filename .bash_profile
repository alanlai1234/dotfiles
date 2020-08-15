alias fnd='fd -d 1 -H'

alias home='clear'

alias ..='cd ..'

alias ls='exa'

alias bindings="python3 ~/.auto_show_bindings.py"

alias cur="echo $$"

alias la='exa -aghl --git'

alias rmd='rm -rf'

alias gitlog='git log --oneline'

alias gitaddcommit='git add -A ; git commit '

alias python='python3'

export PATH=${PATH}:/usr/local/opt/llvm/bin/

export TERM=xterm-256color

export VISUAL=nvim;

export EDITOR=nvim;

alias vimrc='vim ~/.config/nvim/vim_conf/$(ls ~/.config/nvim/vim_conf | fzf)'

alias tmuxa='tmux a -t'

alias top='gotop'

alias tmuxkill='tmux kill-session'

alias tmuxnew='tmux new-session'

alias vim='nvim'

set -o vi

# fzf settings
export FZF_DEFAULT_OPTS="--color=dark --color=fg:7,bg:-1,hl:1,fg+:#FFFFFF,bg+:-1,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4"
export FZF_DEFAULT_COMMAND="fd -d 1 -H"
_fzf_compgen_dir() {
  fd -d 1 -H 
}
_fzf_complete_cd(){
  _fzf_complete --multi --reverse --prompt="cd" -- "$@" < <(
	fd -d 1 -H -t d
  )
}

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/sophieyou/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
    # \eval "$__conda_setup"
# else
    # if [ -f "/Users/sophieyou/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        # . "/Users/sophieyou/opt/anaconda3/etc/profile.d/conda.sh"
        # CONDA_CHANGEPS1=false conda activate base
    # else
        # \export PATH="/Users/sophieyou/opt/anaconda3/bin:$PATH"
    # fi
# fi
# unset __conda_setup
# <<< conda init <<<
