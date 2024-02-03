export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export TERM=${TERM:-xterm-256color}
export LANG=${LANG:-"en_US.UTF-8"}

command -v nvim >/dev/null && export EDITOR=nvim || export EDITOR=vim

ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ENVFILEPATH=$ZDOTDIR/env

skip_global_compinit=1

# starship
export STARSHIP_CONFIG=$ZDOTDIR/starship.toml

# ssh
export SSH_PROXY=127.0.0.1:1081

# go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io,direct

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
nvml() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}
