require 'minitest/autorun'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_service_configurator'

class WmiServiceConfiguratorTest < Minitest::Test
  
    def setup 
    end

    def test_wmi_provider_path_search
      wsp = Nanotek::WmiServiceConfigurator.new
      puts  wsp.find_wmi_configuration 'ROOT'
    end
  
end