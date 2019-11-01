# # # Replacements
alias vim='nvim'
alias ls="exa"

# Clear screen alias.
alias cls='clear'

# # # Overwrite protections
# These aliases will send confirmation messages
# to the user before an overwrite occurs.
alias mv='nocorrect mv -iv'
alias cp='nocorrect cp -iv'
alias ln="ln -i"
alias rm='nocorrect rm -iv'
alias mkdir='nocorrect mkdir'
alias man='nocorrect man'

# ls aliases
alias lsa="ls -a"
alias lsl="ls -l"
alias ls1="ls -1"

# # # # # Process status aliases # # # # #
# These commands will print the processes using the most memory.
# NOTE: These also can limit output to 10 and 25 results.
alias psmem="ps afx | sort -nr -k 4"
alias psmem10="ps afx | sort -nr -k 4 | head -n 10"
alias psmem25="ps afx | sort -nr -k 4 | head -n 25"
# These commands will print the processes using the most CPU.
# NOTE: These also can limit output to 10 and 25 results.
alias pscpu="ps afx | sort -nr -k 3"
alias pscpu10="ps afx | sort -nr -k 3 | head -n 10"
alias pscpu25="ps afx | sort -nr -k 3 | head -n 25"

# # # Read Markdown files with lynx.
md() { pandoc "$1" | lynx -stdin; }
