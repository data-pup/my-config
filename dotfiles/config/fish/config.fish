# Fish configuration file.

# Set vi mode.
fish_vi_key_bindings

# Load personal config modules from `.config/fish/init.d`
source ~/.config/fish/init.d/abbreviations.fish
source ~/.config/fish/init.d/aliases.fish
source ~/.config/fish/init.d/prompt.fish

# Read Markdown files with lynx and pandoc.
function md --description 'convert a markdown file to html and read with lynx'
    pandoc $argv[1] | lynx -stdin
end

# Uses fd as default command showing also hidden files
set -g -x FZF_DEFAULT_COMMAND "fd --hidden"

# Uses fd as default command showing also hidden files
set -g -x FZF_CTRL_T_COMMAND "fd --hidden --files"

# If current selection is a text file shows its content,
# if it's a directory shows its content, the rest is ignored
set -g -x FZF_CTRL_T_OPTS "--no-height --preview-window wrap --preview '
if [[ -f {} ]]; then
    file --mime {} | grep -q \"text\/.*;\" && bat --color \"always\" {} || (tput setaf 1; file --mime {})
elif [[ -d {} ]]; then
    exa --long --color=always {}
else;
    tput setaf 1; echo Something went wrong!
fi'"

# Use `exa` to preview directories when using Alt+c.
set -g -x FZF_ALT_C_OPTS "--no-height --preview 'exa --long --color=always {} | head -200'"

# Set gitconfig alias environment for branch reviews.
set -g -x REVIEW_BASE 'master'

# Print a fortune if cowsay/fortune are installed.
if command -sq cowthink; and command -sq fortune
    fortune -s | cowthink -f whale
end
