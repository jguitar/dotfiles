alias ngk="~/Downloads/ngrok http -subdomain=jguitar 3000"
eval "$(hub alias -s)"
alias gcf="git commit --fixup"
alias rub="gd develop --name-only | grep -v 'db/schema.rb$' | grep '.*.rb$' | xargs spring rubocop -a"
alias gbclean="git for-each-ref refs/heads/ --format='%(refname:short)' | grep -v '^main$' | grep -v '^master$' | grep -v '^develop$' | xargs git branch -d"
alias wip="ga && gcm 'wip --skip-ci'"
alias dc="docker-compose"
alias dcsetup="docker-compose run --rm web bin/setup"
# override default "git push --force"
alias gpf='git push --force-with-lease'
alias gpff='git push --force'
