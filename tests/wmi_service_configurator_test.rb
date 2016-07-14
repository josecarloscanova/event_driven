require 'minitest/autorun'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_service_configurator'

class WmiServiceConfiguratorTest < Minitest::Test
  
    def setup 
      wsp = Nanotek::WmiServiceConfigurator.new
    end

    def test_wmi_provider_path_search
      Nanotek::WmiServiceConfigurator.new
    end
  
    def find_wmi_configuration_by_path_test
    end
    
end