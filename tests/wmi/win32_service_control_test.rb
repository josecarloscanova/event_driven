require_relative 'test_base'

module Nanotek

  SCONTROL_FILE = "Win32_ServiceControl.yml"
  class Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_ServiceControl"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SCONTROL_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end

