# This script will copy the user's config files into the current directory.

# Copy .bash_profile, if found.
if [[ -f ~/.bash_profile ]]
then
  echo "Copying ~/.bash_profile into current directory..."
  /bin/cp -av ~/.bash_profile .
else
  echo "~/.bash_profile not found! Skipping..."
fi
echo

# Copy .bashrc, if found.
if [[ -f ~/.bashrc ]]
then
  echo "Copying ~/.bashrc into current directory..."
  /bin/cp -av ~/.bashrc .
else
  echo "~/.bashrc not found! Skipping..."
fi
echo

# Copy .zshrc, and the associated components directory, if found.
if [[ -f ~/.zshrc ]]
then
  echo "Copying ~/.zshrc into current directory..."
  /bin/cp -av ~/.zshrc .
  if [[ -d ~/.zshrc_components/ ]]
  then
    echo "Copying ~/.zshrc_components into current directory..."
    /bin/cp -av ~/.zshrc_components .
  else
    echo "No ~/zshrc_components/ directory found! Continuing..."
  fi
fi
echo

# Copy the .vimrc file.

# Print a message informing the user that the script is done.
echo "Finished!"
