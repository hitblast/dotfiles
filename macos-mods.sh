read -p "macOS settings [ch (change) / revert (re)]:" user_input

if [ "$user_input" == "ch" ]; then
    # Menu bar clock modifications
    defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"
    defaults write com.apple.menuextra.clock "DateFormat" -string "\"HH:mm:ss\""
    killall SystemUIServer

    # Finder modifications
    defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
    defaults write com.apple.finder "CreateDesktop" -bool "false"
    defaults write com.apple.finder "ShowPathbar" -bool "true"
    defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
    killall Finder

    # Trackpad modifications
    defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"
    defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

    # Custom dock modifications
    defaults write com.apple.dock "tilesize" -int "46"
    defaults write com.apple.dock "autohide" -bool "true"
    defaults write com.apple.dock "orientation" -string "left"
    defaults write com.apple.dock autohide-delay -float 0
    defaults write com.apple.dock autohide-time-modifier -float 0.6
    defaults write com.apple.dock "expose-group-apps" -bool "true"
    killall Dock

elif [ "$user_input" == "re" ]; then
    # Revert menu bar clock modifications
    defaults delete com.apple.menuextra.clock "FlashDateSeparators"
    defaults delete com.apple.menuextra.clock "DateFormat"
    killall SystemUIServer

    # Revert Finder modifications
    defaults delete com.apple.finder "AppleShowAllFiles"
    defaults delete com.apple.finder "CreateDesktop"
    defaults delete com.apple.finder "ShowPathbar"
    defaults delete com.apple.finder "FXRemoveOldTrashItems"
    killall Finder

    # Revert trackpad modifications
    defaults delete com.apple.AppleMultitouchTrackpad "FirstClickThreshold"
    defaults delete com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag"

    # Revert custom dock modifications
    defaults delete com.apple.dock "tilesize"
    defaults delete com.apple.dock "autohide"
    defaults delete com.apple.dock "orientation"
    defaults delete com.apple.dock autohide-delay
    defaults delete com.apple.dock autohide-time-modifier
    defaults delete com.apple.dock "expose-group-apps"
    killall Dock

else
    echo "Invalid input."
fi
