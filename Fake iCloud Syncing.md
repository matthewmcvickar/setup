# Forced iCloud Syncing

For apps that don't natively support iCloud syncing, symlink their preferences into the `~/Library/Mobile Documents` folder.


## TextExpander

1. Quit TextExpander.

1. Symlink:

    ```sh
    $ cd ~/Library/Application\ Support/TextExpander/
    $ rm Settings.textexpander
    $ ln -s ~/Library/Mobile\ Documents/Settings.textexpander
    ```

1. Start up TextExpander.


## Divvy

1. Quit Divvy.

1. Symlink:

    ```sh
    $ cd ~/Library/Preferences
    $ rm com.mizage.Divvy.plist
    $ ln -s ~/Library/Mobile\ Documents/com.mizage.Divvy.plist
    ```

1. Start up TextExpander.

