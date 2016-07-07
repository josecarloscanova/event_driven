require 'minitest/autorun'
require_relative '../decorator/wmi_class_definition_instance_hash_decorator'
require_relative '../wmi/wmi_class_definition'
module Nanotek

    class WmiClassDefinitionInstanceHashDecoratorTest< Minitest::Test
      
      
      def setup
        @class_definition_instance_decorator = Nanotek::WmiClassDefinitionInstanceHashDecorator.new
      end
      
      
      def test_convert_class_defitinion_instance_tohash
          wmicd =  Nanotek::WmiClassFactoryTest.new.with_wmi_class_definition
          @class_definition_instance_decorator.convertible?wmicd
      end
      
    end
    
#  class ClassDefinition
#              
#              attr_reader(:properties)
#              attr_accessor(:name , :path)
#              
#              def initialize 
#              end  
#              
#              def with_name_path hash
#                    @name = hash.keys[0]
#                    @path = hash.values[0]
#                self
#              end  
#              
#              def with_properties properties
#                  @properties = properties
#                self  
#              end
#              
#        end 
    
    class WmiClassFactoryTest  
    
        def initialize
        end
    
        def  with_wmi_class_definition
          
          cc = Nanotek::ClassDefinition.new
          
          cc.with_name_path({:name => "name" , :path => "path"})
          @property = Struct.new(:with)
          properties = Array.new
          properties.push(@property.new("property1"))
          properties.push(@property.new("property2"))
          properties.push(@property.new("property3"))
          cc.with_properties  properties
        end
        
        
    end

end