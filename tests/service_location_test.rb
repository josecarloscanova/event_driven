require 'minitest/autorun'
require 'wmi-lite'
require_relative '../wmi/wmi_configuration_factory'

class ServiceLocationTest < Minitest::Test
  
  def setup 
  end
  
  def test_wmi_configuration_factory_empty_record
    
    assert_equal(WmiConfigurationFactory.get_empty_service_record , WmiConfigurationFactory.get_empty_service_record , WmiConfigurationFactory.get_empty_service_record)
    empty_service_record = WmiConfigurationFactory.get_empty_service_record
    
    assert_equal(empty_service_record , empty_service_record , true)
    empty_service_record[:service] = 'wmi_service'
    empty_service_record[:location] = 'wmi_location'

    assert_equal(empty_service_record[:service] , 'wmi_service' , 'wmi_service')
    assert_equal(empty_service_record[:location] , 'wmi_location' , 'wmi_location')
      
  end
  
  def test_wmi_instance_configuration
    service_record = WmiConfigurationFactory.record_with({:service => 'wmi_service' , :location => 'wmi_location'})
    assert_equal(service_record[:service] , 'wmi_service' , 'wmi_service')
    assert_equal(service_record[:location] , 'wmi_location' , 'wmi_location')
  end
  
  def test_wmi_instance_configuration 
      service_record_configuration = WmiConfigurationFactory.record_with({:service => 'wmi_service' , :location => 'root\CIMV2'})
      @wmi = WmiLite::Wmi.new(service_record_configuration.location)
      assert_equal(@wmi.class , WmiLite::Wmi , 'Testing WMI Instance')
  end
  
end