require_relative 'test_base'


module Nanotek 

    BIOS_FILE = "Win32_CodecFile.yml"

    class  Test < Nanotek::TestBase

      @@wmi_class_name = "Win32_CodecFile"
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end

      def test_wmi_class
        verify_wmi_service_for_class @@wmi_class_name
      end
      
      
    end

end