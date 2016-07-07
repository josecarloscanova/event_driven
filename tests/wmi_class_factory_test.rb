require 'minitest/autorun'
require_relative '../wmi/wmi_class_factory'


class WmiClassFactoryTest < Minitest::Test

    def setup
    end

    def  test_wmi_class_factory
      @configuration_class = Struct.new(:path , :name, :properties)
      @property = Struct.new(:with)
      
      cc = @configuration_class.new("Path" ,  "Name")
      
      properties = Array.new
      properties.push(@property.new("property1"))
      properties.push(@property.new("property2"))
      properties.push(@property.new("property3"))
      cc.properties = properties
      
      wmicf = Nanotek::WmiClassFactory.new cc
      puts wmicf.create_instance.to_h.to_s
    end
    
    
end