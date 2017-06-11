require_relative '../filter/nil_with_filter'
require_relative '../base/base_class_factory'

module Nanotek
  #TODO: Perform a validation and throw an exception case the constructor is called with wrong paramters.S
  class WmiClassFactory < BaseClassFactory
    
            attr_reader(:class_name , :properties , :path)  
              
            def initialize *args
              cd = args.flatten[0] unless args[0].nil?
              with_properties(with_root_path(with_class_name(cd)))
            end
            
            def create_instance
                Struct.new(:class_name , :properties , :path).new(@class_name , @properties , @path)
            end  
            
            private 
            
                def with_class_name class_definition
                    @class_name = class_definition.name unless class_definition.nil?
                    raise ArgumentError , "No class name found on #{class_definition}" if @class_name.nil?
                  class_definition
                end  
                
                def with_root_path class_definition
                    @path = class_definition.path
                    raise ArgumentError , "No path name found on #{class_definition}" if @path.nil?
                  class_definition 
                end
                
                def with_properties class_definition
                  @properties = class_definition.properties if  class_definition.respond_to?'properties'
                  verify_properties_consistency
                  @properties.reject {|property|
                     property if Nanotek::NilWithFilter.accept(property) 
                  } unless properties.nil?
                end  
                
#TODO: Fix exception for an alternative on                 
                def verify_properties_consistency
                  raise ArgumentError , "Class not well formed, no properties found." if @properties.nil?
                end
  end

end


