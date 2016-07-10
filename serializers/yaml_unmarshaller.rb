require 'pathname'

module Nanotek

  class YamlUnMarshaller

        def YamlUnMarshaller.unmarshall args
          pf = validate args
          $class_loaded = YAML.load(IO.read("#{pf.path}#{pf.file}"))
        end

        def YamlUnMarshaller.validate args
          raise ArgumentException , "Not valid arguments" unless args.is_a?Array || args.length != 2
          validate_path args
        end

#TODO: implement a rescue mechanism.
        private

          def YamlUnMarshaller.validate_path  args
               pn = Pathname.new(args[0])
               raise ArgumentException , "Not a valid directory" unless pn.directory?
               mount_path_base_structure args
          end  
           
          def YamlUnMarshaller.mount_path_base_structure args
            return @@path_file.new(args[0] , args[1])
          end  

          def YamlUnMarshaller.check_if_file_exists
            true
          end

          @@path_file  = Struct.new(:path , :file) 

  end
end