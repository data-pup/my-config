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

# Create the .vim directory if it does not already exist.
if [ ! -d ~/.vim ] ;
then
    mkdir --mode=700 "${HOME}/.vim/"
fi

# Create a swp file directory.
mkdir --mode=700 "${HOME}/.vim/swp/"

# Create Pathogen directories.
mkdir --mode=700 "${HOME}/.vim/bundle/"
mkdir --mode=700 "${HOME}/.vim/autoload"

