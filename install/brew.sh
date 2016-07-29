#!/bin/sh
# give me what I need, brew!

# development tools
brew install git
brew install vim --with-lua
brew install zsh

# get cask versions also
brew tap caskroom/versions

# apps
brew cask install 1password
brew cask install appcleaner
brew cask install carbon-copy-cloner
brew cask install daisydisk
brew cask install dropbox
brew cask install flux
brew cask install google-chrome
brew cask install handbrake
brew cask install istat-menus
brew cask install iterm2
brew cask install karabiner
brew cask install selfcontrol
brew cask install skype
brew cask install spectacle
brew cask install things
brew cask install transmission
brew cask install vlc

echo ""
echo "Install Extra Dev Stuff? (y/n)"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$  ]]; then
    # cli tools
    brew install ack
    brew install tree
    brew install wget

    # development server setup
    brew install nginx
    brew install dnsmasq

    # development tools
    brew install hub
    brew install reattach-to-user-namespace
    brew install tmux
    brew install highlight
    brew install nvm
    brew install z
    brew install chruby
    brew install ruby-install

    # dev casks
    brew cask install atom
    brew cask install brackets
    brew cask install dash
    brew cask install duet
    brew cask install firefox
    brew cask install opera
    brew cask install screenhero
    brew cask install visual-studio-code-insiders
fi
