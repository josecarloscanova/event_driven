module Nanotek 
  
  class Transformer
    def transform 
        false
    end  
  end
  
  class  WmiResultClassTransformer < Nanotek::Transformer
  
  def initialize args
    @parameters =  args
  end
  
  def prepare_result
    @result = Array.new
    wcf = @parameters[:wcf]
    instances = @parameters[:result]
    instances.each do |instance| 
      @result.push(transform({:wcf => wcf , :instance => instance})) 
    end 
   @result
  end
  
  #A simple base class transform
  def transform args
      operator = args[:wcf].create_instance
      operator.properties.each do |property| 
        val = check_value property , args[:instance]
        p " #{operator.class_name} #{property} #{val}"
#        property.with = args[:instance][property.with] 
      end
  end  
  
  def check_value property , instance
    "#{instance[property.with]}" unless property.nil? || property.with.nil?
  end
end
end  