require 'minitest/autorun'
require_relative '../context/wmi_application_context'

class ApplicationContextTest < Minitest::Test
  
  def setup
  end

#  def test_application_context_initialization
#      Nanotek::ApplicationContext.new(
#              loop {Nanotek::ApplicationContext.configure_application_context}
#        )
#    true
#  end
  
  def test_application_context_initialization_1
      Nanotek::WmiApplicationContext.new{
                  Nanotek::WmiApplicationContext.configure_application_context
      }
    true
  end


end

#Nanotek::ApplicationContext.configure_application_context