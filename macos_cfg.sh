#! /bin/zsh


# Ask for input if user wants to restore or install.
echo "Do you want to restore or install? (r/i)"
read -k 1 response

if [[ $response == "r" ]]; then
    echo "\nDeleting custom values..."

    # Reset autohide dock.
    defaults delete com.apple.dock "autohide" && killall Dock

    # Restore defaults for opening blank files in TextEdit and other apps.
    defaults delete -g NSShowAppCentricOpenPanelInsteadOfUntitledFile

elif [[ $response == "i" ]]; then
    echo "\nWriting defaults..."

    # Enable autohide dock.
    defaults write com.apple.dock "autohide" -bool "true" && killall Dock

    # Write defaults for opening blank files in TextEdit and other apps.
    defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

else 
    echo "\nInvalid input. Exiting..."
    exit 1
fi