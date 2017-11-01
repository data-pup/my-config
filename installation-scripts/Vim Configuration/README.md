# Installing and Configuring Vim

### Overview

The top-level readme document should contain information about
installing vim using apt. Once this is done, we should add
package management and assorted extensions to vim.

# Installation Steps

We will keep things straightforward, in the
spirit of keeping things lightweight and simple.

We will use the Pathogen.vim to keep things
organized. This is lightly following Tammer
Saleh's tutorial here:
http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/

This will mean that all plugins are stored in
separate directories under ~/.vim/bundle.
NOTE: This assumes ~/.vim is clean.

1. Create the ~/.vim/bundle and ~/.vim/autoload
subdirectories if they do not already exist.

2. Download the pathogen.vim file from here:
https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

3. Place the pathogen file in the ~/.vim/autoload
directory.

4. Add a call to pathogen in your .vimrc as such:

```vim
call pathogen#infect()
call pathogen#helptags() " Optional
```

All done! Now, we can add plugins simply by
cloning them into the bundle directory! Let's
go over a simple example, installing sensible.vim
to add some basic default settings to vim.

### Example Plugin Installation (w/ Pathogen)

Sensible.vim is a proposed set of defaults
written by Trevor Pope, intended to be 'one step
above nocompatible mode.'

To install it, assuming that Pathogen has been
installed already, copy and paste these commands:

```sh
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
```

All done! That easy. :o)
