require_relative '../adapter/adapter'

class  Event
  
  attr_reader (:id)
  
  def initialize msg
      @id = msg
      puts "from msg event #{@id.to_s}" unless msg.nil?
  end
  
  
  protected 
  
  @@id = Struct.new(:id)
  
end