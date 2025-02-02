read -p "macOS settings [c (change) / revert (r)]:" user_input

if [ "$user_input" == "c" ]; then
    # Menu bar clock modifications
    defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"
    defaults write com.apple.menuextra.clock "DateFormat" -string "\"HH:mm:ss\""

    # Finder modifications
    defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
    defaults write com.apple.finder "CreateDesktop" -bool "false"
    defaults write com.apple.finder "ShowPathbar" -bool "true"
    defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

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

elif [ "$user_input" == "r" ]; then
    # Revert menu bar clock modifications
    defaults delete com.apple.menuextra.clock "FlashDateSeparators"
    defaults delete com.apple.menuextra.clock "DateFormat"

    # Revert Finder modifications
    defaults delete com.apple.finder "AppleShowAllFiles"
    defaults delete com.apple.finder "CreateDesktop"
    defaults delete com.apple.finder "ShowPathbar"
    defaults delete com.apple.finder "FXRemoveOldTrashItems"

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

else
    echo "Invalid input."
fi


# This block ensures that the jobs are only killed after certain modifications and not each time the values are modified.
killall SystemUIServer
killall Finder
killall Dock
