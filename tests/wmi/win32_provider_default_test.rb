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
    BIOS_FILE = "__Win32Provider.yml"  

    class  Win32ProviderTest < Minitest::Test
      
      def setup
        @storage = Hash.new
        YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end  
      
      def format_win32_provider_wmi_data results
          results.select {|v| transform(v.properties)}
         true   
      end  
      
    #  WmiServiceConfigurator
      def test_get_win32_provider_wmi_data
            wcf = Nanotek::WmiClassFactory.new($class_loaded["__Win32Provider"])
            wmi_service = Nanotek::WmiService.new(wcf)
            results =  wmi_service.get_instances
            @storage if format_win32_provider_wmi_data(results)
    end
      
      def transform properties
         properties.select {|k|
                @storage.merge({k.name => k.value})
          }
        true  
      end  
      
    end

end
