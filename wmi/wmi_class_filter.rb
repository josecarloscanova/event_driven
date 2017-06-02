require_relative '../filter/filter'
module Nanotek
class WmiClassFilter < Filter
  
  def initialize
  end

  def WmiClassFilter.parse_class_name *line 
      wmi_path = line[0].lstrip.rstrip.chomp.split("\n")[0].split("#").last.split("\\")
      class_name = wmi_path.last
      wmi_path = wmi_path[0..wmi_path.length-2].join("\\")
      {class_name=>wmi_path}
  end  
  
  def WmiClassFilter.parse_class *line 
          lines = line.flatten[0].split("\n") unless line[0].nil?
          unless lines.nil? then
              lines = lines[5..lines.length()-2]
              puts "Line on pippeline #{lines}"
              filter_property_lines lines
          end
  end
  
  def WmiClassFilter.filter_property_lines lines
    properties = Array.new
    if lines.is_a?Array then 
        lines.each do |line| 
              property_name =  line.split("\\")[0].chomp.downcase.split("\s")[0] unless line[0].nil?
              __A = Struct.new(:with)
              properties.push(__A.new(property_name))
        end 
      end   
    properties
  end  
  
  
  def verified args
    true
  end
  
@@property_struct = Struct.new(:name)
  
end
end