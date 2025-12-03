# C/C++ Project Setup Tool

This repository provides a simple shell script to quickly initialize a C/C++ project in any directory by copying a pre-configured template.

---

## Features

* Automatically clones the template repository to `~/Downloads/msk_setup` if it doesn’t exist.
* Copies all template files into the current working directory.
* Updates the template repository if it already exists.

---

## Requirements

* Git must be installed on your system.
* Bash shell (Linux, macOS, WSL on Windows).

---

## Installation

1. Clone this repository or download the `init_project.sh` script:

```bash
git clone https://github.com/malosoukileon/C-Cpp-tools.git
```

2. Make the script executable:

```bash
chmod +x path/to/init_project.sh
```

3. (Optional) Add the script to your PATH to run it from anywhere:

```bash
export PATH="$PATH:/path/to/script_directory"
```

---

## Usage

Navigate to the folder where you want to initialize a new project, then run:

```bash
init_project.sh
```

The script will:

1. Clone the template repository to `~/Downloads/msk_setup` if it doesn't exist.
2. Pull the latest updates if the repository already exists.
3. Copy all files from the template to your current directory.

---

## Notes

* Existing files in your current directory **may be overwritten** if they have the same name as files in the template.
* You can safely run the script multiple times; it will update the template repository and copy the files again.

---

## Repository URL

Template repository: [https://github.com/malosoukileon/C-Cpp-tools](https://github.com/malosoukileon/C-Cpp-tools)
