require_relative 'test_base'

#TODO: Reject the test (deleted it) if class is empty
module Nanotek 

    BIOS_FILE = "Win32_PrinterController.yml"

    class  Test < Nanotek::TestBase

      @@wmi_class_name = "Win32_PrinterController"
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end

#  WmiServiceConfigurator
      def test_wmi_class
        verify_wmi_service_for_class @@wmi_class_name
      end
      
      
    end

end