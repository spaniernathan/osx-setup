#! /usr/bin/sh

# Enable developement on macOS
xcode-select --install

# Install Homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ZSH
brew install zsh

# Set default shell
chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Update brew
brew update

# Cask
brew cask install iterm2
brew cask install alfred
brew cask install spectacle
brew cask install bitwarden
brew cask install keybase
brew cask install bloomrpc
brew cask install jetbrains-toolbox
brew cask install docker
brew cask install virtualbox
brew cask install microsoft-teams
brew cask install microsoft-outlook
brew cask install postman
brew cask install code
brew cask install google-chrome

# Formulae
brew install git
brew install cmake
brew install docker-machine
brew install docker
brew install docker-compose
brew install lazydocker
brew install go
brew install protoc-gen-go

# Install vscode extensions
cat vscode-extensions | while IFS= read -r line || [[ -n "$line" ]]; do
    code --install-extension $line
done

