# # # ------------------------------------------------------------------ # # #
# More info is contained in the individual profile modules,
# with aliases/functions grouped by topic into separate scripts.
# # # ------------------------------------------------------------------ # # #

# Set readline editing options for shell quickly. Default is emacs.
# Vi mode will use bimodal vim editing, use 'i' to work in insert mode,
# use <ESC> to use vim navigation commands.
alias vmode="set -o vi"
alias emode="set -o emacs"

# Use vim keymappings for readline editing
bindkey -v

# Use vim as the default editor, if another editor is called.
alias vi="vim"
alias edit="vim"

# Alias for lldb
# NOTE: This is OS X Specific
alias gdb="lldb"

# Add the cargo directory for the Rust toolchain.
export PATH="$PATH:$HOME/.cargo/bin"

# # # # # Zsh Option Configurations # # # # #

# Set the location of the history file, the maximum number of events stored
# in the internal history list, and the maximum number of history events
# to save in the history file.
HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Automatically call cd if you enter a directory name.
setopt AUTO_CD

# 10 second delay before calling rm, if the term involves a * regex.
setopt RM_STAR_WAIT

# # # # # Modular components # # # # #
# This section of my Zsh profile is devoted to invoking each profile module.
# These are stored in .zshrc_components/
source ~/.zshrc_components/my_angular.zsh
source ~/.zshrc_components/my_aesthetics.zsh
source ~/.zshrc_components/my_aliases.zsh
source ~/.zshrc_components/my_functions.zsh
source ~/.zshrc_components/my_homebrew.zsh
source ~/.zshrc_components/my_misc.zsh
source ~/.zshrc_components/my_networking.zsh
source ~/.zshrc_components/my_keybindings.zsh
source ~/.zshrc_components/my_git.zsh

# This command will run update functions.
my_update() {

  # Update and upgrade Homebrew packages.
  brew update
  brew upgrade

  # Update Node packages
  npm -g update
  npm install --global npm@latest

  # Update RVM
  # TODO: Check
  rvm get
  gem update

  # Update Atom packages, and upgrade versions.
  apm update
  apm upgrade

  # Update pip.
  pip install --upgrade pip

  # Update pip modules.
  pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
  pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U

  # Update vagrant plugins.
  vagrant plugin update
}
