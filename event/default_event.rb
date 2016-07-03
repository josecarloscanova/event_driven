class DefaultEvent 
  
  def initialize *message
    raise ArgumentError , "You arrived where nobody shall be #{message}"
  end
  
end