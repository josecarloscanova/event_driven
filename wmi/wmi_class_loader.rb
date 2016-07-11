require_relative '../util/utils'
require_relative '../serializers/yaml_deserializer'

module Nanotek

  class WmiClassLoader
    attr_reader(:classes)

    def initialize
        yaml_class_filter = Utils::YamlProcessingFilter.new 
        load_wmi_classes yaml_class_filter
    end

#TODO: probably due to the problem not yet solved on classloading will repeat a value... soon fix it.
    def load_wmi_classes yaml_class_filter
        @classes =  yaml_class_filter.classloader if yaml_class_filter.retrieved_yml_classes?(Utils::DEFAULT_CLASS_LOCATION)
        @classes.each do |clazz|
          Nanotek::YamlDeserializer.deserialize([Utils::DEFAULT_CLASS_LOCATION,clazz])
        end  
    end
#YamlUnMarshaller
  end
end