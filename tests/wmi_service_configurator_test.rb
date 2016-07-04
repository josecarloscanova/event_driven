require 'minitest/autorun'
require_relative '../wmi/wmi_service_configurator'
require_relative '../wmi/wmi_service'

class WmiServiceConfiguratorTest < Minitest::Test
  
    def setup 
    end

    def test_wmi_provider_path_search
      wpp = WmiServiceConfigurator.new
    end
  
end