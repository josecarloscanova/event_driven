require_relative 'test_base'

module Nanotek

  WSETTING_FILE = "Win32_WMISetting.yml"
  
  class Win32WmiSettingTest < Nanotek::TestBase
    
    @@wmi_class_name = "Win32_WMISetting"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , WSETTING_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end
    
  end

end