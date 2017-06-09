require_relative 'application_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_class_definition'
require_relative '../wmi/wmi_class_factory'

module Nanotek
  
    class WmiApplicationContext < ApplicationContext
      
        
          def WmiApplicationContext.configure_application_context
            $wmi_configurations=[]
            $wmi_services=[]
                          puts "loading context"
                                  if $wmi_application_context_loaded.nil? || $wmi_application_context_loaded == false then
                                    WmiClassLoader::new
#TODO: Fix the classloader, enhance the class design.
                                    $wmi_class_loader.each do |k , v|
#TODO: DO better... fix the class loading strategy.
                                      cf = Nanotek::WmiClassFactory.new v
                                      wmi_service = Nanotek::WmiService.new(cf)
                                      puts k.inspect
                                    end  
                                    $wmi_application_context_loaded = true
                                   end
            true  
          end
#TODO: Understand the need of this methods.      
          def find_wmi_configuration_by_name wmi_name
              $wmi_configurations.select {|k| k.name == wmi_name}
          end
 
          def find_wmi_configuration_by_path wmi_path
              $wmi_configurations.select {|k| k.location == wmi_path}
          end

    end
    
    
end
#
wmi_class_loader = Nanotek::WmiApplicationContext.new{Nanotek::WmiApplicationContext.configure_application_context}.join
#puts wmi_class_loader.to_s
#puts  $wmi_class_loader.to_s