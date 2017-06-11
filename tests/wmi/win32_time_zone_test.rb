require_relative 'test_base'

module Nanotek

  TIME_ZONE_FILE = "Win32_TimeZone.yml"
  class  Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_TimeZone"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , TIME_ZONE_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end