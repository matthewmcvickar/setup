-- This script downloads iTerm2, Sublime Text, NodeJS, 1Password, TextExpander, and Google Chrome.

try

  -- See if there's an .app in the Downloads folder. (This is a weak check for completed downloads.)
  do shell script "cd ~/Downloads; ls *.app"

  -- If so, quit Safari.
  tell application "Safari" to quit

  -- Move apps to ~/Applications
  do shell script "mv ~/Downloads/*.app /Applications/"

  -- Now you're on your own!

on error

  -- Open Safari and download iTerm2, Sublime Text, NodeJS, 1 Password, TextExpander, and Chrome.
  do shell script "open -a \"Safari\" \"" & "http://iterm2.com/downloads/stable/iTerm2_v1_0_0.zip" & "\""
  do shell script "open -a \"Safari\" \"" & "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg" & "\""
  do shell script "open -a \"Safari\" \"" & "http://nodejs.org/dist/v0.10.29/node-v0.10.29.pkg" & "\""
  do shell script "open -a \"Safari\" \"" & "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-4.4.1.zip" & "\""
  do shell script "open -a \"Safari\" \"" & "http://dl.smilesoftware.com/com.smileonmymac.textexpander/TextExpander.zip" & "\""
  do shell script "open -a \"Safari\" \"" & "https://www.google.com/intl/en/chrome/browser/thankyou.html" & "\""

  -- Open Mac App Store to download Divvy.
  do shell script "open -a \"Safari\" \"" & "https://itunes.apple.com/app/id413857545?mt=12&ls=1" & "\""

end try