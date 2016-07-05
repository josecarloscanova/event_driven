module Nanotek

  class WmiClassBase
    
    def find_wmi_class value
      @classes.select{|p|  p == value}
    end
    
  end

end

