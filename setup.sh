#! bin/sh

# Install ZSH
brew install zsh

# Set default shell
chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Cask
brew install iterm2
brew install alfred
brew install spectacle
brew install bitwarden
brew install keybase
brew install jetbrains-toolbox
brew install virtualbox
brew install postman
brew install google-chrome
brew install nvm
brew install docker-machine
brew install go
brew install zoom
brew install slack
brew install meeter
brew install figma
brew install gnupg

cp dotfiles/.* $HOME/

source $HOME/.zshrc
