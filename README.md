# Setup

Get a laptop up and running.

This is currently an incomplete and messy work in progress.

---

## Quick-start Development Environment

### Create a User

1. Log into the machine as an administrator and make a new user in the *Users & Groups* preference panel:

    **Full Name:** Matthew McVickar  
    **Account Name:** (automatic, probably 'matthewmcvickar')  
    **Password:** ( ͡° ͜ʖ ͡°)  
    **Password Hint:** (none)

1. Log in as that user for the first time. Click through dialogs. OS X starts.


## Initial Downloads

1. Open Spotlight and launch AppleScript Editor. Open 'Setup.scpt' in the iCloud document list. Run the script. This downloads iTerm2, Sublime Text 2, NodeJS, and Chrome.

1. When they are finished downloading, re-run the script. This creates `~/Applications` and moves into it any already-compiled `.app`s.

1. Close the script; it's done with what it needed to do.

1. Open all the installers and complete them.

1. Delete everything in the ~/Downloads folder.

1. Open App Store. Sign in. Download Divvy, which should be loaded there already.


### Configure Desktop Apps

1. Open 1Password and tell it to sync via iCloud.

1. Open Alfred and tell it to sync to `~/Library/Mobile Documents/`.

1. Symlink TextExpander preferences to iCloud version:

    ```sh
    $ cd ~/Library/Application\ Support/TextExpander/
    $ rm Settings.textexpander
    $ ln -s ~/Library/Mobile\ Documents/Settings.textexpander
    ```

1. Start up TextExpander.

1. Symlink Divvy preferences to iCloud version:

    ```sh
    $ cd ~/Library/Preferences
    $ rm com.mizage.Divvy.plist
    $ ln -s ~/Library/Mobile\ Documents/com.mizage.Divvy.plist
    ```

1. Start up Divvy.


## Configure Development Environment

1. Open iTerm and tell it to sync to `~/Library/Mobile Documents/`.

1. [Import Sublime Text preferences.](https://github.com/matthewmcvickar/sublime-text-preferences)

1. Set up Sublime Text command line tool:
    
    ```sh
    $ ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
    ```  

1. Install Homebrew:

    ```sh
    $ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    ```

1. Install Git:

    ```sh
    $ brew install  git
    ```

1. Configure Git commands:

    ```sh
    $ git config --global user.email "[my email]"
    $ git config --global user.name "Matthew McVickar"
    ```
    
- [Generate a new SSH key and add it to GitHub.](https://help.github.com/articles/generating-ssh-keys)

- Grab my dotfiles and run them:

    ```sh
    $ git clone git@github.com:matthewmcvickar/dotfiles.git
    $ bash ~/Sites/matthewmcvickar/dotfiles/build_dotfiles.sh --force
    ```

- Run Homebrew installation:

    ```sh
    bash ~/Sites/matthewmcvickar/dotfiles/.brew
    ```

- Run OS X configuration:

    ```sh
    bash ~/Sites/matthewmcvickar/dotfiles/.osx
    ```

- Give myself ownership of `/usr/local` so that I don't have to `sudo` NPM commands:

    ```sh
    $ sudo chown -R `whoami` ~/.npm
    $ sudo chown -R `whoami` /usr/local/lib/node_modules
    ```

- Install Grunt:

    ```sh
    $ npm install -g grunt-cli
    ```
    
- Install Bower:
    
    ```sh
    $ npm install -g bower
    ```
    
- Install SASS:

    ```sh
    $ sudo gem install sass
    ```

- Install Ruby:

    ```sh
    $ rbenv install 1.9.3-p484
    $ rbenv global 1.9.3-p484 
    $ gem update --system
    ```


---


## Manual Setup

### Home Folder

Copy to new home folder:

  - Desktop
  - Documents
  - Downloads
  - Dropbox
  - Movies
  - Music
  - Pictures
  - Public
  - Scripts
  
### iPhoto

- Launch iPhoto while holding ⌥. Select iPhoto library on ‘Portable’ disk.

### MS Office

- [Download MS Office 2011 from subscription site, sign in.](http://office.microsoft.com/en-us/home-premium/)

### Adobe Creative Cloud

- [Download Creative Cloud](http://www.adobe.com/products/creativecloud.html)
