require_relative 'test_base'

module Nanotek

  USB_CONTROLLER_FILE = "Win32_USBControllerDevice.yml"
  
  class  Win32SystemSlotTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_USBControllerDevice"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , USB_CONTROLLER_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end