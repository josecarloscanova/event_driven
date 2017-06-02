require_relative '../util/utils'
require_relative '../serializers/yaml_deserializer'
require_relative 'wmi_class_definition'

module Nanotek

  class WmiClassLoader
    attr_reader(:classes)

    def initialize
        load_wmi_classes
    end

#TODO: probably due to the problem not yet solved on classloading will repeat a value... soon fix it.
    def load_wmi_classes
        $wmi_class_loader = {}
        yaml_class_filter = Utils::YamlProcessingFilter.new 
        @classes =  yaml_class_filter.classloader if yaml_class_filter.retrieved_yml_classes?(Utils::DEFAULT_CLASS_LOCATION)
        @classes.each do |clazz_file|
          clazz =  Nanotek::YamlDeserializer.deserialize([Utils::DEFAULT_CLASS_LOCATION,clazz_file])
          #TODO: Move the clazz to the real class.
          $wmi_class_loader[clazz.keys[0]] = clazz
        end  
    end

  end
end

