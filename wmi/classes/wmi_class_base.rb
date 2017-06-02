module Nanotek

  Wmi_Class = Struct.new(:base_class , :wmi_path)
  
  class WmiClassBase
    
    def initialize
             @classes = {}
             load_wmi_classes
    end
    
    def load_wmi_classes
      false
    end
           
    def find_wmi_class value
        @classes.select{|p|  p == value}
    end

    def get_classes
           @classes
    end
         
  end

end

