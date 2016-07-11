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
    DM_FILE = "Win32_ComputerSystem.yml"
  
    class  Win32OperatingSystemTest < Minitest::Test
      
      def setup
        YamlUnMarshaller.unmarshall([MODEL_PATH , DM_FILE])
      end  
      
    #  WmiServiceConfigurator
      def test_system_32
        wcf = Nanotek::WmiClassFactory.new($class_loaded["Win32_ComputerSystem"])
        wmi_service = Nanotek::WmiService.new(wcf)
        #depois tem outro ceu sem estrelas...
          wmi_service.get_instances.each do |instance|
            @result_hash = WmiClassDefinitionInstanceHashDecorator.new.convertible?(wmi_service.get_instances).instance_hash
          end
          puts @result_hash
        end

    end

end