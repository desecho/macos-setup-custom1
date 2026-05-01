#!/bin/bash

set -eou pipefail

cd "$(dirname "$0")"

CONFIG_PATH="$HOME/Library/Application Support/Code/User/"
# Configure settings
mkdir -p "$CONFIG_PATH"
cp configs/* "$CONFIG_PATH"

# Install extensions

# Python
code --install-extension ms-python.python
code --install-extension cameron.vscode-pytest

# --------------------------------------------------------------------------------
# Syntax highlighting

# Dockerfile
code --install-extension ms-azuretools.vscode-docker

# # tf
# code --install-extension hashicorp.terraform

# sh
code --install-extension timonwong.shellcheck

# md
code --install-extension yzhang.markdown-all-in-one

# toml
code --install-extension bungcip.better-toml
# --------------------------------------------------------------------------------

# Misc
code --install-extension editorconfig.editorconfig
code --install-extension waderyan.gitblame
code --install-extension mohsen1.prettify-json
code --install-extension geddski.macros
# --------------------------------------------------------------------------------

code --install-extension Anthropic.claude-code
