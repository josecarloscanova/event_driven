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
      
      def add_adapter *args
          args = verify_if
          @messages_adapter.push(@@adaptees.new(clazz,clazz)) unless clazz.is_a?Event
          raise_default_event_message message unless clazz.nil?
      end 
      
  
      private 
            
          def vefify_if args
                return raise_invalid_function_call unless args.is_a?Array 
                if args.length == 1 then
                    check_if_can_add_adapter
                elsif args.length == 2
                   check_if_is_type_adapter
                else
                  raise_invalid_adapter
                end       
          end
          
          def check_if_can_add_adapter
            true  
          end
          
          def check_if_is_type_adapter
            true
          end  
          
          def raise_invalid_function_call msg = nil
            raise ArgumentError , "Invalid Function call"
          end  
          
          @@adaptees = Struct.new(:alias , :class)
        
end

