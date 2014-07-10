# Setup

Get a laptop up and running.

This is currently an incomplete and messy work in progress.

---

## Quick-start Development Environment

### 1. Create a User

1. Log into the machine as an administrator and make a new user in the *Users & Groups* preference panel:

    **Full Name:** Matthew McVickar  
    **Account Name:** (automatic, probably 'matthewmcvickar')  
    **Password:** ಠ_ಠ
    **Password Hint:** (none)

1. Log in as that user for the first time. Click through dialogs. OS X starts.


### 2. Run Initilization Script

1. Go here. **[github.com/matthewmcvickar/setup](http://github.com/matthewmcvickar/setup)**

1. Run the script.

    ```sh
    $ bash eval "$(curl -fsSL https://raw.githubusercontent.com/matthewmcvickar/setup/master/initialize.sh")
    ```

    This script does the following:

    - Installs Homebrew.
    - Sets up [dotfiles](http://github.com/matthewmcvickar/dotfiles).
    - Sets up `~/Sites` directory structure.
    - Installs and configures Git.
    - Creates a new SSH key.
    - Installs Homebrew command line apps from Brewfile.
    - Installs Homebrew Cask desktop apps from Caskfile.
    - Installs Sublime Text command line tool.
    - Fixes permissions on `/usr/local/` to avoid problems with `sudo` and NPM.
    - Installs Grunt.
    - Installs Bower.
    - Installs the SASS gem and Node's libsass globally.
    - Sets OS X defaults.


### 3. Install Mac App Store Apps

Unfortunately, there is no way to automate downloading these.

Launch the App Store, sign in, and go the Purchase tab to find these apps.

- Divvy
- xScope
- LiveReload
- Patterns


### 4. Configure Desktop Apps

1. **1Password**: Open preferences and set sync to iCloud.

1. **Alfred**: Open preferences and set sync to `~/Library/Mobile Documents/`.

1. **iTerm**: Open preferences and set sync to `~/Library/Mobile Documents/`.

1. **TextExpander**: Symlink preferences to iCloud version:

    ```sh
    $ cd ~/Library/Application\ Support/TextExpander/
    $ rm Settings.textexpander
    $ ln -s ~/Library/Mobile\ Documents/Settings.textexpander
    ```

1. **Divvy**: Symlink preferences to iCloud version:

    ```sh
    $ cd ~/Library/Preferences
    $ rm com.mizage.Divvy.plist
    $ ln -s ~/Library/Mobile\ Documents/com.mizage.Divvy.plist
    ```


## 5. Further Configure Development Environment

- If you need to install Ruby:

    ```sh
    $ rbenv install 1.9.3-p484
    $ rbenv global 1.9.3-p484 
    $ gem update --system
    ```


---


## Full Setup

When you are doing more than just working on the machine.


### Install Apps from Mac App Store

There is no way to automate this.

- Fantastical
- ByWord
- Day One
- Joystick Mapper
- Melo
- MsgFiler


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
