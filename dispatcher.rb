require 'observer'
require_relative 'adapter/adapter'

#Hero Pattern
class Dispatcher
  include Observable
  
  def initialize
  end
  
  def dispatch  message
      changed          
      message    
      notify_observers(message)
    true
  end
  
end