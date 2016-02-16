alias phantom="phantomjs --webdriver=8910 & PHANTOMJS=true bundle exec cucumber -p travis"
alias ngk="~/Downloads/ngrok http -subdomain=jguitar 3000"
eval "$(hub alias -s)"
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
alias gcf="git commit --fixup"
alias rub="git status -s | cut -c4- | ag '.rb$' | xargs rubocop -a"
