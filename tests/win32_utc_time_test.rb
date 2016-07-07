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

    class  Win32SystemServicesTest < Minitest::Test
    #  WmiServiceConfigurator
      def test_system_32
        class_loaded = YamlUnMarshaller.new.unmarshall
        wcf = Nanotek::WmiClassFactory.new(class_loaded["Win32_UTCTime"])
        wmi_service = Nanotek::WmiService.new({:service => class_loaded["Win32_UTCTime"].name , location => class_loaded["Win32_UTCTime"].path})
        win32_system_instances =  wmi_service.instances_of(class_loaded["Win32_UTCTime"].name)
        result =  wmi_service.get_instances_of({:class => class_loaded["Win32_UTCTime"].name , :wcf => wcf ,  :result => win32_system_instances})
        puts result.flatten.select {|k| !k[0].nil?}
        end
      
    end

    
    class YamlUnMarshaller
      
      
        attr_reader(:class_loaded)
      
          def initialize 
          end
          
          def unmarshall
            parser = Psych::Parser.new
            @@class_loaded = YAML.load(IO.read("C:/cygwin64/home/user/event_driven/wmi/classes/yaml/Win32_UTCTime.yml"))
          end  
          
          
    end  
    
end