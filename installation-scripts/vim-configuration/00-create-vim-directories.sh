#!/usr/bin/env bash
# --------------------------------------------------------------------------- #
# Vim Installation & Configuration Step 00: Create Vim Directories
# This script will create the directory structure that is needed by the
# installation scripts in this directory.
#
# This includes a bundle and autoload directory in ~/.vim/ so that the
# Pathogen package manager will work correctly. Aside from that,
# a swp directory is also created inside of ~/.vim/ so that swp files
# are not created within the current working directory.
# --------------------------------------------------------------------------- #

# Create a swp file directory.
mkdir -p ~/.vim/swp/

# Create Pathogen directories.
mkdir "~/.vim/bundle"
mkdir "~/.vim/autoload"

