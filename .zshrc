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

# My personal prompt (add a lil' sparkle sparkle)
export PS1='___________________________________________
%F{white}[prev_return:%?][curr_event:%h][curr_priv:%#]
 %F{magenta}%B░▒▓█%F{blue}%B%n@%m%b%F{magenta}%B█▓▒░%F{magenta}%B     🍾 🐶
%F{blue}%B[%y]:%F{pink}%B%D{%a %b %d} %D{%I:%M:%S%P}
%U%F{magenta}%~/%b%k%f %F{pink}%}%u
✨  '


# # # Personal Aliases (WIP)
# --------------------------

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

alias my_less='less -m -N -g -i -J --line-numbers --underline-special'

# # # ls aliases
alias lsa="ls -a"
alias lsl="ls -l"
alias ls1="ls -1"
alias lsd="ls -FlAp | grep */"    # Show directories only.
alias lse="ls -FlA | grep \*"     # Show executables only.

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

