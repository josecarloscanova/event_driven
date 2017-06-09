require_relative 'test_base'

#TODO: FIx or remove this yml class.
module Nanotek 

    BIOS_FILE = "Win32_IDEControllerDevice.yml"

    class  Win32SystemBiosTest < Nanotek::TestBase

      @@wmi_class_name = "Win32_IDEControllerDevice"
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end

#  WmiServiceConfigurator
      def test_wmi_class
        verify_wmi_service_for_class @@wmi_class_name
      end
      
      
    end

end