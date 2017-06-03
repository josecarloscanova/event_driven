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

module Nanotek

  MODEL_PATH = Utils::DEFAULT_CLASS_LOCATION
  class TestBase  < Minitest::Test
    def transform_result_class instances , clazz
      class_definition = $wmi_class_loader[clazz]
      instances.each{|instance|
        read_first_result_properties instance , class_definition
      }
    end

    def read_first_result_properties  wmi_first_of_result , class_definition
      properties = class_definition.properties
      values = {}
      properties.each {|k|
        parameter = wmi_first_of_result[k.with] unless check_if_empty k.with
        convert_to_hash_entry k.with , convert_parameter_to_string(parameter) , values unless check_if_empty parameter
      }
      values[:wmi_name] = class_definition.name
      values[:wmi_path] = class_definition.path
      values.each { |k,v|
        puts k.to_s + ":" + v unless check_if_empty v
      }
      puts "____________________________________________________"
    end

    def convert_to_hash_entry parameter , parameter_value , hash
      hash[parameter.to_sym] = parameter_value
    end

    def convert_parameter_to_string parameter
      parameter.to_s
    end

    def check_if_empty parameter
      parameter.nil?
    end

    def initialize_check_wmi_class wmi_class
      wcf = Nanotek::WmiClassFactory.new($wmi_class_loader[wmi_class])
      raise ArgumentError "No Wmi Class #{wmi_class} defined"  if check_if_empty wcf
      wmi_service = Nanotek::WmiService.new(wcf)
    end
    
    def verify_wmi_service_for_class wmi_class_name
      wmi_service = initialize_check_wmi_class wmi_class_name
      wmi_service.get_instances.each do |instance|
        transform_result_class instance[1].instances_of , wmi_class_name
      end
    end

  end
end