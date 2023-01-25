# alias
command_check() {
	command -v $1 &>/dev/null
}

command_check exa && alias ls='exa -bh'
command_check bat && alias cat='bat --plain'

alias rm='rm -i'
alias la='ls -la'  lt='ls --tree'  ll='ls -l'  l='ls'
alias cp='cp -v'   mv='mv -v'

# functions
proxy() {
  if [[ "$1" != "" ]]; then
    local proxy_addr="$1"
  fi
  export {http,https}_proxy="${proxy_addr:-http://localhost:"${proxy_port:-7890}"}"
  echo "proxy on: $http_proxy"
}

unproxy() {
  unset {http,https}_proxy
  echo "proxy off"
}

is_proxy() {
  if [[ "$http_proxy" == "" || "$https_proxy" == "" ]]; then
    return 1
  fi
}

ap() {
  case $1 in
    status | s)
      if is_proxy; then
        echo "status: on, proxy address $http_proxy"
      else
        echo "status: off"
      fi
      ;; 

    on)
      proxy "$2"
      ;;

    off)
      unproxy
      ;;

    "")
      is_proxy && unproxy || proxy
      ;;

    *)
      echo "error: unknown arguments"
      ;;
  esac
}
