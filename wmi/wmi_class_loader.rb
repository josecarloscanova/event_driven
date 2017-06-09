require_relative '../util/utils'
require_relative '../serializers/yaml_deserializer'
require_relative 'wmi_class_definition'

module Nanotek

  class WmiClassLoader
    attr_reader(:classes)

    def initialize
        load_wmi_classes
    end

    def load_wmi_classes
        $wmi_class_loader = {}
        yaml_class_filter = Utils::YamlProcessingFilter.new 
        @classes =  yaml_class_filter.classloader if yaml_class_filter.retrieved_yml_classes?(Utils::RELATIVE_CLASS_LOCATION)
        @classes.each do |clazz_file|
          clazz =  Nanotek::YamlDeserializer.deserialize([Utils::RELATIVE_CLASS_LOCATION,clazz_file])
          $wmi_class_loader.merge!(clazz)
        end  
    end

  end
end

