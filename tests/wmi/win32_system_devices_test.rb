require_relative 'test_base'

module Nanotek

  SDEVICES_FILE = "Win32_SystemDevices.yml"
  
  class  Win32SystemBiosTest < Nanotek::TestBase
    
    @@wmi_class_name = "Win32_SystemDevices"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SDEVICES_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end