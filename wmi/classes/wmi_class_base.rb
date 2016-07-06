module Nanotek


  Wmi_Class = Struct.new(:base_class , :wmi_path)
  
  class WmiClassBase
    
    def find_wmi_class value
      @classes.select{|p|  p == value}
    end
    
  end

end

