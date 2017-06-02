require 'uri'
#require 'rubygems/string'


#TODO:change the name of the file
module Nanotek

    class PathFilter
    
      def initialize args
          validate_arg args
      end
    
      def validate_arg args
#          raise ArgumentError , "Path Null or Empty" if args.nil? || !args.is_a?(String)
      end
    
      def empty?
        false #!@uri.to_s.empty?
      end
    
      def has_path?
         false #!@uri.path.empty?
      end
      
      def has_host?
         false #!@uri.host.empty?
      end
    
      def has_scheme?
        false #!@uri.scheme.empty?
      end
    
      def has_query?
         false #!@uri.query.empty?
      end
    
      def has_fragment?
          false #!@uri.fragment.empty?
      end
    
    end

end