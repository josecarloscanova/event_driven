require_relative 'test_base'

module Nanotek

  NA_FILE = "Win32_NetworkAdapter.yml"
  class  Win32SystemBiosTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_Desktop"
    
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , NA_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end

end