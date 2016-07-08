require_relative '../event/default_event'

class Adapter 
  
      def initialize
        @messages_adapter =[]
      end
  
      def add_adapter *args
          adaptee = verify_if args
          @messages_adapter.push(adaptee)
          raise_invalid_function_call  unless @messages_adapter.include?adaptee
      end 
      
      def send_message *message
         raise_default_event message
      end
      
      protected 
            
        def raise_default_event message
          DefaultEvent.new(message)
        end
        
         def verify_if *args
            adaptee_cfg = args.flatten
                return raise_invalid_function_call unless adaptee_cfg.is_a?Array  || (adaptee_cfg.length >=1 && adaptee_cfg.length <=2) 
                case adaptee_cfg.length
                    when  1 then
                      raise_invalid_adapter unless check_if_can_add_adapter adaptee_cfg
                      return @@adaptees.new(adaptee_cfg[0].class.name , adaptee_cfg[0])
                    when 2 then
                      raise_invalid_adapter unless check_if_is_type_adapter adaptee_cfg
                      return @@adaptees.new(adaptee_cfg[0] , adaptee_cfg[1])
                end       
             true  #transformed on something.   
          end
          
          #TODO: Finish it.
          def check_if_can_add_adapter *args
            true
          end
          
          def check_if_is_type_adapter *args
            raise_invalid_function_call if args.flatten[0].nil?
            check_if_can_add_adapter *args.flatten[1]
          end  
          
          def raise_invalid_adapter msg = nil
            raise ArgumentError , "Invalid Adapter configuration!#{msg}"
          end 
          
          def raise_invalid_function_call msg = nil
            raise ArgumentError , "Invalid Function call"
          end  
          
          @@adaptees = Struct.new(:alias , :class)
        
end

