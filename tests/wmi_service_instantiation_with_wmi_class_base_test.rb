require 'minitest/autorun'
require_relative '../wmi/classes/wmi_root_cimv2_classes'
require_relative '../wmi/classes/wmi_peh_classes'
require_relative '../wmi/wmi_service'
require_relative '../wmi/operating_system_factory'
require_relative '../wmi/process_factory'
require_relative '../wmi/service_factory'
require_relative '../wmi/network_adapter_factory'


class Wmi_service_instantiation_with_wmi_class_base_test < Minitest::Test
#  Win32_NetworkAdapter
#  def test_wmi_cimv2_class_base
#      wmi = WmiRootCimv2Class.new
#      wmi_class =  wmi.find_wmi_class(:Win32_OperatingSystem)
#      configuration_factory = wmi_class.values.select{|v| v}
#      wmi = WmiService.new(with_configuration_factory(configuration_factory))
#      wmi.instances_of(:Win32_OperatingSystem).each do |os|
#        puts  OperatingSystemFactory.process_with(os)
#      end    
#  end
  
#    def test_wmi_cimv2_class_base
#        wmi = WmiRootCimv2Class.new
#        wmi_class =  wmi.find_wmi_class(:Win32_NetworkAdapter)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:Win32_NetworkAdapter).each do |os|
#          puts  os.wmi_ole_object.to_s  
#        end    
#    end
 
  def test_wmi_cimv2_class_base
      wmi = WmiRootCimv2Class.new
      wmi_class =  wmi.find_wmi_class(:Win32_USBHub)
      configuration_factory = wmi_class.values.select{|v| v}
      wmi = WmiService.new(with_configuration_factory(configuration_factory))
      wmi.instances_of(:Win32_USBHub).each do |os|
        puts  os.to_s
      end    
  end
  
#    def test_wmi_process_class_base
#        wmi = WmiRootCimv2Class.new
#        wmi_class =  wmi.find_wmi_class(:Win32_Process)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:Win32_Process).each do |os|
#          puts  ProcessFactory.process_with(os)
#        end    
#    end
#    
#    def test_wmi_service_class_base
#        wmi = WmiRootCimv2Class.new
#        wmi_class =  wmi.find_wmi_class(:Win32_Service)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:Win32_Service).each do |os|
#          puts  ServiceRecordFactory.record_with(os)
#        end    
#    end    
#    
#    def test_wmi_battery_class_base
#        wmi = WmiRootCimv2Class.new
#        wmi_class =  wmi.find_wmi_class(:Win32_DiskPartition)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:Win32_DiskPartition).each do |os|
#          puts  os.wmi_ole_object.to_s #ServiceRecordFactory.record_with(os)
#        end    
#    end 
  
#  def test_wmi_peh_class_base
#        wmi = Nanotek::WmiPehClass.new
#        wmi_class =  wmi.find_wmi_class(:MSFT_Pipeline)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:MSFT_Pipeline).each do |os|
#          puts  os.wmi_ole_object.to_s #ServiceRecordFactory.record_with(os)
#        end    
#    end 
#    
#  def test_wmi_peh_class_base1
#        wmi = Nanotek::WmiPehClass.new
#        wmi_class =  wmi.find_wmi_class(:__NAMESPACE)
#        configuration_factory = wmi_class.values.select{|v| v}
#        wmi = WmiService.new(with_configuration_factory(configuration_factory))
#        wmi.instances_of(:__NAMESPACE).each do |os|
#          puts  os.wmi_ole_object.to_s #ServiceRecordFactory.record_with(os)
#        end    
#    end 
  
  
  def with_configuration_factory cf
      {:service => cf[0].base_class , :location => cf[0].wmi_path}
  end
end