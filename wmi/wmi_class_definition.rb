module Nanotek
      class ClassDefinition
            
            attr_accessor(:name , :path , :properties)
            
            def initialize 
            end  
            
            def with_name_path hash
                  @name = hash.keys[0]
                  @path = hash.values[0]
              self
            end  
            
            def with_properties properties
                @properties = properties
              self  
            end
            
      end 
end