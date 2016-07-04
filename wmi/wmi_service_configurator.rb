require_relative 'wmi_provider_path'
require_relative 'wmi_configuration_factory'

class WmiServiceConfigurator
  
  attr_reader(:wmi_configurations)
  
  def initialize
      prepare
  end
  
  def prepare
      @wmiProviderPath = WmiProviderPath.new
      @wmi_configurations = []
      configure
  end
  
  def configure
      wpp = WmiProviderPath.new
      build_configurations(wpp.wmi_paths) if wpp.get_wmi_paths
    true 
  end
  
  def build_configurations *paths
      paths.flatten.each{ 
        |p| 
        splitted =  (split_path p) 
        last =  splitted.nil? ? p : splitted.last 
        @wmi_configurations.push(build_wmi_configuration(last , p)) unless p.nil?
      }
  end
  
  
    def build_wmi_configuration last , path
        wmi_configuration = WmiConfigurationFactory.record_with({:service => last , :location =>path})
    end
    
    
    def split_path what
          what.split('\\')
    end
end