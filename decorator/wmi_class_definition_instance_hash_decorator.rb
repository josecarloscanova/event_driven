require_relative '../wmi/wmi_class_definition'
module Nanotek
  
    class WmiClassDefinitionInstanceHashDecorator
      
      attr_reader(:instance_hash)  
        
      def intialize
      end
      
      def convertible? *args
        class_definition_instance = *args.flatten[0]
        populate_class_path class_definition_instance
       self 
      end  
      
      private 
      
      def populate_class_path cdi
          @instance_hash = Hash.new
          @instance_hash[:name] = cdi[0]
          fill_properties_hash cdi[1]
      end
       
      def fill_properties_hash cdi
          cdi.select {|k|
            @instance_hash[k.name.to_sym]  = k.value
          } 
        true 
      end
      
      
    end

end