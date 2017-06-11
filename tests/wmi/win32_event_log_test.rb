require_relative 'test_base'

module Nanotek

  EVENT_FILE = "Win32_NTEventlogFile.yml"
  class Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_NTEventlogFile"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , EVENT_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end