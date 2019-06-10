#!/usr/bin/env bash
# --------------------------------------------------------------------------- #
# This script will install a list of basic APT packages that I want installed
# in my development environments. This should be run after completing the
# initial Ubuntu installation process.
# --------------------------------------------------------------------------- #

# First, update the package list.
sudo apt-get update

# Next, install my desired packages.
sudo apt-get install -y \
    curl \
    htop \
    fish \
    git \
    ranger \
    silversearcher-ag \
    tmux \
    tree \
    vim \
    wget \
    zsh

