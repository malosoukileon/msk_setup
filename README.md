# Project Initialization Tool

This repository provides a ready-to-use C/C++ project template and a convenient shell command to initialize new projects quickly.

## Repository Structure

After installation, the repository will be organized as follows:

```
msk_setup/
├── setup/         # Contains all template files (Makefile, source files, headers, etc.)
├── install/       # Contains the msk.sh script used to initialize projects
├── install_msk.sh # Installer script
└── README.md      # This file
```

## Scripts

### install_msk.sh

This script sets up the repository and creates the alias to run the project initialization command.

**Usage:**

```bash
bash install_msk.sh [optional_shell_rc_file]
```

* If you provide a shell RC file (e.g., `~/.zshrc` or `~/.bashrc`), it will use that file to add the alias.
* If no file is provided, it will attempt to detect your shell and update the default RC file.

**What it does:**

1. Clones or updates the template repository at `~/Downloads/msk_setup`.
2. Organizes the repo: moves all template files into `setup/`.
3. Copies itself as `msk.sh` into the `install/` folder.
4. Adds the `msk` alias to the specified shell RC file.
5. Prompts you to source your RC file to activate the alias.

### msk.sh

This script copies the template files from `setup/` into the current directory to initialize a new project.

**Usage:**

```bash
msk
```

**Requirements:**

* You must run `install_msk.sh` first to set up the alias and copy `msk.sh` into the `install/` folder.

**What it does:**

1. Checks if `setup/` exists.
2. Copies all template files from `setup/` into the current working directory.
3. Prints a success message with the current directory.

## Example Workflow

```bash
# 1. Clone the repository
git clone https://github.com/malosoukileon/C-Cpp-tools.git ~/Downloads/msk_setup
cd ~/Downloads/msk_setup

# 2. Run the installer
bash install_msk.sh ~/.zshrc   # or ~/.bashrc depending on your shell

# 3. Source your shell RC file
source ~/.zshrc   # or ~/.bashrc

# 4. Initialize a new project anywhere
cd ~/projects/my_new_project
msk
```

Your new project directory now contains all the template files from `setup/` and is ready for development.
