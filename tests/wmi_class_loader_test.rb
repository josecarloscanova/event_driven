require 'minitest/autorun'
require_relative '../wmi/wmi_class_loader'
require_relative '../wmi/wmi_class_definition'

class WmiClassLoaderTest < Minitest::Test
  
  def setup
  end
#TODO: Fix the class name for that classes can be used on 
  def test_wmi_class_loader_test
    Nanotek::WmiClassLoader::new.classes
#    $class_loaded.keys.each do |clazz|
#       puts $class_loaded[clazz]
#    end
    puts $class_loaded.select{
      |i,j|
      j.select { 
        |k,v|
        puts "V #{v.name} V #{v.path}"
      }
    }
#    $class_loaded.keys.each do |key|
#        $class_loaded[key]
#    end
  end
  
end