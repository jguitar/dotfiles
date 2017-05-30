# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# virtualenv setup
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

# ruby gems as executable
export PATH=~/.gem/ruby/2.3.0/bin:$PATH

source ~/.bin/tmuxinator.zsh

# android sdk and some tools
export ANDROID_HOME=~/Android/Sdk
export PATH=ANDROID_HOME:$PATH
export PATH=$PATH:/usr/local/jdk1.8.0_131/bin:/usr/local/android-studio/gradle/gradle-3.2/bin
