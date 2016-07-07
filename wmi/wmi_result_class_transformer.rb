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
        instance_class = Struct.new(:name, :properties)
        name_value_pair = Struct.new(:name , :value)
        instance = instance_class.new
        operator = args[:wcf].create_instance
        instance.name = operator.class_name
        instance.properties = Array.new
        operator.properties.each do |property| 
          val = check_value property , args[:instance]
          instance.properties.push(name_value_pair.new(property.with  , val))
        end
      return instance
  end  
  
  def check_value property , instance
    instance[property.with] unless property.nil? || property.with.nil?
  end
end
end  