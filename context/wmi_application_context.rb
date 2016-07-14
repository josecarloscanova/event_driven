require_relative 'application_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_class_definition'
require_relative '../wmi/wmi_class_factory'

module Nanotek
  
    class WmiApplicationContext < ApplicationContext
      
        protected 
        
          def WmiApplicationContext.configure_application_context
            $wmi_configurations=[]
            $wmi_services=[]
            Thread.new {
                                  if $wmi_application_context_loaded.nil? || $wmi_application_context_loaded == false then
                                    WmiClassLoader::new
#TODO: Fix the classloader, enhance the class design.
                                    $wmi_class_loader.each do |clazz|
#TODO: DO better... fix the class loading strategy.
                                      cf = Nanotek::WmiClassFactory.new clazz[1][clazz[0]]
                                      wmi_service = Nanotek::WmiService.new(cf)
                                    end  
                                    $wmi_application_context_loaded = true
                                   end
              }.join
            true  
          end
          
          def find_wmi_configuration_by_name wmi_path
              $wmi_configurations.select {|k| k.location == wmi_path}
          end
 
          def find_wmi_configuration_by_path wmi_path
              $wmi_configurations.select {|k| k.location == wmi_path}
          end

    end
    
    
end