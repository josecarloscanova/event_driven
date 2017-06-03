require_relative 'test_base'

module Nanotek

  OS_FILE = "Win32_OperatingSystem.yml"
  class  Win32OperatingSystemTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_OperatingSystem"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , OS_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end