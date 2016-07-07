module Nanotek 
  
  class Transformer
    def transform 
        false
    end  
  end
  
  class WmiResultClassTransformer < Nanotek::Transformer
  
  def initialize args
    @parameters =  args
  end
  
  def prepare_result
    @result = Array.new
    wcf = @parameters[:wcf]
    instances = @parameters[:result]
    instances.each do |arg| 
      @result.push(transform([wcf , arg])) 
    end 
   @result
  end
  
  #A simple base class transform
  def transform args
      operator = args[0].create_instance
      operator.properties.each do |v| 
          v.with = args[1][v.with]  unless v.nil? || v.with.nil?
      end
  end  
  
  end

end  