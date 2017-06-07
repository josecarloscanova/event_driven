require 'minitest/autorun'

require_relative '../wmi/wmi_class_loader'
require_relative '../wmi/wmi_class_definition'
require_relative 'wmi/test_base'
require_relative '../serializers/yaml_unmarshaller'

class WmiClassLoaderTest < Nanotek::TestBase
  def setup
  end

  #TODO: Fix the class name for that classes can be used on
  def test_wmi_class_loader_test
    Nanotek::WmiClassLoader::new.classes
    $wmi_class_loader.each{|k,v|
      wcf = Nanotek::WmiClassFactory.new(v)
      wmi_service = Nanotek::WmiService.new(wcf)
      wmi_service.get_instances.each do |instance|
        Thread.new{WmiClassLoaderTest.process_instance(instance)}.join
      end
    }

    def transform_result_class instances , class_definition
      instances.each{|instance|
        read_first_result_properties instance , class_definition
      }
    end
  end

  def WmiClassLoaderTest.process_instance instance
    puts instance[1].first_of.inspect
  end
end