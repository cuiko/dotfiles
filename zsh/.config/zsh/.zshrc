source $ZDOTDIR/alias.zsh

for env in $ZDOTDIR/env/*.zsh; do
  source $env
done