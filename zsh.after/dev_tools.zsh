# nvm setup
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# ruby gems as executable
# export PATH=~/.gem/ruby/2.3.0/bin:$PATH

# Create a JAVA_HOME variable, determined dynamically
export JAVA_HOME=$(/usr/libexec/java_home)
# Add that to the global PATH variable
export PATH=${JAVA_HOME}/bin:$PATH
# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk/
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
#Set GRADLE_HOME
# export GRADLE_HOME=/Library/gradle/gradle-3.2
# export PATH=$PATH:$GRADLE_HOME/bin
