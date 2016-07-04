require_relative 'application_context'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_context'

module Nanotek
    class WmiApplicationContext < ApplicationContext
      
        protected 
        
          def WmiApplicationContext.configure_application_context
            Thread.new {          
                                  if $wmi_application_context_loaded.nil? || $wmi_application_context_loaded == false then
                                      puts "Starting configuration"
                                       wmisc = WmiServiceConfigurator.new
                                       wmisc.wmi_configurations.each {
                                           |p|
                                         wmiservice  = WmiService.new(p)
                                         WmiContext.add_service wmiservice.service_record_configuration ,  wmiservice
                                       }
                                    $wmi_application_context_loaded = true
                                   end
              }.join                         
          end
         
#          private
#          
#               def prepare wmi_instance
#                  WmiContext.add_service wmi_instance.service_record_configuration ,  wmi_instance
#               end
               
               
               
          #            @@base_context[:wmi] = {:reference => '$wmi_context'}
          #            @@base_context[:event] = {:reference => '$event_context'}
    
    
    end
end