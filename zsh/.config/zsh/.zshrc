# zsh 命令行提示符 % 问题
PROMPT_EOL_MARK=''

source $ZDOTDIR/oh-my-zsh.zsh
source $ZDOTDIR/alias.zsh

FPATH=$XDG_CONFIG_HOME/zsh/functions:$FPATH
autoload -Uz $XDG_CONFIG_HOME/zsh/functions/*(:t)

pathctl load $ZDOTDIR/.env 2>/dev/null
pathctl load
