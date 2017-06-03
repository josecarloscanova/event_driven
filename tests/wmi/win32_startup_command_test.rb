require_relative 'test_base'

module Nanotek

  SC_FILE = "Win32_StartupCommand.yml"
  
  class  Win32StartupCommandTest < Nanotek::TestBase
    
    @@wmi_class_name = "Win32_StartupCommand"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SC_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end
  end

end