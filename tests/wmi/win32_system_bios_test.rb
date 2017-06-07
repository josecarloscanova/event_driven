require_relative 'test_base'

module Nanotek

  SBIOS_FILE = "Win32_SystemBIOS.yml"
  
  class  Win32SystemBiosTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_SystemBIOS"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SBIOS_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end