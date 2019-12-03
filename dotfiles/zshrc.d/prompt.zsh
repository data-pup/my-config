# Allow parameter expansion/command substitution in prompt.
setopt PROMPT_SUBST

# 8 Bit Fairyfloss colors.
white='231'
black='237'
yellow='178'
pink='218'
purple='141'

# Section contents.
shell_info='[ret:%?][curr:%h]'
user_host='%n@%m'
date_time='%D@%*'
directory='%2~'

# Print a separator character given a foreground and background color.
# NOTE: We use the 'glitch' character, an empty space of one character
# width, to accomodate for the special character being used as a separator.
#
# Parameters:
#   $1 - foreground
#   $2 - background
function left-separator {
  local separator_char='%{%G%}'
  echo "%{%F{$1}%K{$2}${separator_char}%f%k%}"
}
function right-separator {
  local separator_char='%{%G%}'
  echo "%{%F{$1}%K{$2}${separator_char}%f%k%}"
}

# Echo a section with a separator, given a function, foreground color,
# and background color.
#
# Parameters:
#   $1 - contents
#   $2 - foreground
#   $3 - background
#   $4 - separator background
function left-section {
  echo "%B%F{${2}}%K{${3}} ${1} %f%k$(left-separator $3 $4)%b"
}
function right-section {
  echo "$(right-separator $3 $4)%B%F{${2}}%K{${3}} ${1} %f%k%b"
}

# Vim indicator variables.
vim_ins_color=$pink
vim_ins_mode="INS"
vim_cmd_color=$purple
vim_cmd_mode="CMD"
vim_color=$vim_ins_color
vim_mode=$vim_ins_mode

# Configure git section display settings.
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%K{$white}%k"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%K{$white} %k"
ZSH_THEME_GIT_PROMPT_BRANCH="%K{$white}%B"
ZSH_THEME_GIT_PROMPT_STAGED="%K{$white}%{$fg[red]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%K{$white}%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%K{$white}%{$fg[blue]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%F{$black}%K{$white}%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{$black}%K{$white}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{$black}%K{$white}%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{$black}%K{$white}%{$fg_bold[green]%}%{✔%G%}"

# Use the section function and content variables defined above to wrap
# section contents with the proper color settings and separators.
date_time_section=""
user_host_section=""
directory_section=""
vim_indicator_section=""
shell_info_section=""
git_section=""

# This function is used to update the contents of sections when the prompt
# needs to be updated, i.e. after changing modes when using vim mode.
function update-section-contents {
  vim_indicator_section="$(left-section "$vim_mode" "$black" "$white" "$vim_color")"
  user_host_section="$(left-section "$user_host" "$white" "$vim_color" "$black")"
  directory_section="$(left-section "$directory" "$white" "$black" "default")"
  shell_info_section="$(right-section "$shell_info" "$white" "$black" "default")"
  date_time_section="$(right-section "$date_time" "$black" "$vim_color" "$black")"
  git_section="$(right-section "$(git_super_status)" "$black" "$white" "$vim_color")"
}
update-section-contents # call the function once to initialize the sections.

# Vim indicator helper, choose which color and mode to display.
function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  vim_color="${${KEYMAP/vicmd/${vim_cmd_color}}/(main|viins)/${vim_ins_color}}"
  update-section-contents
  zle reset-prompt
}
zle -N zle-keymap-select

# Vim indicator helper, return to the default (insert mode) when we are
# done editing the line.
function zle-line-finish {
  vim_mode=$vim_ins_mode
  vim_color=$vim_ins_color
  update-section-contents
}
zle -N zle-line-finish

# Finally, place sections in our exported prompt environment variables.
export PROMPT='${vim_indicator_section}${user_host_section}${directory_section} '
export RPROMPT='${shell_info_section}${date_time_section}${git_section}'
