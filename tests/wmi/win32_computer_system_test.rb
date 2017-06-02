require 'yaml'
require 'psych'
require 'minitest/autorun'

require_relative '../../wmi/wmi_service'
require_relative '../../wmi/wmi_class_factory'
require_relative '../../wmi/wmi_class_definition'
require_relative '../../wmi/wmi_service_configurator'
require_relative '../../wmi/wmi_configuration_factory'
require_relative '../../serializers/yaml_unmarshaller'
require_relative '../../wmi/wmi_result_class_transformer'
require_relative '../../decorator/wmi_class_definition_instance_hash_decorator'

module Nanotek 

  MODEL_PATH = Utils::DEFAULT_CLASS_LOCATION
  CS_FILE = "Win32_ComputerSystem.yml"
  
    class  Win32ComputerSystemTest < Minitest::Test
      
      def setup
        YamlUnMarshaller.unmarshall([MODEL_PATH , CS_FILE])
      end
    #  WmiServiceConfigurator
      def test_system_32
        dto_hash = Array.new
        wcf = Nanotek::WmiClassFactory.new($class_loaded["Win32_ComputerSystem"])
        wmi_service = Nanotek::WmiService.new(wcf)
        wmi_service.get_instances.each do |instance|
          dto_hash.push(Win32ComputerSystemTest.convert_instance_result_into_hash(instance))
         end
       puts dto_hash
      end
      
        def Win32ComputerSystemTest.convert_instance_result_into_hash instance
            WmiClassDefinitionInstanceHashDecorator.new.convertible?(instance).instance_hash
      end  
        
    end
end