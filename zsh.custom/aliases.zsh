# Git Aliases
alias ga='git add -A'
alias gcf='git commit --fixup'
alias gcm='git commit --message'
alias gdc='git diff --cached -w'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias gs='git status'
alias gst='git stash'
alias wip="ga && gcm 'wip --skip-ci'"