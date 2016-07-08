require 'logger'
#TODO: remove logger
module Nanotek
    class WmiConfigurationFactory
        
        @logger = Logger.new(STDOUT)
        @logger.level = Logger::WARN
      
        def WmiConfigurationFactory.get_empty_service_record
          @@service_record.new
        end
        
        def WmiConfigurationFactory.record_with content
          @logger.debug content
          verify_record content
          @@service_record.new(content.class_name , content.path)
        end  
        
        private
        
        def WmiConfigurationFactory.verify_record content
         raise ArgumentError , 'Wrong number of arguments' unless @@service_record.members.select{|k,v|
                content.respond_to?k
                }.length <= @@service_record.members.length
        end
        
        @@service_record = Struct.new(:class_name , :path)
    
    end
end