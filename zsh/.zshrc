export PATH=$HOME/bin:$HOME/.local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

#tty has messed up font otherwise
if [ "$TERM" = "linux" ]; then
    ZSH_THEME="robbyrussell"
else
    ZSH_THEME="agnoster"
fi

plugins=(
  ssh-agent
  git
  vi-mode
)

zstyle :omz:plugins:ssh-agent lazy yes
zstyle :omz:plugins:ssh-agent lifetime 4h
zstyle :omz:plugins:ssh-agent quiet yes

source $ZSH/oh-my-zsh.sh

alias wtfip='curl https://wtfismyip.com/json'

export LANG=en_US.UTF-8
export EDITOR='vim'
