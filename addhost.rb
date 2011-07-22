#!/usr/bin/env ruby

if ARGV.length == 0
  puts "usage: #{File.basename(__FILE__)} HOSTNAME"
  exit(1)
end

open("/etc/hosts", "a") do |file|
  file.puts "127.0.0.1 #{ARGV.first}"
end
