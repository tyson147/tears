require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['TARGET_HOST']

options = Net::SSH::Config.for(host)

options[:user] ||= 'ubuntu'

set :host,        options[:host_name] || host
set :ssh_options, options
set :path , '/root/.rbenv/plugins/ruby-build/bin:/root/.rbenv/shims:/root/.rbenv/bin:/root/.rbenv/plugins/ruby-build/bin:/root/.rbenv/shims:/root/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'