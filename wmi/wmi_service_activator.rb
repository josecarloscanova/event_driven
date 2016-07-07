require_relative 'wmi_class_factory'

module Nanotek

      class WmiServiceActivator
        
        def initialize *args
          cc = args.flatten[0] unless args[0].nil?
          raise ArgumentError , "Invalid parameters for configuration " unless with_properties(with_root_path(with_class_name(cc))) == true  
        end
        
      end

end
