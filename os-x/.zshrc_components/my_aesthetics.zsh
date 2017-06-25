#!/bin/zsh

# This script contains aliases and functions that are used to customize
# my iTerm/Zsh terminal emulator. Note that these are intended for use
# on my personal machine and might not work on your system.

# Enable syntax highlighting and automatic suggestions
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable brew info zsh-navigation-tools
fpath+=( /usr/local/share/zsh-navigation-tools )
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

# Set input prompt
autoload -Uz promptinit
promptinit
prompt fade magenta blue

# Set autocompletion
autoload -U compinit
compinit -C

# My personal prompt (add a lil' sparkle sparkle)
export PS1='___________________________________________
%F{white}[prev_return:%?][curr_event:%h][curr_priv:%#]
 %F{magenta}%B░▒▓█%F{blue}%B%n@%m%b%F{magenta}%B█▓▒░%F{magenta}%B     🍾 🐶
%F{blue}%B[%y]:%F{pink}%B%D{%a %b %d} %D{%I:%M:%S%P}
%U%F{magenta}%~/%b%k%f %F{pink}%}%u
✨  '

# Set colors for the ls command, tell zsh to use LSCOLORS
# NOTE: ZSH uses the BSD syntax for LSCOLORS
export LSCOLORS="fxfxcxdxbxegedabagacad"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# # # # # Pager Customization # # # # #

# Add a more detailed prompt to the less pager
# Add coloring to the terminal using LESSOPEN. Add this with the R flag
alias lless='less -m -N -g -i -J --line-numbers --underline-special'

# Use "highlight" in place of "cat"
alias ccat="highlight $1 --out-format xterm256 --line-numbers --quiet --force --style moria"

# Alter these environment variables to add colors,
# and line numbers when viewing documents in LESS.
export LESSOPEN="| $(which highlight) %s --out-format xterm256 --line-numbers --quiet --force --style moria"
export LESS=" -R"
