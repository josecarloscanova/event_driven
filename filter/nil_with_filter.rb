require_relative 'filter'

module Nanotek

    class NilWithFilter < Nanotek::Filter
      
      def NilWithFilter.accept value
          return value.nil?  || value.with.nil? ? false : true
      end
        
    end

end