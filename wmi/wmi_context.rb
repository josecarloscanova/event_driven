class WmiContext
  
  def initialize
    @wmi_services = {}
  end
  
  def get_service which
      raise ArgumentError , "Invalid Function call" unless (which.nil? || @wmi_services[which].nil?)
      @wmi_services[which]
  end
  
  def add_service service_configurator , wmi_service
      @wmi_services[service_configurator.service] = wmi_service 
  end  
  
end