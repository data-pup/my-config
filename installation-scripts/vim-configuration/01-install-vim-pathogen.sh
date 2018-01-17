#!/usr/bin/env bash
# --------------------------------------------------------------------------- #
# This script is responsible for installing vim's Pathogen package manager.
# --------------------------------------------------------------------------- #

# Move to vim's autoload directory by pushing it onto the directory stack.
pushd "${HOME}/.vim/autoload"

# Download the Pathogen vim script from @tpope's Github into ~/.vim/autoload/
wget "https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim"

# Return to the original location.
popd

