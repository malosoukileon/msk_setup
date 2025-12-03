#!/bin/bash

# install_msk.sh
# This script installs msk_setup into ~/.msk_setup and sets up an alias.
# It must be sourced, not executed.

# ---------------------------------------------------------------------------
# Ensure script is sourced
# ---------------------------------------------------------------------------
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "ERROR: This script must be sourced, not executed."
    echo "Usage: source install_msk.sh [rc_file|remove]"
    return 1 2>/dev/null || exit 1
fi

# ---------------------------------------------------------------------------
# If argument is "remove", uninstall everything
# ---------------------------------------------------------------------------
if [[ "$1" == "remove" ]]; then
    TARGET_DIR="$HOME/.msk_setup"

    # RC file to clean (default to .bashrc)
    RC_FILE="$HOME/.bashrc"

    echo "Removing alias 'msk' from $RC_FILE (if exists)..."
    sed -i "/alias msk='bash .*\/msk.sh'/d" "$RC_FILE"

    echo "Removing directory $TARGET_DIR..."
    rm -rf "$TARGET_DIR"

    echo "Uninstallation complete. You may need to 'source $RC_FILE' to refresh your shell."
    return 0
fi

# ---------------------------------------------------------------------------
# Normal installation process
# ---------------------------------------------------------------------------

# Determine the target .rc file (default to .bashrc)
RC_FILE="${1:-$HOME/.bashrc}"

# Target installation directory
TARGET_DIR="$HOME/.msk_setup"

# Current root directory of the project (folder containing msk_setup)
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="$(basename "$SOURCE_DIR")"

# Check if the target directory already exists
if [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR already exists."
else
    echo "Copying $SOURCE_DIR to $TARGET_DIR..."
    cp -r "$SOURCE_DIR" "$TARGET_DIR"
    echo "Copy completed."

    # Remove original project folder
    rm -rf "$SOURCE_DIR"
    cd "$HOME"
fi

# Check if alias already exists in the RC file
if grep -Fxq "alias msk='bash $TARGET_DIR/install/msk.sh'" "$RC_FILE"; then
    echo "Alias 'msk' already exists in $RC_FILE."
else
    echo "Adding alias 'msk' to $RC_FILE..."
    echo "alias msk='bash $TARGET_DIR/install/msk.sh'" >> "$RC_FILE"
    echo "Alias added. Please reload your shell or run 'source $RC_FILE' to apply it."
fi

echo "Installation complete."
