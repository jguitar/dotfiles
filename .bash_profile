# Alias para proyectos
alias rnk='cd ~/source/work/rankia'
alias rnk2='cd ~/source/work/rankia2'
alias vrm='cd ~/source/work/verema'
alias agp='cd ~/source/work/aguapasion'
alias mim='cd ~/source/work/mimandote'
alias emg='cd ~/source/work/emergia'
alias abm='cd ~/source/rails-samples/about_me'
alias src='cd ~/source'

alias s1='rails s -p 3001'
alias s2='rails s -p 3002'
alias s3='rails s -p 3003'
alias s4='rails s -p 3004'
alias s5='rails s -p 3005'

alias p1='puma -p 3001'
alias p2='puma -p 3002'
alias p3='puma -p 3003'
alias p4='puma -p 3004'
alias p5='puma -p 3005'

alias s1u='rails s -u -p 3001'
alias s2u='rails s -u -p 3002'
alias s3u='rails s -u -p 3003'
alias s4u='rails s -u -p 3004'
alias s5u='rails s -u -p 3005'

alias rdbm='rake db:migrate'
alias rdbp='rake db:test:prepare'
alias rdbmp='rdbm && rdbp'
alias tdl='tail -f log/development.log'
alias rc='rails c'
alias rcu='rails c test --debugger'
alias rdb='rails dbconsole'

alias testall='rspec spec/. --require rspec/instafail --format RSpec::Instafail && jasmine-headless-webkit --color'

alias kruby='ps agxl | grep ruby'

# Alias de git
alias gst='git status -sb'
# alias gd='git diff | mate'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --branches'

# Alias de bash
alias mbp='mate ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias vbp='vim ~/.bash_profile && sbp'

# Pinta de colorines el git e imprime el branch actual
parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\[\e[1;37m\][\[\e[1;35m\]\@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'

# Load RVM into a shell session *as a function*

# Para el homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export BUNDLER_EDITOR='mate'

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
