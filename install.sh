
#! /usr/bin/sh

# Enable developement on macOS
xcode-select --install

# Install Homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Git
brew install git

# Clone repo and start install script
git clone git@github.com:spaniernathan/osx-setup.git
chmod +x osx-setup/setup.sh && ./osx-setup/setup.sh
