# 每次回到 prompt 前 pop 掉 Ghostty/kitty keyboard protocol flags
# 防止 TUI 程序漏关协议导致 ctrl+w 等按键乱码或失效
function _ghostty_pop_kbd() { print -n '\e[<u' }
precmd_functions+=(_ghostty_pop_kbd)

# zsh 命令行提示符 % 问题
PROMPT_EOL_MARK=''

source $ZDOTDIR/oh-my-zsh.zsh
eval "$(~/.local/bin/mise activate zsh)"
eval "$(bun completions 2>/dev/null)"
source $ZDOTDIR/alias.zsh

FPATH=$XDG_CONFIG_HOME/zsh/functions:$FPATH
autoload -Uz $XDG_CONFIG_HOME/zsh/functions/*(:t)

pathctl load $ZDOTDIR/.env 2>/dev/null
