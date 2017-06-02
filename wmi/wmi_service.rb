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
        @wmi.query(@base_query)
    end

    private 
    
    def configure_wmi_instance args
        @service_record_configuration = WmiConfigurationFactory.record_with(args)
        @base_query = "select * from " + @service_record_configuration.class_name
        @wmi = WmiLite::Wmi.new(@service_record_configuration.path)
        $wmi_instances[@service_record_configuration.class_name] = self
    end
    
  end
end 