require_relative 'application_context'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_context'

module Nanotek
  
    class WmiApplicationContext < ApplicationContext
      
        protected 
        
          def WmiApplicationContext.configure_application_context
            tap {          
                                  if $wmi_application_context_loaded.nil? || $wmi_application_context_loaded == false then
                                       wmisc = WmiServiceConfigurator.new
                                       wmisc.wmi_configurations.each {
                                           |p|
                                         wmiservice  = WmiService.new(p)
                                         WmiContext.add_service wmiservice.service_record_configuration ,  wmiservice
                                       }
                                    $wmi_application_context_loaded = true
                                   end
              }
          end
         
    end
end