# # # ZSH Configuration Settings:
# --------------------------------------------------------------------------- #

# Use vim keybindings.
bindkey -v

# History Configuration Settings:
# -------------------------------
HISTFILE=${HOME}/.zsh_history     # The location of the history file.
SAVEHIST=1000                     # The # number of events in the history file.
HISTSIZE=1000                     # The max # of events stored internally.

# Automatically call cd if you enter a directory name.
setopt AUTO_CD

# 10 second delay before calling rm, if the term involves a * regex.
setopt RM_STAR_WAIT

