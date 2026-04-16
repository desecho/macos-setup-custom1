#!/bin/bash

set -eou pipefail

brew install mc
brew install nano
brew install wget
brew install jq
brew install exa
brew install bat
brew install ncdu
# brew install kubectl
# brew install helm
brew install yq
brew install yh
# brew install tflint
brew install noahgorstein/tap/jqp
brew install shfmt
brew install python@3.12
# shellcheck disable=SC2016
echo 'export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"' >> ~/.zshrc

brew install --cask cakebrew
