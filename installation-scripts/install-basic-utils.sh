#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o xtrace

# First, update the package list.
sudo apt-get update

# Next, install my desired packages.
sudo apt-get install -y \
    bat \
    curl \
    htop \
    fish \
    gcc \
    git \
    ranger \
    tmux \
    tree \
    wget \
    zsh
