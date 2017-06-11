require_relative 'test_base'

module Nanotek

  PROVIDER_FILE = "__Win32Provider.yml"
  class  Test <  Nanotek::TestBase
    
    @@wmi_class_name = "__Win32Provider"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , PROVIDER_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end