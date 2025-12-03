#!/bin/bash
# init_project.sh
# Usage: init_project.sh
# Copies template files from ~/Downloads/msk_setup into the current folder

# Path to clone the template repo
TEMPLATE_DIR="$HOME/Downloads/msk_setup"

# Your Git repository URL
REPO_URL="https://github.com/malosoukileon/C-Cpp-tools.git"

# Clone the repo if it doesn't exist
if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Cloning template repository to $TEMPLATE_DIR..."
    git clone "$REPO_URL" "$TEMPLATE_DIR"
else
    echo "Template repository already exists at $TEMPLATE_DIR"
    # Optionally, update the repo
    cd "$TEMPLATE_DIR" && git pull
fi

# Copy contents to current directory
echo "Copying template files to $(pwd)..."
cp -r "$TEMPLATE_DIR/." "$(pwd)/"

echo "Project initialized in $(pwd)"
