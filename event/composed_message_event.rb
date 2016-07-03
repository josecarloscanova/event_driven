require_relative '../adapter/adapter'
require_relative 'event'

class ComposedMessageEvent < Event
  
  attr_reader(:id , :body)
  
  def initialize msg
      @body = @@body.new(msg)
      @id = @@id.new([Time.now ,@body])
      super(@id)
  end
  
  
  protected 
  
  @@id = Struct.new(:id)
  @@body = Struct.new(:body)
  
end