require_relative 'test_base'

module Nanotek

  REGISTRY_FILE = "Win32_Registry.yml"
  class Win32EventLogTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_Registry"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , REGISTRY_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end