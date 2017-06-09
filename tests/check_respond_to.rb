class A 
  
  attr_accessor(:property)
  
  def initialize 
    @value = "anything"
    @property = "a property"
  end
  
  def property(value)
     @property  = value
  end
   
end

a = A.new()

puts a.property("a value")
puts a.respond_to?:property
puts a.respond_to?"@value"
