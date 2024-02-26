# zsh 命令行提示符 % 问题
PROMPT_EOL_MARK=''

source $ZDOTDIR/oh-my-zsh.zsh
source $ZDOTDIR/alias.zsh

# wezterm
if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
  WEZTERM_SHELL_SKIP_SEMANTIC_ZONES="1"
  WEZTERM_SHELL_SKIP_CWD="1"
  source $ZDOTDIR/wezterm.sh
fi

FPATH=$XDG_CONFIG_HOME/zsh/functions:$FPATH
autoload -Uz $XDG_CONFIG_HOME/zsh/functions/*(:t)

pathctl load $ZDOTDIR/.env 2>/dev/null
pathctl load
