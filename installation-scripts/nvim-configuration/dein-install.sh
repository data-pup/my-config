# Installs the `dein` package manager.
# For more information, visit: https://github.com/Shougo/dein.vim

INSTALLATION_DIRECTORY="$HOME/.config/nvim/dein"

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh "$INSTALLATION_DIRECTORY"

