require_relative '../filter/nil_filter'

module Nanotek 
  
  class Transformer
    def transform 
        false
    end  
  end
  
  #TODO: Check de formatter on the end of the transformation. or on loop
  class  WmiResultClassTransformer < Nanotek::Transformer
  
  def initialize
  end
  
  
  def with_class_factory wcf
    @wcf = wcf
   self 
  end
    
  def prepare_results(results)
    @result = Array.new
    instances = results
    instances.each do |instance| 
      @result.push(transform({:wcf => @wcf , :instance => instance})) 
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
          instance.properties.push(name_value_pair.new(property.with  , val)) unless Nanotek::NilFilter.accept(val)
        end
      return instance
  end  
  
  def check_value property , instance
    instance[property.with] unless property.nil? || property.with.nil?
  end
end
end  