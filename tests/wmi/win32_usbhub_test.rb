require_relative 'test_base'

module Nanotek

  USB_HUB_FILE = "Win32_USBHub.yml"
  class  Test <  Nanotek::TestBase

    @@wmi_class_name = "Win32_USBHub"
    def  setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , USB_HUB_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end