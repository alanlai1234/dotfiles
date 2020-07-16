alias ll='ls -lh'

alias home='clear && cat ~/.startup_art.txt'

alias cd1='cd ..'

alias cd2="cd ../.."

alias cd3="cd ../../.."

alias cd4="cd ../../../.."

alias cd5="cd ../../../../.."

alias bindings="python3 ~/.auto_show_bindings.py"

alias current="echo $$"

alias la='ls -al'

alias rmd='rm -rf'

alias gitlog='git log --oneline'

alias gitaddcommit='git add -A ; git commit '

alias python='python3'

export PATH=${PATH}:/usr/local/opt/llvm/bin/

export TERM=xterm-256color

export VISUAL=vim;

export EDITOR=vim;

alias tmuxa='tmux a -t'

alias top='htop'

alias tmuxkill='tmux kill-session'

alias tmuxnew='tmux new-session'

alias vim='nvim'

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

set -o vi

# pfetch settings
PF_INFO="ascii title os host uptime memory shell editor"
EDITOR="neovim"
SHELL="zsh"

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
pfetch
