require_relative 'filter'

module Nanotek

    class NilFilter < Nanotek::Filter
      
      def NilFilter.accept value
        return value.nil? ? true : false
      end
        
    end

end