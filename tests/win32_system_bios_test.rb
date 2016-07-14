require 'yaml'
require 'psych'
require 'minitest/autorun'
require_relative '../wmi/wmi_class_definition'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_configuration_factory'
require_relative '../wmi/wmi_result_class_transformer'
require_relative '../wmi/wmi_class_factory'

module Nanotek 

    class  Win32SystemBiosTest < Minitest::Test
      
      def setup 
          YamlUnMarshaller.unmarshall
      end  
      
    #  WmiServiceConfigurator
      def test_system_32
              wcf = Nanotek::WmiClassFactory.new($class_loaded["Win32_SystemBIOS"])
              wmi_service = Nanotek::WmiService.new(wcf)
              wmi_service.get_instances
        end
      
    end

    private 
    
    class YamlUnMarshaller
      
          def YamlUnMarshaller.unmarshall
              $class_loaded = YAML.load(IO.read("C:/cygwin64/home/user/event_driven/wmi/classes/yaml/Win32_SystemBIOS.yml"))
          end  
          
          
    end  
    
end