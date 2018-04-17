# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Java setup with Android Studio
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/build-tools/27.0.3:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export GRADLE_HOME=/Applications/Android\ Studio.app/Contents/gradle/gradle-3.2
export PATH=$PATH:$GRADLE_HOME/bin

# rvm setup
export PATH=${HOME}/.rvm/gems/ruby-2.4.1/bin:$PATH
