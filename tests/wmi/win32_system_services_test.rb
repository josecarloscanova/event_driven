require_relative 'test_base'

module Nanotek

  SYSTEM_SERVICES_FILE = "Win32_SystemServices.yml"
  class  Win32SystemServicesTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_SystemServices"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SYSTEM_SERVICES_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end