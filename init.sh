#!/bin/bash -e

# This script sets up the basics for a development environment on a new computer.

echo "😃 Hello there, Matthew! Let’s get to work!"
echo
echo "First I need sudo privileges."

sudo -v

###

echo
echo "👉 Clearing out your Dock and emptying ~/Downloads."

defaults write com.apple.dock persistent-apps -array ""
killall Dock
cd ~/Downloads
rm -rf About\ Downloads.lpdf

echo
echo "👉 Setting up ~/Sites folder structure."

mkdir ~/Sites
cd ~/Sites
mkdir matthewmcvickar work sandbox

###

###

echo
echo "👉 Installing Homebrew."

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
# sudo chown -R `whoami` /usr/local/include

###

echo
echo "👉 Installing Git, Node, and Z."

brew install git node z

###

echo
echo "👉 Configuring Git."

git config --global user.email "matthew@matthewmcvickar.com"
git config --global user.name "Matthew McVickar"

###

echo
echo "👉 Installing Homebrew Cask and desktop apps: Alfred, Caffeine, Divvy, Harvest, 1 Password, TextExpander, Google Chrome, iTerm, Sequel Pro, and Sublime Text."

brew install caskroom/cask/brew-cask
brew cask install alfred
brew cask install caffeine
brew cask install divvy
brew cask install harvest
brew cask install onepassword
brew cask install textexpander
brew cask install google-chrome
brew cask install iterm2
brew cask install sublime-text

###

echo
echo "👉 Linking Homebrew Cask to Alfred."

brew cask alfred link

###

echo
echo "👉 Installing Sublime Text command line tool."

ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

###

echo
echo "👉 Giving you ownership of /usr/local so you don’t have to sudo NPM commands."

sudo chown -R `whoami` ~/.npm
sudo chown -R `whoami` /usr/local/lib/node_modules

###

echo
echo "👉 Installing Grunt, Bower, Node libsass, and SASS Gem."

npm install -g grunt-cli
npm install -g bower
npm install -g node-sass
sudo gem install sass

###

echo "🎉 You’re all done!"
echo
echo "Follow the rest of the instructions at github.com/matthewmcvickar/setup."
