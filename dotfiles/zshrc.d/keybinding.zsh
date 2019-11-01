# Use vim keybindings.
bindkey -v

# Return to command mode with 'jj' or 'lkj'
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins 'lkj' vi-cmd-mode

# This will undo the last action in command mode.
bindkey -M vicmd 'u' undo

# `push-line` will send you to a new prompt, and
# restore the current prompt after completing that command.
bindkey -M vicmd "q" push-line

# # Ensure that arrow keys work as they should
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history
bindkey '\eOA' up-line-or-history
bindkey '\eOB' down-line-or-history
bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
bindkey '\eOC' forward-char
bindkey '\eOD' backward-char
