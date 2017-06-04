require_relative 'test_base'

module Nanotek

  PCONNECTOR_FILE = "Win32_PortConnector.yml"
  class Win32EventLogTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_PortConnector"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , PCONNECTOR_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end