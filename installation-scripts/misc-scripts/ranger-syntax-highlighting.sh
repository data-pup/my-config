# Installs dependencies and initializes config file for syntax highlighting
# in ranger's file previews.
sudo apt-get install highlight
mkdir ~/.config/ranger
ranger --copy-config=scope
