require_relative '../base/base_class_factory'

module Nanotek

  class WmiClassFactory < BaseClassFactory
    
            attr_reader(:process_class)
    
            def initialize *args
              cc = args.flatten[0] unless args[0].nil?
              raise ArgumentError , "Invalid parameters for configuration " unless with_properties(with_root_path(with_class_name(cc))) == true  
            end
            
            def with_class_name configuration_class
                @class_name = configuration_class.name
                raise ArgumentError , "No class name found on #{configuration_class}" if @class_name.nil?
              configuration_class
            end  
            
            def with_root_path configuration_class
                @path = configuration_class.path
                raise ArgumentError , "No class name found on #{configuration_class}" if @path.nil?
              configuration_class 
            end
            
            def with_properties configuration_class
              @class_properties = configuration_class.properties if  configuration_class.respond_to?'properties'
              @class_properties.nil? ? false : true
            end  
            
            def create_process_class
                sym_array = Array.new
                @class_properties.each do |values|
                  sym_array.push(values.with.to_sym)
                end  
            @process_class = Struct.new(@class_name , :properties)
            end  
    
  end

end

@configuration_class = Struct.new(:path , :name, :properties)
@property = Struct.new(:with)

cc = @configuration_class.new("Path" ,  "Name")

properties = Array.new
properties.push(@property.new("property1"))
properties.push(@property.new("property2"))
properties.push(@property.new("property3"))
cc.properties = properties

wmicf = Nanotek::WmiClassFactory.new cc
wmicf.create_process_class

puts wmicf.process_class.members
