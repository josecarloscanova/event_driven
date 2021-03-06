require 'minitest/autorun'
require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_provider_path'
require_relative '../wmi/wmi_service_configurator'

class WmiServiceTest < Minitest::Test
  
  def setup 
  end
  
  def test_configure
    wmisc = Nanotek::WmiServiceConfigurator.new
    wmisc.wmi_configurations.each {
        |p|
            wmiservice  = WmiService.new(p)
            prepare wmiservice
            verify wmiservice
    }
  end
  
  def prepare wmi_instance
     WmiContext.add_service wmi_instance.service_record_configuration ,  wmi_instance
  end
  
  def verify wmi_instance
    assert_equal(WmiContext.get_service(wmi_instance.service_record_configuration) , wmi_instance , "Not Equal")
  end
  
end