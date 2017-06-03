require_relative 'test_base'

module Nanotek

  SERVICE_FILE = "Win32_Service.yml"
  class  Win32SystemServicesTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_Service"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SERVICE_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end