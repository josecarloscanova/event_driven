require_relative 'test_base'

module Nanotek

  CS_FILE = "Win32_ComputerSystem.yml"
  class  Win32ComputerSystemTest <  Nanotek::TestBase

    @@wmi_class_name = "Win32_ComputerSystem"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , CS_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end
