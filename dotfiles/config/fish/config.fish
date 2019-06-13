# Fish configuration file.
# Built using this script as a starting point: https://gist.github.com/xnuk/452ae61e077f886471b5

# Set vi mode.
fish_vi_key_bindings

# Use nvim rather than vim.
alias vim="nvim"

# Add abbreviations to shell.
if status --is-interactive
  set -g fish_user_abbreviations

  # Git abbreviations
  abbr --add ga 'git add -p'
  abbr --add gaup 'git add -up'
  abbr --add gb 'git branch'
  abbr --add gbv 'git branch -vv'
  abbr --add gcm 'git commit -m'
  abbr --add gcv 'git commit -v'
  abbr --add gco 'git checkout'
  abbr --add gcb 'git checkout -b'
  abbr --add gdc "git diff --cached"
  abbr --add gd "git diff"
  abbr --add glp 'git log -p'
  abbr --add gl "git log --graph --decorate --pretty=oneline --branches"
  abbr --add gpo "git push origin HEAD"
  abbr --add gpfo "git push --force-with-lease origin HEAD"
  abbr --add gpom "git push origin master"
  abbr --add gs 'git status'
  abbr --add gss 'git status --short'
  abbr --add gsv 'git status -vv'
  abbr --add gfp 'git fetch -p'
  abbr --add gmfo 'git merge --ff-only origin/HEAD'

  # Watch abbreviations.
  abbr --add watchgs 'watch -n 10 --color git -c color.status=always status --short'
end

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

# Clear alias.
alias cls="clear"

# Set-Location alias, because I am intrinsically evil.
alias sl="cd"

# # # # # Overwrite protections # # # # #
# These aliases will send confirmation messages
# to the user before an overwrite occurs. In my Zsh profile,
# these also include nocorrect, so that these are not corrected.
# XXX: Type these commands carefully!
# NOTE: This can potentially interfere with some
# shell script functionality if run as source.
alias mv='mv -iv'
alias cp='cp -iv'
alias ln="ln -i"

# Less alias
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

# Process status aliases

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

# # # # # Configure theme # # # # # #

set -g theme_display_user yes
set -g theme_hostname never
set -g theme_hostname always

# Backward compatibility
#
# Note: Do not depend on these behavior. These can be removed in anytime by the
# author in the name of code readability.
if set -q theme_hide_hostname
  # Existing $theme_hostname will always override $theme_hide_hostname
  if not set -q theme_hostname
    if [ "theme_hide_hostname" = "yes" ]
      set -g theme_hostname never
    end
    if [ "theme_hide_hostname" = "no" ]
      set -g theme_hostname always
    end
  end
end


#
# Segments functions
#
set -g current_bg NONE
set -g segment_separator \u2588

function prompt_segment -d "Function to draw a segment"
  set -l bg
  set -l fg
  if [ -n "$argv[1]" ]
    set bg $argv[1]
  else
    set bg normal
  end
  if [ -n "$argv[2]" ]
    set fg $argv[2]
  else
    set fg normal
  end
  if [ "$current_bg" != 'NONE' -a "$argv[1]" != "$current_bg" ]
    set_color -b $bg
    set_color $current_bg
    echo -n "$segment_separator "
    set_color -b $bg
    set_color $fg
  else
    set_color -b $bg
    set_color $fg
    echo -n " "
  end
  set current_bg $argv[1]
  if [ -n "$argv[3]" ]
    echo -n -s $argv[3] " "
  end
end

function prompt_finish -d "Close open segments"
  if [ -n $current_bg ]
    set_color -b normal
    set_color $current_bg
    echo "✨  "
  end
  set -g current_bg NONE
end


#
# Components
#
function prompt_virtual_env -d "Display Python virtual environment"
  if test "$VIRTUAL_ENV"
    prompt_segment white black (basename $VIRTUAL_ENV)
  end
end


