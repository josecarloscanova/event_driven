require_relative 'test_base'

module Nanotek

  MODEL_PATH = Utils::DEFAULT_CLASS_LOCATION
  USB_CONTROLLER_FILE = "Win32_USBController.yml"
  class  Test < Nanotek::TestBase

    @@wmi_class_name = "Win32_USBController"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , USB_CONTROLLER_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end