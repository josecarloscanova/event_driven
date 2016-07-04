class WmiContext
  
  def initialize
    
  end
  
  def WmiContext.get_service with_service_key
      raise ArgumentError , "Invalid Function call" if (with_service_key.nil? || @@wmi_services[with_service_key].nil?)
      @@wmi_services[with_service_key]
  end
  
  def WmiContext.add_service service_configurator , wmi_service
      @@wmi_services[service_configurator.service] = wmi_service 
  end  
  
  private
      @@wmi_services = Hash.new
end