require 'rubygems/server'

gem_server = Gem::Server.new Gem.dir, 8089, false
gem_server.run