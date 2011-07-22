#!/usr/bin/env ruby

cwd = File.expand_path(File.dirname(__FILE__))

homedir = ENV['HOME']
bashrc = File.join(homedir, ".bashrc")
vimrc = File.join(homedir, ".vimrc")

# install the bashrc custom file
open(bashrc, "a") do |file|
 file.puts "source #{File.join cwd, "bashrc"} #{cwd}"
end

# install the vimrc custom file
open(vimrc, "a") do |file|
 file.puts "source #{File.join cwd, "vimrc"}"
end

# finally reload the bashrc file
system "source #{bashrc}"
