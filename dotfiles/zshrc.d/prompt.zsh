# Allow parameter expansion/command substitution in prompt.
setopt PROMPT_SUBST

# 8 Bit Fairyfloss colors.
white='231'
black='237'
yellow='178'
pink='218'
purple='141'

# Section contents.
shell_info='[ret:%?][curr:%h][priv:%#]'
user_host='%n@%m'
date_time='%D@%*'
directory='%2~'

separator_char=""

# Print a separator character given a foreground and background color.
#
# Parameters:
#   $1 - foreground
#   $2 - background
function separator {
  echo "%{%F{$1}%K{$2}%f%k%}"
}

# Echo a section with a separator, given a function, foreground color,
# and background color.
#
# Parameters:
#   $1 - contents
#   $2 - foreground
#   $3 - background
#   $4 - separator background
function section {
  echo "%B%F{${2}}%K{${3}} ${1} %f%k$(separator $3 $4)%b"
}

# shell_info_section="$(section "$shell_info" "$black" "$white" "$black")"
date_time_section="$(section "$date_time" "$black" "$white" "$pink")"
user_host_section="$(section "$user_host" "$white" "$pink" "$purple")"
directory_section="$(section "$directory" "$white" "$purple" "default")"
export PS1='${date_time_section}${user_host_section}${directory_section} '
