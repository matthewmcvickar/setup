#!/bin/bash -e

# This script sets up the basics for a development environment on a new computer.

echo "😃 Hello there, Matthew! Let’s get to work!"
echo " "
echo "First I need sudo privileges."

sudo -v

###

echo " "
echo "👉 Clearing out your Dock and emptying ~/Downloads."

defaults write com.apple.dock persistent-apps -array ""
killall Dock
cd ~/Downloads
rm -rf About\ Downloads.lpdf

###

echo " "
echo "👉 Installing Homebrew."

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

###

echo " "
echo "👉 Setting up ~/Sites folder structure."

mkdir ~/Sites
cd ~/Sites
mkdir matthewmcvickar work sandbox

###

echo " "
echo "👉 Installing and configuring Git."

brew install git
git config --global user.email "matthew@matthewmcvickar.com"
git config --global user.name "Matthew McVickar"

###

echo " "
echo "👉 Creating a new SSH key."

# Generate key.
echo -e "\n" | ssh-keygen -t rsa -N "" -C "matthew@matthewmcvickar.com" && eval "$(ssh-agent -s)"

# Add key to ssh-agent.
ssh-add ~/.ssh/id_rsa

# Copy to Clipboard for adding to Github.
pbcopy < ~/.ssh/id_rsa.pub

echo "You’ve created a new SSH key. We’ll redirect to GitHub now. Press the \
‘Add’ button, paste the key from your clipboard, submit, and come back here."

# Go to GitHub in the browser.
confirm "Ready to go to GitHub?" && open "https://github.com/settings/ssh"

# Test it.
confirm "All set?" && echo "Testing GitHub connectivity now."
ssh -T git@github.com && echo "\n\n👍 Great! Let’s move on."

###

echo " "
echo "👉 Fetching dotfiles and configuring Bash profile."

cd ~/Sites/matthewmcvickar
git clone https://github.com/matthewmcvickar/dotfiles.git
cd dotfiles
bash ~/Sites/matthewmcvickar/dotfiles/build_dotfiles.sh --force

echo " "
echo "👉 Reloading shell."

source ~/.bash_profile

###

echo " "
echo "👉 Installing command-line apps with Homebrew."

brew bundle Brewfile

###

echo " "
echo "👉 Installing OS X desktops apps with Homebrew Cask."

brew bundle Caskfile

###

echo " "
echo "👉 Linking Homebrew Cask to Alfred."

brew cask alfred link

###

echo " "
echo "👉 Configuring Sublime Text."

git clone git@github.com:matthewmcvickar/sublime-text-preferences.git
cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
rm -r User
ln -s ~/Sites/matthewmcvickar/sublime-text-preferences/ User

# Fix SASS highlighting in Sublime Text. Remove SASS from the array of file
# types in the Ruby HAML language configuration file.
sed -i '' '/<string>sass<\/string>/d' ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Rails/Ruby\ Haml.tmLanguage

###

echo " "
echo "👉 Installing Sublime Text command line tool (subl)."

ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

###

echo " "
echo "👉 Giving you ownership of `/usr/local` so you don’t have to `sudo` NPM commands."

sudo chown -R `whoami` ~/.npm
sudo chown -R `whoami` /usr/local/lib/node_modules

###

echo " "
echo "👉 Installing Grunt and Bower."

npm install -g grunt-cli
npm install -g bower

###

echo " "
echo "👉 Installing SASS Gem and libsass for Node."

gem install sass
npm install -g node-sass

###

echo "👉 Setting OS X defaults. This will require restart."

cd ~/Sites/matthewmcvickar/dotfiles/
bash ./.osx

echo "🎉 You’re all done!"
echo " "
echo "Now restart your computer and follow the rest of the instructions at \
https://github.com/matthewmcvickar/setup."
