#!/bin/bash

# Ensure the script has execute permissions
chmod +x "$0"

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "git could not be found. Attempting to install git..."
    if [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]]; then
        echo "Downloading Git installer for Windows..."
        curl -LO https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe
        echo "Running Git installer..."
        ./Git-2.34.1-64-bit.exe /VERYSILENT /NORESTART
        rm Git-2.46.2-64-bit.exe
    else
        echo "Unsupported OS. Please install git manually."
        exit 1
    fi

    # Verify git installation
    if ! command -v git &> /dev/null
    then
        echo "git installation failed. Please install git manually from https://git-scm.com/download/win."
        exit 1
    fi
fi

# the repository URLs
KOLBOT_REPO="https://github.com/blizzhackers/kolbot.git"
SOLOPLAY_REPO="https://github.com/blizzhackers/kolbot-SoloPlay.git"

# the directories to clone into
KOLBOT_DIR="kolbot"
SOLOPLAY_DIR="kolbot-SoloPlay"

# Clone the repositories
echo "Cloning kolbot repository..."
git clone $KOLBOT_REPO $KOLBOT_DIR

echo "Cloning kolbot-SoloPlay repository..."
git clone $SOLOPLAY_REPO $SOLOPLAY_DIR

# Copy the contents of kolbot-SoloPlay into kolbot
echo "Copying contents of kolbot-SoloPlay into kolbot..."
cp -r $SOLOPLAY_DIR/* $KOLBOT_DIR/d2bs/kolbot/

# Clean up
echo "Cleaning up..."
rm -rf $SOLOPLAY_DIR

echo "Done!"