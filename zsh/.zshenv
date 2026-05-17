export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export TERM=${TERM:-xterm-256color}
export LANG=${LANG:-"en_US.UTF-8"}

command -v nvim >/dev/null && export EDITOR=nvim || export EDITOR=vim

# zsh
ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ENVFILEPATH=$ZDOTDIR/env
skip_global_compinit=1

# ap
proxy_port=7890
proxy_addr=http://192.168.123.2:$proxy_port

# ssh
# export SSH_PROXY=$proxy_addr

# go
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export GOPROXY=https://goproxy.cn,direct

# mise
export PATH="$HOME/.local/share/mise/shims:$PATH"

# secrets
[ -f "$ZDOTDIR/secrets" ] && source "$ZDOTDIR/secrets"

# podcast
export TTS_BACKEND="edge"
