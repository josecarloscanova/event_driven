require 'pathname'
require_relative '../serializers/yaml_unmarshaller'

module Utils

  #TODO: Fix when put the project for gems.C:/Java/git_repo/event_driven/base/yaml
  DEFAULT_CLASS_LOCATION = "C:/Java/git_repo/event_driven/base/yaml/".freeze
#  DEFAULT_CLASS_LOCATION = "C:/cygwin64/home/user/event_driven/wmi/classes/yaml/".freeze

  #TODO: Change the name of the class.
  #TODO: Fix the problem of recursion on directories  check if it is not a link to avoid redirection.
  class YamlProcessingFilter

    attr_accessor(:classloader)

#     @@dir_entries = lambda {|location| Dir.entries(location).reject{|sf| @@exclusion_patterns.include?sf}}
      @@dir_entries = lambda {|location| Dir.entries(location).reject{|sf| !YamlProcessingFilter.check_valid_yaml_class sf}}
      @@exclusion_patterns = ["." , ".." , ".yml"]

      def retrieved_yml_classes? *location
        loc = location.flatten
        directory_to_scan = nil
        case 
            when loc.length == 1 then
              directory_to_scan = loc[0] 
            when loc.length == 2 then
              directory_to_scan = loc[1] + loc[0]
        end  
         filter_yaml_files @@dir_entries.call(directory_to_scan) if  !@@exclusion_patterns.include?loc[0]
       true
      end

      private 

        def filter_yaml_files class_files
          @classloader = Array.new  
          class_files.each do |entry|
              @classloader.push(entry) if (entry_directory?(entry) ? retrieve_yml_classes([entry,DEFAULT_CLASS_LOCATION]) : YamlProcessingFilter.check_valid_yaml_class(entry)) == true
          end
         true
        end

        #TODO: check if diretory is correct "spelled" with the backslash at end... implement a function on near feature.
        def entry_directory?(entry)
            File.directory?(build_directory_location(entry))  
        end
        
        def build_directory_location entry
            DEFAULT_CLASS_LOCATION + entry 
        end

        def YamlProcessingFilter.check_valid_yaml_class entry
            !entry[/\w+.yml{1}/].nil?
        end
  end
  
  class KeyValueDecorator
    
    
    def initialize *args
        keys = args.flatten
        verify keys
        @keys = []
    end

    def verify keys
        keys.each do |key|
             
        end  
    end  

    def [](key_to_retrieve_value)
       false
    end  
    
  end
  
end

