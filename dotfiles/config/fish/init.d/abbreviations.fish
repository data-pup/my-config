# Add abbreviations to shell.
if status --is-interactive
  set -g fish_user_abbreviations

  # Git abbreviations
  abbr --add ga 'git add -p'
  abbr --add gaup 'git add -up'
  abbr --add gb 'git --no-pager branch'
  abbr --add gbv 'git --no-pager branch -vv'
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

  # Watch Git abbreviations.
  abbr --add watchgs 'watch -n 10 --color git -c color.status=always status --short'
  abbr --add watchgl "watch -n 10 --color git log --graph --decorate --pretty=oneline --branches --color=always"
  abbr --add watchgdc 'watch --color -n 5 git diff --cached --color=always'
end
