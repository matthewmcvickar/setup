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

1. 

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
    
- install SASS:

    ```sh
    $ sudo gem install sass
    ```


## Ruby Install

brew install rbenv ruby-build
rbenv install 1.9.3-p484
rbenv global 1.9.3-p484 
gem update --system


---



## OS X Apps


### Finder

- hide tags in sidebar
- hide shared in sidebar


### Home Folder

- copy:
  - Desktop
  - Documents
  - Downloads
  - Dropbox
  - Movies
  - Music
  - Pictures
  - Public
  - Scripts
  - 
  
### iPhoto

- launch while holding option and select iPhoto library on Portable
- connecting camera opens no application
- autosplit into events: one event per week
- photo border: no drop shadow


### Preferences: General

- sidebar icon size: Medium


### Dock

- maximum size
- no magnification
- minimize: scale effect
- do not animate opening applications
- automatically show and hide dock
- show indicator lights


### Mission Control

- Application Windows: ⌘F10
- Show Desktop: ⌘F11
- Hot corners
    - top left: application windows
    - top right: mission control
    - bottom left: put display to sleep
    - bottom right: desktop


### International: Advanced

- dates
  - short: yyyy-mm-dd
  
  
### Date & Time

- show the day of the week


### Security

- require password 5sec after sleep or screen saver begins


### Spotlight

- spotlight menu keyboard shortcut: F11


### Sound

- do not play feedback when volume is changed
- do not play user interface sound effects


### Energy Saver

- computer sleep: never
- display sleep: 15min


### Trackpad

- no tap to click
- secondary click: two fingers click
- no swipe between pages


### Notifications

- do not share share buttons in Notification Center
- no Twitter
- no Facebook
- no iTunes
- no 1Password
- no TextExpander
- no Dropbox
- no Safari
- no Game Center
- Messages: don't save, don't show on lock screen,
- Alfred: don't save, don't show on lock screen, don't badge app icon, don't play sound
- Transmit: don't save, don't show on lock screen, don't badge app icon, don't play sound
- uTorrent: don't save, don't show on lock screen, don't badge app icon, don't play sound


### Mail

- Don't copy name along with email address:

    ```sh
    $ defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool NO
    ```


### Transmit

- window on right half of screen
- focus on server, no local half
- small favorites icons
- default FTP client: Transmit
- sync favorites via Dropbox
- automatically download and install updates
- when editing favorite: display more options by default
- double-click action: edit in external editor
- external editor: sublime text 2
- view: show item count
- show invisible files
- maximum transfers simultaneously: 2


### Fantastical

- default calendar: Personal
- shortcut F2
- menu bar icon shows: nothing
- do not use color menu bar icon
- do not play user interface sounds
- event list shows: next 14 days


### Flux

- at night: 4100K (Fluorescent)
- location; 97232
- transition: slow (1 hour)
- start at login


### Melo

- start at login


### Caffeine

- start at login
- do not activate Caffeine at app launch
- do not show welcome screen at app launch


### Dropbox

- do not show desktop notifications
- use black and white menu bar icons
- start at login
- do not enable dropbox camera import
- do share screenshots using dropbox
- enable LAN sync


### 1Password

- user rich icons
- keep 1PasswordMini running
- show mini app icon in menu bar
- lock after computer is idle for 15 minutes


### Messages

- save history when conversations are closed
- do not show status in menu bar
- no sound effects
- do not show offline buddies
- do not use groups
- messages view: show as boxes
- messages view: contacts as names and pictures


### Dictionaries

- remove Apple Dictionary
- remove Wikipedia


### Skype

- do not 'play sounds related to contact availability'
- use compact chat style
- do not 'show Skype watermark during calls'
- allow calls from Contacts
- receive calls to my Skype Number from Contacts
- set my status to Away after 3 minutes of inactivity
- do not show status in menu bar
- automatically accept incoming files


### TaskPaper

- check for updates 
- do not show welcome text in new documents
- do not show status bar item
- enable smart links
- override themes and fonts
    - do not show note handles
    - do not show project handles
    - do not show project lists vertical divider
    
    
### Max

- automatically check for new versions
- 320 MP3, encoder quality: best, nickname: 320
- output directory: same as source file


### Keyboard

- use all F1, F2 keys as standard function keys
- use Capslock as Ctrl


### App Shortcuts

- iTunes
    ⌃⌥⌘S — Sync “iPhone”
    ⌃C — Correct Capitalization
- Preview
    ⌘⌥I — Adjust Size…      
- Contacts
    ⌘E — Edit Card
- Transmit
    ⌘E — Edit Favorite…
  
    
### iTerm

- font: Menlo 12, vertical spacing 1.1
- window: 205 columns, 100 rows (it's bigger than the screen, but that'll just make it fullscreen)


### MS Office

- download MS Office 2011 from subscription site: http://office.microsoft.com/en-us/home-premium/


### Adobe Photoshop, Illustrator, CS6, etc

- download Creative Cloud: http://www.adobe.com/products/creativecloud.html
- do not launch at login


### Day One

- use Dropbox
- on startup: Create New Entry
- do not show Inspirational Messages


### Users & Groups

- open at login
    - Flux
    - Alfred
    - Dropbox
    - TextExpander
    - Caffeine
    - Fantastical
    - Divvy
    - MsgFiler
    
    
### Photoshop

⌘K = Image > Crop
⌘⇧T = trim
default units = pixels

