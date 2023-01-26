add_path() {
  for env in "$@"; do
    export PATH=$(IFS=':'; echo "${env[*]}"):$PATH
  done
}

add_path $HOME/.local/bin

for env in $ZDOTDIR/env/*.zsh; do
  source $env
done