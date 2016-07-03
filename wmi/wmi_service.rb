require 'wmi-lite'
require_relative '../wmi/wmi_configuration_factory'
class WmiService 

  attr_reader(:service_record)
  
  def initialize args
    $wmi_instances = {}
    create_wmi_instance args
  end
  
  def create_wmi_instance args
      configure_wmi_instance args if verified args
  end
  
  private 
  
  def configure_wmi_instance args
      service_record_configuration = WmiConfigurationFactory.record_with(args)
      @wmi = WmiLite::Wmi.new(service_record_configuration.location)
      $wmi_instances[service_record_configuration.service] = self
  end
  
  def verified args
      true
  end
  
end