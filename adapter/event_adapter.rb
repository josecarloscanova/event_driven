require_relative '../event/event'
require_relative '../event/default_event'

#TODO: try to understand why you did this big shit on overloading the methods on the super class.
class EventAdapter < Adapter
  
        def initialize
            super()
        end
  
        def send_message *message
           return @messages_adapter.select{|h| h[:class].new(message)} unless @messages_adapter[0].nil?
           raise_default_event message
        end
        
#        def add_adapter *args
#            adaptee = verify_if args
#            @messages_adapter.push(adaptee) if adaptee[:class].is_a?Event.class
#            raise_invalid_function_call  if adaptee.nil?
#        end 
        
#        def check_if_can_add_adapter *args
#          args.flatten[0].is_a?Event
#        end
end