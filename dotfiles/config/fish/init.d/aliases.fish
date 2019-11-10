if status --is-interactive
  # # # Replacements
  alias vim='nvim'
  alias ls='exa'
  alias cat='bat'

  # Git aliases.
  alias gits="git status"
  alias gitss="git status --short"
  alias gitsv="git status -vv"
  alias gitsvl="git status -vv | less"
  alias gitbv="git branch -vv"
  alias gitadd="git add ."
  alias gitdc="git diff --cached"
  alias gitreset="git reset HEAD --"
  alias gitcommit="git commit -v -a"
  alias gitlog="git log --graph --decorate --pretty=oneline"

  # # # ls aliases

  # Shortcuts
  alias lsa="ls -a"
  alias lsl="ls -l"
  alias ls1="ls -1"

  # # # Overwrite protections
  # These aliases will send confirmation messages
  # to the user before an overwrite occurs.
  alias mv='mv -iv'
  alias cp='cp -iv'
  alias ln="ln -i"

  # # # ps aliases

  # List processes (sort by memory) ##
  alias psmem="ps afx | sort -nr -k 4"
  alias psmem10="ps afx | sort -nr -k 4 | head -n 10"
  alias psmem25="ps afx | sort -nr -k 4 | head -n 25"

  # List processes (sort by CPU usage) ##
  alias pscpu="ps afx | sort -nr -k 3"
  alias pscpu10="ps afx | sort -nr -k 3 | head -n 10"
  alias pscpu25="ps afx | sort -nr -k 3 | head -n 25"

  # # # Misc. aliases

  # Clear alias.
  alias cls="clear"

  # Set-Location alias lol.
  alias sl="cd"

  # Assign `ranger-cd` to `rcd`
  alias rcd="ranger-cd"
end
