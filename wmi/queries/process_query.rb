require_relative 'query'

class ServiceProcessQuery < Query

  def initialize
    query = " Select * from Win32_Process  "
  end
  
end