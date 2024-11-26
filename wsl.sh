# ZSH
echo "INSTALLING ZSH…"
sudo apt install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo apt-get install fzf
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# tmux 
echo "TMUX tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# nvim
echo "NVIM…" 
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt-get install neovim
sudo apt install make gcc ripgrep unzip git xclip neovim
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# nvm
echo "Node NVM…"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Create .aliases
echo "Creating .aliases"
cat <<EOL > ~/.aliases
alias vim=nvim
alias j=z
alias pbcopy=clip.exe
alias pbpaste="powershell.exe Get-Clipboard"
EOL

# Adjust zshrc
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf

source ~/.zshrc
