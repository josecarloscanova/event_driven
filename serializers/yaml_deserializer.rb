require 'yaml'
require 'pathname'

module Nanotek

  
#TODO: FIX THE FILE NAME TO PUT ON THE CLASS LOADER
#TODO Create a key mechanism for the class loader.  
  class YamlDeserializer

        def YamlDeserializer.deserialize args
          pf = validate args
          io_file_str = IO.read(pf.path+pf.file)
          parse_yaml_file io_file_str
        end

        def YamlDeserializer.parse_yaml_file io_file_str
            YAML.load(io_file_str)
        end  
        
        def YamlDeserializer.validate args
          raise ArgumentError , "Not valid arguments" unless args.is_a?Array || args.length != 2
          validate_path args
        end

#TODO: implement a rescue mechanism.
        private

          def YamlDeserializer.validate_path  args
               pn = Pathname.new(args[0])
               raise ArgumentError , "Not a valid directory" unless pn.directory?
               mount_path_base_structure args
          end

          def YamlDeserializer.mount_path_base_structure args
            return @@path_file.new(args[0] , args[1])
          end  

          def YamlDeserializer.check_if_file_exists
            true
          end

          @@path_file  = Struct.new(:path , :file) 

  end
end