require_relative 'query'

class ServiceRecordQuery < Query
  
  def initialize
    query = " Select * from Win32_Service  "
  end
  
end