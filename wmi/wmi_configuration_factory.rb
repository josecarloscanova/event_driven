module Nanotek
    class WmiConfigurationFactory
        
        def WmiConfigurationFactory.get_empty_service_record
          @@service_record.new
        end
        
        def WmiConfigurationFactory.record_with wmi_class_factory
          verify_record wmi_class_factory
          @@service_record.new(wmi_class_factory.class_name , wmi_class_factory.path)
        end  
        
        private
        
        def WmiConfigurationFactory.verify_record content
         raise ArgumentError , 'Wrong number of arguments' unless @@service_record.members.select{|k|
                content.instance_variable_defined?"@#{k}"
                }.length == @@service_record.members.length
        end
        
        @@service_record = Struct.new(:class_name , :path)
    
    end
end