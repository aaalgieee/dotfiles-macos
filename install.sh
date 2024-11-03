#!/bin/bash

# Install Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Ensure Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update



# Install essential packages
echo "Installing essential packages..."
brew install -q wget
brew install -q fish
brew install -q git
brew install -q node
brew install -q gh
brew install -q cocoapods
brew install -q asitop
brew install -q neofetch
brew install -q python@3.12

# Install applications
echo "Installing applications..."
brew install --cask -q google-chrome
brew install --cask -q visual-studio-code
brew install --cask -q rectangle
brew install --cask -q iina
brew install --cask -q alt-tab
brew install --cask -q cursor
brew install --cask -q flutter
brew install --cask -q dbeaver-community


# Set up Git
echo "Setting up Git..."
git config --global user.name "Al Gabriel"
git config --global user.email "jaworski.orig@gmail.com"


# Set Fish as the default shell
echo "Setting Fish as the default shell..."
chsh -s $(which fish)

echo "Installation complete!"