function prompt_user -d "Display current user if different from $default_user"
  set -l BG 1C1C1C
  set -l FG FFFFFF

  if [ "$theme_display_user" = "yes" ]
    if [ "$USER" != "$default_user" -o -n "$SSH_CLIENT" ]
      set USER (whoami)
      get_hostname
      if [ $HOSTNAME_PROMPT ]
        set USER_PROMPT "$USER@$HOSTNAME_PROMPT "
      else
        set USER_PROMPT $USER
      end
      prompt_segment $BG $FG $USER_PROMPT
    end
  else
    get_hostname
    if [ $HOSTNAME_PROMPT ]
      prompt_segment $BG $FG $HOSTNAME_PROMPT
    end
  end
end

function get_hostname -d "Set current hostname to prompt variable $HOSTNAME_PROMPT if connected via SSH"
  set -g HOSTNAME_PROMPT ""
  if [ "$theme_hostname" = "always" -o \( "$theme_hostname" != "never" -a -n "$SSH_CLIENT" \) ]
    set -g HOSTNAME_PROMPT (hostname)
  end
end


function prompt_dir -d "Display the current directory"
  prompt_segment 444444 FFFFFF (prompt_pwd)
end


function prompt_git -d "Display the current git state"
  set -l ref
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set ref (command git symbolic-ref HEAD 2> /dev/null)
    if [ $status -gt 0 ]
      set -l branch (command git show-ref --head -s --abbrev |head -n1 2> /dev/null)
      set ref "➦ $branch "
    end
    set branch_symbol \uE0A0
    set -l branch (echo $ref | sed  "s-refs/heads/-$branch_symbol -")

    set -l BG PROMPT
    set -l dirty (command git status --porcelain --ignore-submodules=dirty 2> /dev/null)
    if [ "$dirty" = "" ]
      set BG C5A3FF
      set PROMPT "$branch"
    else
      set BG FFB8D1
      set dirty ''

      # Check if there's any commit in the repo
      set -l empty 0
      git rev-parse --quiet --verify HEAD > /dev/null ^&1; or set empty 1

      set -l target
      if [ $empty = 1 ]
        # The repo is empty
        set target '4b825dc642cb6eb9a060e54bf8d69288fbee4904'
      else
        # The repo is not emtpy
        set target 'HEAD'

        # Check for unstaged change only when the repo is not empty
        set -l unstaged 0
        git diff --no-ext-diff --ignore-submodules=dirty --quiet --exit-code; or set unstaged 1
        if [ $unstaged = 1 ]; set dirty $dirty'●'; end
      end

      # Check for staged change
      set -l staged 0
      git diff-index --cached --quiet --exit-code --ignore-submodules=dirty $target; or set staged 1
      if [ $staged = 1 ]; set dirty $dirty'✚'; end

      # Check for dirty
      if [ "$dirty" = "" ]
        set PROMPT "$branch"
      else
        set PROMPT "$branch $dirty"
      end
    end
    prompt_segment $BG black $PROMPT
  end
end


function prompt_status -d "the symbols for a non zero exit status, root and background jobs"
    if [ $RETVAL -ne 0 ]
      prompt_segment black red "✘"
    end

    # if superuser (uid == 0)
    set -l uid (id -u $USER)
    if [ $uid -eq 0 ]
      prompt_segment black yellow "⚡"
    end

    # Jobs display
    if [ (jobs -l | wc -l) -gt 0 ]
      prompt_segment black cyan "⚙"
    end
end

function available -a name -d "Check if a function or program is available."
  type "$name" ^/dev/null >&2
end

function prompt_time
  prompt_segment black white (date "+%H:%M:%S")
end

function fish_mode_prompt --description 'Displays the current mode'
  switch $fish_bind_mode
      case default
          set_color --bold --background C5A3FF FFFFFF
          echo '[COM]'
      case insert
          set_color --bold --background FFB8D1 FFFFFF
          echo '[INS]'
      case visual
          set_color --bold --background C5A3FF FFFFFF
          echo '[VIS]'
  end
  set_color normal
end

#
# Prompt
#
function fish_prompt
  set -g RETVAL $status
  prompt_time
  prompt_status
  prompt_virtual_env
  prompt_user
  prompt_dir
  available git; and prompt_git
  echo
  prompt_finish
end
