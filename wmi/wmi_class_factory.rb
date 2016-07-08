require_relative '../filter/nil_with_filter'
require_relative '../base/base_class_factory'

module Nanotek

  class WmiClassFactory < BaseClassFactory
    
            attr_reader(:class_name , :properties , :path)  
              
            def initialize *args
              cc = args.flatten[0] unless args[0].nil?
              with_properties(with_root_path(with_class_name(cc)))
            end
            
            def create_instance
                Struct.new(:class_name , :properties , :path).new(@class_name , @properties ,@path)
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
                  @properties = configuration_class.properties if  configuration_class.respond_to?'properties'
                  @properties.reject {|property|
                     property if Nanotek::NilWithFilter.accept(property) 
                  } 
                  raise ArgumentError , "Class not well formed, no properties found." if @properties.nil?
                end  
                
    
  end

end


