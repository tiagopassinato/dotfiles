export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# lazy load nvm
zstyle ':omz:plugins:nvm' lazy yes

plugins=(git docker-compose zsh-autosuggestions zsh-syntax-highlighting fzf nvm)

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"
export NVM_DIR="$HOME/.nvm"
source ~/.aliases 
#source ~/.aliases-wsl
