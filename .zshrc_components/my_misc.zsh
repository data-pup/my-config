#!/bin/zsh

# This script contains miscellaneous components of my zsh profile.
# Functions and aliases that did not fit in any of the other dotfiles
# are stored in this file.

# Use these shortcuts to put space between terminal actions
alias e="echo;"
alias l="echo;echo;echo;echo;"
alias ll="echo;echo;echo;echo;echo;echo;echo;echo;"

# Quickly edit/source config files for vim and zsh.
alias ezshrc="vim ~/.zshrc"
alias szshrc="source ~/.zshrc"

alias evimrc="vim ~/.vimrc"
alias svimrc="source ~/.vimrc"

# # # # # Navigation aliases # # # # #

# This alias will open a Finder window, in the current directory path.
alias finderhere="open ${PWD} -a Finder"

# These are custom aliases used for navigating upwards quickly.
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"

# These are time commands for quickly creating timestamps.
alias now="date +"%T""
alias nowtime=now
alias nowdate="date +"%d-%m-%Y""

# Calculator
# (Launch the bc utility in the standard math library)
alias calculator="bc -l"

# # # # # iTerm Logging # # # # #
# DEBUG NOTE: These are for my personal machine. These assume certain
# preferences assumed to be set. My iTerm profile stores logs in the
# directory '~/.iterm_logs'. This is assumed to already exist, with
# iTerm set accordingly.

# iTerm Logging: These are stored in the ~ directory. Consolidate with this
alias consolidate_iterm_logs='mv -v ~/*.log ~/.iterm_logs'

# Clean the log directory, save the 10 most recent
alias clean_iterm_logs='ls -1t ~/.iterm_logs/*.log | tail -n+10 | xargs rm -v'

# # # # # Reference Shortcuts # # # # #
# These open reference PDF's stored on my local machine.
alias cheat_sheet_xcode='open -a Preview ~/CODE_REPO/SWIFT/XCODE_CHEAT_SHEET/xcode-cheat-sheet-page01.png'
alias cheat_sheet_git_markdown='open -a Preview ~/Documents/PDFS/markdown-cheatsheet-online.pdf'
