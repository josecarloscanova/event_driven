module Nanotek
        
        class ApplicationContext < Thread

          def initialize *args
            super(args)
          end
          
          def ApplicationContext.configure_application_context
                p Time.now
                sleep 1
              true  
         end
         
       end   
end

