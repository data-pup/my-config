#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o xtrace

# First, update the package list.
sudo apt-get update

# Next, install my desired packages.
sudo apt-get install -y \
    arandr \                           # useful for managing monitors
    cowsay \                           # because i like to have fun
    curl \                             # data transfer tool
    fish \                             # interactive shell of choice
    fortune-mod \                      # fortune utility
    fortunes \                         # fortune files
    gcc \                              # shockingly, not included
    git \                              # see above
    htop \                             # see above
    ranger \                           # file browsing utility
    tmux \                             # terminal multiplexer
    tree \                             # prints file trees
    wget \                             # network downloader
    zsh                                # another shell
