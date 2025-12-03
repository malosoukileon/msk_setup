#!/bin/bash
# install/msk.sh
# Copies template files from ~/Downloads/msk_setup/setup into the current folder

SETUP_DIR="$HOME/Downloads/msk_setup/setup"

# Check if the setup folder exists
if [ ! -d "$SETUP_DIR" ]; then
    echo "Error: Setup folder not found!"
    echo "Please run the install script first."
    exit 1
fi

# Copy contents to current directory
echo "Copying template files to $(pwd)..."
cp -r "$SETUP_DIR/." "$(pwd)/"
echo "Project initialized in $(pwd)"
