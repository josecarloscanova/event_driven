require_relative 'test_base'

module Nanotek

  UTC_TIME_FILE = "Win32_UTCTime.yml"
  class  Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_UTCTime"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , UTC_TIME_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end