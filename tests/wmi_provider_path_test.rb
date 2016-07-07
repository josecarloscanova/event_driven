require 'minitest/autorun'
require_relative '../wmi/wmi_provider_path'

class WmiProviderPathTest < Minitest::Test
  
  def setup 
  end
  
  def test_wmi_provider_path_initialization
    wpp = WmiProviderPath.new
  end
  
  def test_wmi_provider_path_search
    wpp = WmiProviderPath.new
    result = wpp.wmi_paths if wpp.get_wmi_paths
  end
  
end