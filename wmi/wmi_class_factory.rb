require_relative '../base/base_class_factory'

module Nanotek

  class WmiClassFactory < BaseClassFactory
    
            def initialize *args
              cc = args.flatten[0] unless args[0].nil?
#              raise ArgumentError , "Invalid parameters for configuration " unless cc.nil?
              with_properties(with_root_path(with_class_name(cc)))
            end
            
            def create_instance
                Struct.new(:class_name , :properties).new(@class_name , @sym_array)
            end  
            
            private 
            
                def with_class_name configuration_class
                    @class_name = configuration_class.name unless configuration_class.nil?
                    raise ArgumentError , "No class name found on #{configuration_class}" if @class_name.nil?
                  configuration_class
                end  
                
                def with_root_path configuration_class
                    @path = configuration_class.path
                    raise ArgumentError , "No path name found on #{configuration_class}" if @path.nil?
                  configuration_class 
                end
                
                def with_properties configuration_class
                  @class_properties = configuration_class.properties if  configuration_class.respond_to?'properties'
                  create_process_class unless @class_properties.nil? 
                end  
                
                def create_process_class
                    @sym_array = Array.new
                    @class_properties.select {|k|
                      case 
                      when (k.nil? && k.with.nil?) == false then 
                            @sym_array.push(k) 
                      end
                    }
            end  
    
  end

end


