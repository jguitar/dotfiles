alias ngk="~/Downloads/ngrok http -subdomain=jguitar 3000"
eval "$(hub alias -s)"
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
alias gcf="git commit --fixup"
alias rub="gd develop --name-only | grep -v 'db/schema.rb$' | grep '.*.rb$' | xargs spring rubocop -a"
alias gbclean="git for-each-ref refs/heads/ --format='%(refname:short)' | grep -v '^master$' | grep -v '^develop$' | xargs git branch -d"
alias wip="ga && gcm 'wip'"
