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

# Set gitconfig alias environment for branch reviews.
set -g -x REVIEW_BASE 'master'

# Print a fortune if cowsay/fortune are installed.
if command -sq cowthink; and command -sq fortune
    fortune -s | cowthink -f whale
end
