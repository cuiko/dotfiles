command_check() {
	command -v $1 &>/dev/null
}

command_check exa && alias ls='exa -bh'
command_check eza && alias exa='eza'
command_check bat && alias cat='bat --plain'

alias rm='rm -i'
alias la='ls -la'  lt='ls --tree'  ll='ls -l'  l='ls'
alias cp='cp -v'   mv='mv -v'

alias python='python3'
alias pip='pip3'
