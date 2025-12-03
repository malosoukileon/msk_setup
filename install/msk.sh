#!/usr/bin/env bash
#
# msk.sh
# Copies the content of ~/.msk_setup/setup/ into the current directory
# but only if the setup folder exists and the 'msk' alias is configured.
#
# Intended to be executed (via alias), not sourced.

set -euo pipefail

TARGET_SETUP="$HOME/.msk_setup"
SETUP_DIR="$TARGET_SETUP/setup"

# Helper: friendly instruction about installer
print_install_instructions() {
  cat <<EOF
msk is not installed correctly.

What to do:
  1) From the original project checkout (msk_setup directory) run:
       source install/install_msk.sh
     (the installer must be sourced, not executed)

  OR, after copying the project to your home:
       source ~/.msk_setup/install/install_msk.sh

The installer will create "$TARGET_SETUP" and add the alias `msk` to your shell rc file.
EOF
}

# 1) Check setup directory exists
if [ ! -d "$SETUP_DIR" ]; then
  echo "ERROR: Setup directory not found: $SETUP_DIR"
  print_install_instructions
  exit 2
fi

# 2) Check for alias 'msk'
alias_defined=false

# a) Check current shell aliases (works if alias is already loaded)
if alias msk >/dev/null 2>&1; then
  alias_defined=true
fi

# b) If not found, check common rc files
if ! $alias_defined; then
  RC_FILES=( "$HOME/.bashrc" "$HOME/.bash_profile" "$HOME/.profile" "$HOME/.zshrc" )
  for rc in "${RC_FILES[@]}"; do
    if [ -f "$rc" ] && grep -E --quiet '^[[:space:]]*alias[[:space:]]+msk[[:space:]]*=' "$rc"; then
      alias_defined=true
      break
    fi
  done
fi

if ! $alias_defined; then
  echo "ERROR: Alias 'msk' not found in the current environment or rc files."
  print_install_instructions
  exit 3
fi

# 3) Copy files from ~/.msk_setup/setup/ to the current directory
echo "Copying files from $SETUP_DIR to $(pwd)..."

if ! command -v rsync >/dev/null 2>&1; then
    echo "ERROR: rsync is required but not installed."
    exit 4
fi

rsync -a "$SETUP_DIR"/* "./"

echo "Files copied."

echo "msk completed successfully."
exit 0
