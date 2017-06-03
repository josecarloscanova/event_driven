require_relative 'test_base'

module Nanotek

  SDRIVERS_FILE = "Win32_SystemDriver.yml"
  class  Win32SystemBiosTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_SystemDriver"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SDRIVERS_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end