export PATH=$HOME/bin:$HOME/.local/bin:$PATH

unset SSH_AGENT_PID
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

export ZSH="$HOME/.config/oh-my-zsh"

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

zstyle ':omz:update' mode auto
zstyle ':omz:update' verbose minimal

source $ZSH/oh-my-zsh.sh

alias wtfip='curl https://wtfismyip.com/json'

export LANG=en_US.UTF-8
export EDITOR='vim'
export BROWSER='firefox'

if [ -d "$HOME/miniconda3" ]; then
  __conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
          . "$HOME/miniconda3/etc/profile.d/conda.sh"
      else
          export PATH="$HOME/miniconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
fi
