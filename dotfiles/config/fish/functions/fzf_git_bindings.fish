function fzf_git_bindings
  # TODO: This should probably be moved into fish.config
  export FZF_CTRL_T_COMMAND='rg --files --hidden'

  # TODO: Add fish equivalents to zsh's git bindings.

  function is_in_git_repo -d "Check if currently in a git repository"
    git rev-parse HEAD > /dev/null 2>&1
  end

  function fzf-git-file-widget -d "Test fzf widget"
    is_in_git_repo; or return
    set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
    begin
      set -lx FZF_DEFAULT_OPTS "--height $FZF_TMUX_HEIGHT $FZF_DEFAULT_OPTS --tiebreak=index -m"
      git -c color.status=always status --short | \
        eval (__fzfcmd) -m --ansi --nth 2..,..  | \
        cut -c4- | \
        sed 's/.* -> //' | \
        while read -l r; set result $result $r; end
    end

    if [ -z "$result" ]
      commandline -f repaint
      return
    else
      # Remove last token from commandline.
      commandline -t ""
    end
    for i in $result
      commandline -it -- (string escape $i)
      commandline -it -- ' '
    end
    commandline -f repaint
  end

  # Bind file widget to Ctrl+g, Ctrl+f
  bind \cg\cf fzf-git-file-widget
  if bind -M insert > /dev/null 2>&1
    bind -M insert \cg\cf fzf-git-file-widget
  end
end
