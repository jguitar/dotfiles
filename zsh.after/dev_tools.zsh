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

# Qt
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# Some fix: https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH=$PATH:~/Documents/source/flutter/bin
