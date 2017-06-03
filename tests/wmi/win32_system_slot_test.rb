require_relative 'test_base'

module Nanotek

  SYSTEM_SLOT_FILE = "Win32_SystemSlot.yml"
  
  class  Win32SystemSlotTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_SystemSlot"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SYSTEM_SLOT_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end