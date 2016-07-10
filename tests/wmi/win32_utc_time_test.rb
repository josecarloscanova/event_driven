require 'yaml'
require 'psych'
require 'minitest/autorun'
require_relative '../../wmi/wmi_service'
require_relative '../../wmi/wmi_class_factory'
require_relative '../../wmi/wmi_class_definition'
require_relative '../../serializers/yaml_unmarshaller'
require_relative '../../wmi/wmi_result_class_transformer'
require_relative '../../decorator/wmi_class_definition_instance_hash_decorator'

module Nanotek 
  
    MODEL_PATH = "C:/cygwin64/home/user/event_driven/wmi/classes/yaml/"
    UTC_TIME_FILE = "Win32_UTCTime.yml" 
  
    class  Win32SystemServicesTest < Minitest::Test
      
      def setup
          YamlUnMarshaller.unmarshall([MODEL_PATH , UTC_TIME_FILE])
      end  
    #  WmiServiceConfigurator
      def test_system_32
        wcf = Nanotek::WmiClassFactory.new($class_loaded["Win32_UTCTime"])
        wmi_service = Nanotek::WmiService.new(wcf)
        wmi_service.get_instances
      end
      
    end
end