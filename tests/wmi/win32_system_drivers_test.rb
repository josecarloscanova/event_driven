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
  SDRIVERS_FILE = "Win32_SystemDriver.yml"  
  
  
    class  Win32SystemBiosTest < Minitest::Test
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , SDRIVERS_FILE])
      end  
    #  WmiServiceConfigurator
              def test_system_32
                wcf = Nanotek::WmiClassFactory.new($wmi_class_loader["Win32_SystemDriver"])
                wmi_service = Nanotek::WmiService.new(wcf)
                wmi_service.get_instances.each do |instance|
                  plot_instances_result instance[1]
                end
              end
        
              def plot_instances_result wmi
                wmi.instances_of.each{|instance|
                  transform_result_class instance
                } 
              end   
              
              def transform_result_class wmi_first_of_result
                  class_definition = $wmi_class_loader["Win32_SystemDriver"]
                  read_first_result_properties wmi_first_of_result , class_definition
              end
              
              def read_first_result_properties  wmi_first_of_result , class_definition
                properties = class_definition.properties
                values = {}
                properties.each {|k|
                  parameter = wmi_first_of_result[k.with]
                  convert_to_hash k.with , convert_parameter_to_string(parameter) , values unless check_if_empty parameter
                }
                values[:wmi_name] = class_definition.name
                values[:wmi_class_path] = class_definition.path
                print_hash_result values
              end
              
              def print_hash_result hash
                hash.each { |k,v|
                     puts k.to_s + ":" + v unless v.empty?
                }
              end   
              
              def convert_to_hash parameter , parameter_value , hash
                  hash[parameter.to_sym] = parameter_value
              end  
              
              def convert_parameter_to_string parameter
                  parameter.to_s
              end  
              
              def check_if_empty parameter
                  false
              end 
      
    end
    
end