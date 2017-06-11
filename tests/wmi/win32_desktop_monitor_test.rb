require_relative 'test_base'

module Nanotek

  DM_FILE = "Win32_DesktopMonitor.yml"
  class  Test < Nanotek::TestBase
    
    @@wmi_class_name = "Win32_DesktopMonitor"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , DM_FILE])
    end

    def test_wmi_class
        verify_wmi_service_for_class @@wmi_class_name
    end

  end

end