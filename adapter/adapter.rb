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
          adaptee = verify_if args
          @messages_adapter.push(adaptee) if adaptee[:class].is_a?Event.class
          raise_invalid_function_call  if adaptee.nil?
      end 
      
  
      private 
            
          def verify_if *args
            adaptee_cfg = args.flatten
                return raise_invalid_function_call unless adaptee_cfg.is_a?Array 
                return raise_invalid_function_call unless (adaptee_cfg.length >=1 && adaptee_cfg.length <=2) 
                case adaptee_cfg.length
                    when  1 then
                      raise_invalid_adapter if check_if_can_add_adapter adaptee_cfg
                      return @@adaptees.new(adaptee_cfg[0] , adaptee_cfg[0])
                    when 2 then
                      raise_invalid_adapter if check_if_is_type_adapter adaptee_cfg
                      return @@adaptees.new(adaptee_cfg[0] , adaptee_cfg[1])
                end       
             true  #transformed on something.   
          end
          
          def check_if_can_add_adapter *args
            args.flatten[0].is_a?Event
          end
          
          def check_if_is_type_adapter *args
            check_if_can_add_adapter *args.flatten[1]
            raise_invalid_function_call if args.flatten[0].nil?
          end  
          
          def raise_invalid_adapter msg = nil
            raise ArgumentError , "Invalid Adapter configuration!#{msg}"
          end 
          
          def raise_invalid_function_call msg = nil
            raise ArgumentError , "Invalid Function call"
          end  
          
          @@adaptees = Struct.new(:alias , :class)
        
end

