require 'minitest/autorun'
require_relative '../wmi/wmi_class_loader'
require_relative '../wmi/wmi_class_definition'

class WmiClassLoaderTest < Minitest::Test
  
  def setup
      $class_loaded = {}
  end
#TODO: Fix the class name for that classes can be used on 
  def test_wmi_class_loader_test
    cl = Nanotek::WmiClassLoader::new.classes
    puts cl.length
#    $class_loaded.keys.each do |clazz|
#       puts $class_loaded[clazz]
#    end
    puts $class_loaded.keys.length
  end
  
end