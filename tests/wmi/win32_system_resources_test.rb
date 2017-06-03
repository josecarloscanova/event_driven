require_relative 'test_base'

module Nanotek

  MODEL_PATH = Utils::DEFAULT_CLASS_LOCATION
  SRESOURCES_FILE = "Win32_SystemResources.yml"
  class  Win32SystemSlotTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_SystemResources"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , SRESOURCES_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end