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
require_relative '../../util/utils'


module Nanotek 

    MODEL_PATH = Utils::DEFAULT_CLASS_LOCATION
    BIOS_FILE = "Win32_BIOS.yml"

    class  Win32SystemBiosTest < Minitest::Test

      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end

#  WmiServiceConfigurator
      def test_win32_bios
        dto_hash = Array.new
        wcf = Nanotek::WmiClassFactory.new($wmi_class_loader["Win32_BIOS"])
        wmi_service = Nanotek::WmiService.new(wcf)
        wmi_service.get_instances.each do |instance|
          transform_result_class_class instance[1].first_of
        end
      end

      def transform_result_class_class wmi_first_of_result
          class_definition = $wmi_class_loader["Win32_BIOS"]
          read_first_result_properties wmi_first_of_result , class_definition
      end
      
      def read_first_result_properties  wmi_first_of_result , class_definition
          properties = class_definition.properties
        properties.select {|k|
          puts wmi_first_of_result[0][k.with]
        }
      end
      
    end

end