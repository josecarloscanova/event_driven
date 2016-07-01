require_relative '../event/event'
require_relative '../event/default_event'

class Adapter 
  
      def initialize
        @messages_adapter =[]
      end
  
      def send_message *message
         return @messages_adapter.select{|h| h[:class].new(message)} unless @messages_adapter[0].nil?
         raise_default_event message
      end
      
      def raise_default_event message
        DefaultEvent.new(message)
      end  
      
      def add_adapter clazz = nil
          @messages_adapter.push(@@adaptees.new(clazz,clazz)) unless clazz.is_a?Event
        raise_default_event_message message
      end 
      
      def add_adapter type , clazz
          @messages_adapter.push(@@adaptees.new(type,clazz))
      end 
  
      private 
            
          @@adaptees = Struct.new(:alias , :class)
        
end

