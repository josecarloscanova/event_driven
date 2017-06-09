require_relative 'test_base'


module Nanotek 

    BIOS_FILE = "Win32_IP4PersistedRouteTable.yml"

    class  Win32SystemBiosTest < Nanotek::TestBase

      @@wmi_class_name = "Win32_IP4PersistedRouteTable"
      
      def setup 
          YamlUnMarshaller.unmarshall([MODEL_PATH , BIOS_FILE])
      end

#  WmiServiceConfigurator
      def test_wmi_class
        verify_wmi_service_for_class @@wmi_class_name
      end
      
      
    end

end