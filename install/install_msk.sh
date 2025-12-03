#!/bin/bash

# install_msk.sh
# This script installs msk_setup into ~/.msk_setup and sets up an alias

# Determine the target .rc file (default to .bashrc)
RC_FILE="${1:-$HOME/.bashrc}"

# Target installation directory
TARGET_DIR="$HOME/.msk_setup"

# Current root directory of the project
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="$(basename "$SOURCE_DIR")"

# Check if the target directory already exists
if [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR already exists."
    return
else
    echo "Copying $SOURCE_DIR to $TARGET_DIR..."
    cp -r "$SOURCE_DIR" "$TARGET_DIR"
    echo "Copy completed."
fi

# Check if alias already exists in the RC file
if grep -Fxq "alias msk='bash $TARGET_DIR/install/msk.sh'" "$RC_FILE"; then
    echo "Alias 'msk' already exists in $RC_FILE."
else
    echo "Adding alias 'msk' to $RC_FILE..."
    echo "alias msk='bash $TARGET_DIR/install/msk.sh'" >> "$RC_FILE"
    echo "Alias added. Please reload your shell or run 'source $RC_FILE' to apply it."
fi

rm -rf "$SOURCE_DIR"
cd "$HOME"

echo "Installation complete."
