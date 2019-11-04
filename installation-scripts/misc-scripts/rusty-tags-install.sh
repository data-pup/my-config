#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o xtrace

# Install dependencies.
sudo apt install -y \
    gcc make \
    pkg-config autoconf automake \
    python3-docutils \
    libseccomp-dev \
    libjansson-dev \
    libyaml-dev \
    libxml2-dev

# Clone the universal-tags repository.
cd $HOME
git clone git@github.com:universal-ctags/ctags.git
cd ctags

# Build and install universal-ctags.
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install

# Install standard library tags.
rustup component add rust-src

# Install rusty-tags.
cargo install rusty-tags

# Remove the universal-ctags repo.
cd $HOME
rm -rf ctags
