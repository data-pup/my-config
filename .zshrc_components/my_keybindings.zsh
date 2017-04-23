# Use vim keymappings for readline editing
bindkey -v

# Return to command mode with 'jj'
bindkey -M viins 'jj' vi-cmd-mode

# This will undo the last action in command mode.
bindkey -M vicmd 'u' undo

# push-line will send you to a new prompt, and
# restore the current prompt after completing that command.
bindkey -M vicmd "q" push-line

# Search based on what you typed in already
bindkey -M vicmd "/" history-beginning-search-backward
bindkey -M vicmd "?" history-beginning-search-forward

# Incremental search history
bindkey -M vicmd "//" history-incremental-search-backward
bindkey -M vicmd "??" history-incremental-search-forward

# # Ensure that arrow keys work as they should
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history
bindkey '\eOA' up-line-or-history
bindkey '\eOB' down-line-or-history

bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
bindkey '\eOC' forward-char
bindkey '\eOD' backward-char

# Space will trigger auto-completion.
bindkey -M viins ' ' magic-space
