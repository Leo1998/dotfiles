export PATH=$HOME/bin:$HOME/.local/bin:$PATH

unset SSH_AGENT_PID
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

export ZSH="$HOME/.oh-my-zsh"

#tty has messed up font otherwise
if [ "$TERM" = "linux" ]; then
    ZSH_THEME="robbyrussell"
else
    ZSH_THEME="agnoster"
fi

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

alias wtfip='curl https://wtfismyip.com/json'

export LANG=en_US.UTF-8
export EDITOR='vim'
