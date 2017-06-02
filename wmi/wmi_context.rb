class WmiContext
  
  def initialize
  end
  
  def WmiContext.get_service service_key
      raise ArgumentError , "Invalid Function call" if (service_key.nil?)
      service_key_decoded = decode  service_key  
      @@wmi_services[service_key_decoded]
  end
  
  def WmiContext.add_service service_configurator , wmi_service
      @@wmi_services[service_configurator.service] = wmi_service 
     true 
  end  
  
  private
      
    def WmiContext.decode service_definition
        decoded = service_definition[:service] if (service_definition.is_a?Hash) || (service_definition.respond_to?:service) 
        decoded = service_definition if decoded.nil?
        raise ArgumentError , "Invalid Function call" if decoded.nil? 
      return decoded
    end  
      
    @@wmi_services = Hash.new
    
end