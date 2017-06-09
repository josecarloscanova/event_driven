require 'wmi-lite'
require_relative '../wmi/wmi_configuration_factory'

module Nanotek 
  
  class WmiService
  
    def initialize args
      $wmi_instances = {}
      create_wmi_instance args
    end
    
    def create_wmi_instance args
        configure_wmi_instance args
    end
    
    def get_instances
          $wmi_instances
    end
    
    def instances_of
      @wmi.instances_of(@service_record_configuration.class_name)
    end
    
    def query criteria
        query = @base_query + " " + criteria
        @wmi.query(query)
    end

    def first_of
        @wmi.first_of(@service_record_configuration.class_name)
    end

    private 
    
    def configure_wmi_instance args
        @service_record_configuration = WmiConfigurationFactory.record_with(args)
        @wmi_result_formatter = Nanotek::WmiResultFormatter.new(@service_record_configuration.class_name)
        @base_query = "select * from " + @service_record_configuration.class_name
        @wmi = WmiLite::Wmi.new(@service_record_configuration.path)
        $wmi_instances[@service_record_configuration.class_name] = self
    end
    
  end
  
  class WmiResultFormatter
    
    def initialize args
        check_prepare args
    end
    
    def check_prepare args
        check args 
        prepare args
    end
    
    def check args 
      raise ArgumentError "Not a valid wmi class to search for" if args.nil? 
    end   

    def prepare args
        @class_definition = $wmi_class_loader[args]
    end  
        
    def format_result  wmi_first_of_result 
                properties = @class_definition.properties
                values = {}
                properties.each {|k|
                  parameter = wmi_first_of_result[0][k.with]
                  convert_to_hash_entry k.with , convert_parameter_to_string(parameter) , values unless check_if_empty parameter
                }
                values[:wmi_name] = class_definition.name
                values[:wmi_class_path] = class_definition.path
        end
              
        def convert_to_hash_entry parameter , parameter_value , hash
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