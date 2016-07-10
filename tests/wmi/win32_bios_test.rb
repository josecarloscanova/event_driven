require 'yaml'
require 'psych'
require 'minitest/autorun'
require_relative '../../wmi/wmi_service'
require_relative '../../wmi/wmi_class_factory'
require_relative '../../wmi/wmi_class_definition'
require_relative '../../wmi/wmi_service_configurator'
require_relative '../../wmi/wmi_configuration_factory'
require_relative '../../wmi/wmi_result_class_transformer'
require_relative '../../decorator/wmi_class_definition_instance_hash_decorator'
require_relative '../../serializers/yaml_unmarshaller'

module Nanotek 

    MODEL_PATH = "C:/cygwin64/home/user/event_driven/wmi/classes/yaml/"
    BIOS_FILE = "Win32_BIOS.yml"
  
    class  Win32SystemBiosTest < Minitest::Test
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end
      
#  WmiServiceConfigurator
      def test_system_32
        dto_hash = Array.new
        wcf = Nanotek::WmiClassFactory.new($class_loaded["Win32_BIOS"])
        wmi_service = Nanotek::WmiService.new(wcf)
        wmi_service.get_instances.each do |instance|
          dto_hash.push(Win32SystemBiosTest.convert_instance_result_into_hash(instance))
        end
        puts dto_hash
      end

      def Win32SystemBiosTest.convert_instance_result_into_hash instance
          WmiClassDefinitionInstanceHashDecorator.new.convertible?(instance).instance_hash
      end            
#      WmiClassDefinitionInstanceHashDecorator.new.convertible?(wmi_service.get_instances).instance_hash
    end
    
end