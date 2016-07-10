require_relative 'filter'

module Nanotek

    class NilFilter < Nanotek::Filter
      
      def NilFilter.accept value
        return value.nil? ? false : true
      end
        
    end

end