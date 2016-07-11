require 'minitest/autorun'
require_relative '../util/utils'

module Utils

  class UtilsYamlFileTest < Minitest::Test
    
    def test_load_yaml_classes
        yml_processing_filter = Utils::YamlProcessingFilter.new
        yml_processing_filter.retrieved_yml_classes? Utils::DEFAULT_CLASS_LOCATION
    end
  end
  
end