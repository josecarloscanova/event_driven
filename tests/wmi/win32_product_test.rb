require_relative 'test_base'

module Nanotek

  PRODUCT_FILE = "Win32_Product.yml"
  class Win32ProductTest < Nanotek::TestBase

    @@wmi_class_name = "Win32_Product"
    def setup
      YamlUnMarshaller.unmarshall([MODEL_PATH , PRODUCT_FILE])
    end

    def test_wmi_class
      verify_wmi_service_for_class @@wmi_class_name
    end

  end
end