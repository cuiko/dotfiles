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
# proxy_port=7890

# starship
export STARSHIP_CONFIG=$ZDOTDIR/starship.toml

# ssh
export SSH_PROXY=127.0.0.1:1081

# go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io,direct

# n
# export N_PREFIX=$HOME/.n
# export NODE_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/

# wezterm
if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
  WEZTERM_SHELL_SKIP_SEMANTIC_ZONES="1"
  WEZTERM_SHELL_SKIP_CWD="1"
  source $ZDOTDIR/wezterm.sh
fi

# openai
export OPENAI_API_KEY="sk-xxxxxxxxxxxxxxxxxxxxxxxxxxx"
export OPENAI_API_ENDPOINT="https://api.openai.com/v1/chat/completions"
