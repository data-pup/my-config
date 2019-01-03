set -o vi

alias watch-git-status='watch --color -n 8 git -c status.color=always status'
alias watch-git-branch='watch --color -n 8 git branch -vva --color=always'
alias watch-git-diff='watch -n 8 --color git diff --stat --color=always'
alias watch-git-diff-cache='watch -n 8 --color git diff --stat --cached --color=always'
alias watch-git-log='watch --color -n 8 git log --oneline --graph --decorate --remotes --branches --color=always'

