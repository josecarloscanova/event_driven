require_relative 'test_base'

module Nanotek

  D_FILE = "Win32_Desktop.yml"
  
  class  Win32SystemServicesTest <  Nanotek::TestBase

    @@wmi_class_name = "Win32_Desktop"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , D_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end
  end

end