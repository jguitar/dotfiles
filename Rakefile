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
  file_operation(Dir.glob('bash_profile')) if want_to_install?('bash: config and aliases')
  file_operation(Dir.glob(['gitconfig gitignore_global'])) if want_to_install?('git config')
  file_operation(Dir.glob(['vimrc.before', 'vimrc.after'])) if want_to_install?('vim setup with janus plugins')
  file_operation(Dir.glob('irbrc')) if want_to_install?('irb setup')
  file_operation(Dir.glob('ackrc')) if want_to_install?('ack setup')
  file_operation(Dir.glob('inputrc')) if want_to_install?('iTerm keys setup')
  file_operation(Dir.glob('rspec')) if want_to_install?('RSpec setup')
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

def file_operation(files, method = :symlink)
  files.each do |f|
    file = f.split('/').last
    source = "#{ENV["PWD"]}/#{f}"
    target = "#{ENV["HOME"]}/.#{file}"

    puts "======================#{file}=============================="
    puts "Source: #{source}"
    puts "Target: #{target}"

    if File.exists?(target) && (!File.symlink?(target) || (File.symlink?(target) && File.readlink(target) != source))
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
end