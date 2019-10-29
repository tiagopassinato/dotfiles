export ZSH="/Users/tiagopassinato/.oh-my-zsh"
export TERM="xterm-256color"
ZSH_THEME="fwalch"
plugins=(
  git
  node
  npm
  docker
  jsontools
  zsh-syntax-highlighting
  zsh-autosuggestions
  autojump
  kubectl
)
source $ZSH/oh-my-zsh.sh
alias ~/.aliases
export NODE_ENV=local_development
export DEFAULT_USER=`whoami`
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

