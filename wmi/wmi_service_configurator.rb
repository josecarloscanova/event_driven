require_relative 'wmi_configuration_factory'
require_relative 'wmi_class_loader'
require_relative 'wmi_class_definition'
require_relative '../filter/nil_filter'
require_relative '../filter/path_filter'

module Nanotek

    class WmiServiceConfigurator

      attr_reader(:wmi_configuration , :class_name , :path)

      def initialize *args
          @configuration_parameters = validate(args.flatten)
      end

      def [](symbol)
          s = symbol
          case
            when s == :class_name
              return @configuration_parameters[0]
           when  s == :path
            return @configuration_parameters[1]
           else
             throw ArgumentError , "There is a problem on your request please try again"
           end      
      end

      def prepare
          configure
      end

      def validate args
          [check_param(args[0]),check_path(args[1])]
      end

      def check_param param
          return param if param.is_a?(String) && Nanotek::NilFilter.accept(param)
      end  

      #TODO: Validate path... "soon as possible"  
      def check_path(param)
          return param # unless Nanotek::UriFilter.new(param).has_path?
      end

      def build_wmi_configuration
          WmiConfigurationFactory.record_with({:service => @configuration_parameters[0] , :location => @configuration_parameters[1]})
      end

     def split_path what
         what.split('\\')
     end

    end
end
