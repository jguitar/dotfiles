# Qt
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# Some fix: https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Flutter and tools (e.g. Webdev)
export PATH=$PATH:~/Documents/source/flutter/bin
export PATH=$PATH:~/Documents/source/flutter/bin/cache/dart-sdk/bin
export PATH=$PATH:$HOME/.pub-cache/bin
