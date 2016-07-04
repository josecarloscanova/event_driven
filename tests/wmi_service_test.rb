require 'minitest/autorun'
require_relative '../wmi/wmi_provider_path'
require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_service_configurator'

class WmiServiceTest < Minitest::Test
  
  def setup 
    $wmi_context = WmiContext.new
  end
  
  def test_configure
    wmisc = WmiServiceConfigurator.new
    wmisc.wmi_configurations.each {
        |p|
        puts p
         check(WmiService.new(p))
    }
  end
  
  def check wmi_instance
    $wmi_context.add_service wmi_instance.service_record_configuration ,  wmi_instance
  end
end