require_relative 'test_base'

module Nanotek

  PMA_FILE = "Win32_PhysicalMemoryArray.yml"
  class Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_PhysicalMemoryArray"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , PMA_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end