#!/bin/bash
# install_msk.sh
# Installs the template repo, organizes paths, and sets up the 'msk' alias
# Usage: install_msk.sh [shell_rc_file]

MSK_DIR="$HOME/Downloads/msk_setup"
SETUP_DIR="$MSK_DIR/setup"
INSTALL_DIR="$MSK_DIR/install"
REPO_URL="https://github.com/malosoukileon/C-Cpp-tools.git"
CURRENT_DIR="$(pwd)"

# Clone the repo if it doesn't exist
if [ ! -d "$MSK_DIR" ]; then
    echo "Cloning template repository to $MSK_DIR..."
    git clone "$REPO_URL" "$MSK_DIR"
else
    echo "Template repository already exists at $MSK_DIR"
    cd "$MSK_DIR" && git pull
fi

# Create setup and install directories if they don't exist
mkdir -p "$SETUP_DIR"
mkdir -p "$INSTALL_DIR"

# Move all files except 'install', 'setup', '.git', 'msk.sh', and 'install_msk.sh' into 'setup'
for file in "$MSK_DIR"/*; do
    basename=$(basename "$file")
    if [[ "$basename" != "install" && "$basename" != "setup" && "$basename" != ".git" && "$basename" != "msk.sh" && "$basename" != "install_msk.sh" ]]; then
        mv "$file" "$SETUP_DIR/"
    fi
done

# Determine shell RC file
if [ -n "$1" ]; then
    SHELL_RC="$1"
else
    if [ -n "$ZSH_VERSION" ]; then
        SHELL_RC="$HOME/.zshrc"
    elif [ -n "$BASH_VERSION" ]; then
        SHELL_RC="$HOME/.bashrc"
    else
        SHELL_RC="$HOME/.bashrc"
    fi
fi

ALIAS_LINE="alias msk=\"$INSTALL_DIR/msk.sh\""

# Add alias if it doesn't exist
if ! grep -Fxq "$ALIAS_LINE" "$SHELL_RC"; then
    echo "$ALIAS_LINE" >> "$SHELL_RC"
    echo "Alias 'msk' added to $SHELL_RC."
else
    echo "Alias 'msk' already exists in $SHELL_RC."
fi

# Tell the user to source manually
echo "Please run the following command to apply the alias in this session:"
echo "  source $SHELL_RC"

# Copy the msk.sh script from the repo clone location into the install folder
cp "$CURRENT_DIR/msk.sh" "$INSTALL_DIR/msk.sh"
chmod +x "$INSTALL_DIR/msk.sh"
echo "Installation complete. You can now use the 'msk' command to initialize projects."
