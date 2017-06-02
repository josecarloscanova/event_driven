require 'webrick'
require 'rack'
require_relative 'application_context'
require_relative 'wmi_application_context'
require_relative './web/servlet/simple'
require_relative './web/servlet/configurable'

module Nanotek
  
  WEBrick::HTTPServer
  
  class WebApplicationContext < ApplicationContext
    
    
    def WebApplicationContext.configure_application_context
#      config = {:Port => 8888 , :DocumentRoot  => "C:/opscode/docs/build"}
#      #config = {:Port => 8888 , :DocumentRoot  => "C:/opscode/chefdk/embedded/bin/doc/"}
#      server = WEBrick::HTTPServer.new config
#      server.mount "c:/temp", WEBrick::HTTPServlet::FileHandler, './'
##      server.mount '/simple', Simple
#      trap('INT') { server.stop }
#      server.start
      #           app = Proc.new do |env|
      #                  ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
      #           end       
#      Rack::Handler::WEBrick.run app
      if WebApplicationContext.loaded_wmi_context? then
              config = {:Port => 8888 , :DocumentRoot  => "C:/Ruby23-x64/lib/ruby/gems/2.2.0/gems/webrick-1.3.1/lib/doc"}
              #config = {:Port => 8888 , :DocumentRoot  => "C:/opscode/chefdk/embedded/bin/doc/"}
              server = WEBrick::HTTPServer.new config
              server.mount "c:/temp", WEBrick::HTTPServlet::FileHandler, './'
              server.mount '/simple', Simple
              server.mount '/configurable', Configureable, 'red', '2em'
              trap('INT') { server.stop }
              server.start
      end        
    end
    
    def WebApplicationContext.loaded_wmi_context?
        WmiApplicationContext.configure_application_context
        $wmi_context = WmiContext 
       true 
    end
      
  end
  
end  