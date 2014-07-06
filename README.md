# Setup

Get a laptop up and running.

This is currently a mess and a work in progress.



===



## Web Development Environment


### Chrome

- [Download Google Chrome.](https://www.google.com/intl/en/chrome/)


### Sublime Text

- install [Package Control](https://sublime.wbond.net/installation#st2)
- [grab preferences](https://github.com/matthewmcvickar/sublime-text-preferences)
- command line tool:
    
    ```sh
    $ ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
    ```  

- install Homebrew and follow directions:

    ```sh
    $ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    ```

- install git:

    ```sh
    $ brew install  git
    ```

- run git config commands:

    ```sh
    $ git config --global user.email "[my email]"
    $ git config --global user.name "Matthew McVickar"
    ```
    
- [generate an SSH key] and add to GitHub

- get dotfiles and run them:

    ```sh
    $ git clone git@github.com:matthewmcvickar/dotfiles.git
    $ bash ~/Sites/matthewmcvickar/dotfiles/build_dotfiles.sh --force
    ```

- install [node.js](http://nodejs.org)

- give ownership of /usr/local to myself so that I don't have to `sudo` NPM commands:

    ```sh
    $ sudo chown -R `whoami` ~/.npm
    $ sudo chown -R `whoami` /usr/local/lib/node_modules
    ```

- install grunt command line interface:

    ```sh
    $ npm install -g grunt-cli
    ```
    
- install bower:
    
    ```sh
    $ npm install -g bower
    ```
    
- install SASS gem:

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

