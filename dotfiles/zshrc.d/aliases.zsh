# # # Replacements
alias vim='nvim'
alias ls='exa'
alias cat='bat'

# Clear screen alias.
alias cls='clear'

# Whitespace, print empty space between commands.
alias ws="echo '\n\n\n\n\n\n\n\n'"

# # # Overwrite protections
# These aliases will send confirmation messages
# to the user before an overwrite occurs.
alias mv='nocorrect mv -iv'
alias cp='nocorrect cp -iv'
alias ln="ln -i"
alias rm='nocorrect rm -iv'
alias mkdir='nocorrect mkdir'
alias man='nocorrect man'

# exa aliases
alias lsl="exa --long --header --git"
alias lst="exa --tree --level 2 --long --header --git"
alias lsa="ls -a"
alias lsl="ls -l"
alias ls1="ls -1"
alias lsls="exa --tree --level 2 --long --header --git --color=always | less -R"
alias lsla="exa --tree --level 4 --long --header --git --color=always | less -R"

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

# ranger-cd: automatically change the directory to the last visited one
# after ranger quits.  To undo the effect of this function, you can type
# "cd -" to return to the original directory.
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
alias rcd='ranger-cd'
