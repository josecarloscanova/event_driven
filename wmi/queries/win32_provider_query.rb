require_relative 'query'

class ServiceWin32ProviderQuery <  Query
  
  def initialize 
    query =" Select * from  __Win32Provider "
  end
  
end