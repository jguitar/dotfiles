# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# setup zsh
alias zshconfig="mate ~/.zshrc"
alias vzshconfig="vim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias sz='source ~/.zshrc'
alias mz='mate -w ~/.zshrc && sz'
alias vz='mvim ~/.zshrc && sz'

# projects
alias rnk='cd ~/source/work/rankia'
alias rnk2='cd ~/source/work/rankia2'
alias vrm='cd ~/source/work/verema'
alias mim='cd ~/source/work/mimandote'
alias agp='cd ~/source/work/aguapasion'
alias emg='cd ~/source/work/emergia'
alias tvrm='cd ~/source/work/tienda-verema'
alias ntm='cd ~/source/work/news_tematica'
alias dfr='cd ~/source/dotfiles'
alias src='cd ~/source'

# rails (webrick with debugger)
alias s1='rails s -u -p 3001'
alias s2='rails s -u -p 3002'
alias s3='rails s -u -p 3003'
alias s4='rails s -u -p 3004'
alias s5='rails s -u -p 3005'

# rails (puma)
alias p1='puma -p 3001'
alias p2='puma -p 3002'
alias p3='puma -p 3003'
alias p4='puma -p 3004'
alias p5='puma -p 3005'

# rails (unicorn)
alias u1='unicorn --port 3001'
alias u2='unicorn --port 3002 --config-file config/unicorn.rb'

# other alias
alias miip="ifconfig | ack 'inet.*broadcast'"
alias fuck_hashrockets="perl -pi -e 's/:([\w\d_]+)(\s*)=>/\1:/g'"
alias testall='rspec spec/. --require rspec/instafail --format RSpec::Instafail && jasmine-headless-webkit --color'

# git
alias gds='git diff --staged'
alias gl2='git log --oneline'

pasar_horas() { git log --since="$@" --pretty=format:"%Cblue%h %Cred%an %Cgreen%ai %Creset- %s" --author=Juan --no-merges }

# termit
alias ten='termit en es'
alias tes='termit es en'

export BUNDLER_EDITOR=mate

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/mysql/bin:$PATH
