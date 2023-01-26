export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export LANG="en_US.UTF-8"

ZDOTDIR=$XDG_CONFIG_HOME/zsh
skip_global_compinit=1

# import env
() {
  local USER_PATH=(
    $HOME/.local/bin
    $HOME/.cargo/bin
    $(go env GOPATH)/bin
  )

  if [[ ! $PATH =~ $USER_PATH ]]; then
    export PATH=$(IFS=':'; echo "${USER_PATH[*]}"):$PATH
  fi
}