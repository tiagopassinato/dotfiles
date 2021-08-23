export ZSH="/Users/tiagopassinato/.oh-my-zsh"
export TERM="xterm-256color"
ZSH_THEME="fwalch"
plugins=(
  git
  node
  npm
  docker
  jsontools
  docker-compose
  zsh-syntax-highlighting
  zsh-autosuggestions
  autojump
  kubectl
)
source $ZSH/oh-my-zsh.sh
source ~/.aliases
export NODE_ENV=local_development
export DEFAULT_USER=`whoami`
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export PATH=$PATH:~/Library/Python/2.7/bin/
export ANDROID_HOME=
# zplug loads
zplug "akarzim/zsh-docker-aliases"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export PATH="/Users/tiagopassinato/.oh-my-zsh/git-fuzzy/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source /Users/tiagopassinato/.config/broot/launcher/bash/br
