#!/bin/zsh

# This file is a list of simple aliases for builtin commands.

# # # # # Overwrite protections # # # # #
# These aliases will send confirmation messages
# to the user before an overwrite occurs. In my Zsh profile,
# these also include nocorrect, so that these are not corrected.
# XXX: Type these commands carefully!
# NOTE: This can potentially interfere with some
# shell script functionality if run as source.
alias mv='nocorrect mv -iv'
alias cp='nocorrect cp -iv'
alias ln="ln -i"
alias rm='nocorrect rm -iv'
alias mkdir='nocorrect mkdir'
alias man='nocorrect man'

# # # # # Shortcut aliases # # # # #
# These are used for fast access to common commands in the shell.
alias h="history"
alias j="jobs -l"

# This alias can be used to quickly search the history.
alias hg="history|grep "

# # # # # Default Pager # # # # #
alias more='less'

# # # # # Custom ls calls # # # # #

# My extended ls calls, show long information on all files,
# using specific sorting settings. Refer to the ls man page
# for information about these.
alias lls="ls -AcGhilOpt"
alias myls="ls -phlAGOS"
alias mylls="ls -AcGhilOp"

# Use this command to see simple output from the ls command, but
# use color for special entries, and append "/" to directory names.
alias lsg="ls -FG"

# Show the results of ls, one entry per-line.
alias ls1="ls -1"

# Show all files in the directory (non-recursive), including
# hidden files, and list the output 1 entry per-line.
# (NOTE: The -A option flag will exclude . and ..)
alias ls1a="ls -1A"

# Show directories only
alias lsd="ls -FlAp | grep */"

# Show executables only #
alias lse="ls -FlA | grep \*"

# Show the 10, 25 most recently modified files
# Show the most recently modified files:
# NOTE: lslm10 and lslm25 limit the number of
# results to 10 and 25 results, respectively.
alias lslm="ls -Alt"
alias lslm10="ls -Alt | head -n 10"
alias lslm25="ls -Alt | head -n 25"

# Show the most recently accessed files:
# NOTE: lsla10 and lsla25 limit the number of
# results to 10 and 25 results, respectively.
alias lsla="ls -Altu"
alias lsla10="ls -Altu | head -n 10"
alias lsla25="ls -Altu | head -n 25"

# # # # # Process status aliases # # # # #

# These commands will print the processes using the most memory.
# NOTE: These also can limit output to 10 and 25 results.
alias psmem="ps afx | sort -nr -k 4"
alias psmem10="ps afx | sort -nr -k 4 | head -n 10"
alias psmem25="ps afx | sort -nr -k 4 | head -n 25"

## get top process eating cpu ##
# These commands will print the processes using the most CPU.
# NOTE: These also can limit output to 10 and 25 results.
alias pscpu="ps afx | sort -nr -k 3"
alias pscpu10="ps afx | sort -nr -k 3 | head -n 10"
alias pscpu25="ps afx | sort -nr -k 3 | head -n 25"

