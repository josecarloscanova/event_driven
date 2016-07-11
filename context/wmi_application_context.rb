require_relative 'application_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service_configurator'

module Nanotek
  
    class WmiApplicationContext < ApplicationContext
      
        protected 
        
          def WmiApplicationContext.configure_application_context
            Thread.new {          
                                  if $wmi_application_context_loaded.nil? || $wmi_application_context_loaded == false then
                                    cl = WmiClassLoader::new
                                    cl.classes.each do |clazz|
                                       
                                    end
                                    #                                        wmisc = WmiServiceConfigurator.new
#                                       wmisc.wmi_configurations.each {
#                                           |p|
#                                         wmiservice  = WmiService.new(p)
#                                         WmiContext.add_service wmiservice.service_record_configuration ,  wmiservice
#                                       }
                                    $wmi_application_context_loaded = true
                                   end
              }.join
            true  
          end
         
    end
end