require 'rake'
require 'fileutils'

desc "Hook our dotfiles into system-standard positions."
task :install do
  puts
  puts "======================================================"
  puts "Welcome to dotfiles installation."
  puts "======================================================"
  puts

  # this has all the runcoms from this directory.
  file_operation('gitconfig.user') if want_to_install?('git config.user')
  file_operation('vimrc.before') if want_to_install?('vimrc before')
  file_operation('zsh.after/aliases.zsh', '.zsh.after/aliases.zsh') if want_to_install?('aliases')
  file_operation('zsh.after/prompt.zsh', '.zsh.after/prompt.zsh') if want_to_install?('set prompt')
  file_operation('zsh.after/dev_tools.zsh', '.zsh.after/dev_tools.zsh') if want_to_install?('dev_tools setup')
  file_operation('zsh.after/heroku.zsh', '.zsh.after/heroku.zsh') if want_to_install?('heroku setup')
  file_operation('zsh.after/heroku-backup.zsh', '.zsh.after/heroku-backup.zsh') if want_to_install?('heroku backup setup')
end

task :default => 'install'

private

def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end

def want_to_install? (section)
  if ENV["ASK"]=="true"
    puts "Would you like to install configuration files for: #{section}? [y]es, [n]o"
    STDIN.gets.chomp == 'y'
  else
    true
  end
end

def file_operation(file, target_file = nil, method = :symlink)
  source = "#{ENV["PWD"]}/#{file}"
  target = target_file ? "#{ENV["HOME"]}/#{target_file}" : "#{ENV["HOME"]}/.#{file}"

  puts "======================#{file}=============================="
  puts "Source: #{source}"
  puts "Target: #{target}"

  if File.exist?(target) && (!File.symlink?(target) || (File.symlink?(target) && File.readlink(target) != source))
    puts "[Overwriting] #{target}...leaving original at #{target}.backup..."
    run %{ mv "$HOME/.#{file}" "$HOME/.#{file}.backup" }
  end

  if method == :symlink
    run %{ ln -nfs "#{source}" "#{target}" }
  else
    run %{ cp -f "#{source}" "#{target}" }
  end

  puts "=========================================================="
  puts
end
