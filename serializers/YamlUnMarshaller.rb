require 'pathname'

module Nanotek
  
  class YamlUnMarshaller
        
        def YamlUnMarshaller.unmarshall args
          pf = validate args
          $wmi_class_loader = YAML.load(IO.read("#{pf.path}#{pf.file}"))
        end

        def validate args
          raise ArgumentError , "Not valid arguments" unless args.is_a?Array || args.length != 2
          validate_path args
          mount_argument_hash args
        end
        
#TODO: implement a rescue mechanism.
        private 
        
        def validate_path  args
             pn = Pathname.new(args[0])
             raise ArgumentError , "Not a valid directory" unless pn.directory?
        end

        def check_if_file_exists
          true
        end  
        @@path_file  = Struct.new(:path , :file) 
        
  end
end