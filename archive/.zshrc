# # # ------------------------------------------------------------------ # # #
# More info is contained in the individual profile modules,
# with aliases/functions grouped by topic into separate scripts.
# # # ------------------------------------------------------------------ # # #

# Define aliases for altering readline editing options quickly.
alias vmode="set -o vi"
alias emode="set -o emacs"

# Use vim keymappings for readline editing
bindkey -v

# Use vim as the default editor, if another editor is called.
alias vi="vim"
alias edit="vim"

# # # # # Zsh Option Configurations # # # # #

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

