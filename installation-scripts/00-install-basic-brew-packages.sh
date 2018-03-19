#!/usr/bin/env bash
# --------------------------------------------------------------------------- #
# This script will install a list of basic APT packages that I want installed
# in my development environments. This should be run after completing the
# initial Ubuntu installation process.
# --------------------------------------------------------------------------- #

# First, update the package list.
brew update

# Next, install my desired packages.
brew install \
    curl \
    htop \
    fish \
    ipython \
    npm \
    ranger \
    tmux \
    tree \
    wget

