class OperatingSystemFactory
  
  def initialize
  end
     
   def OperatingSystemFactory.get_empty_process_record
     @@process.new
   end
   
   def OperatingSystemFactory.process_with content
       verify_record content
       @@process.new(content['bootdevice'] , content['buildnumber'] , content['buildtype'] , content['caption'] , content['codeset'] , content['countrycode']  , content['creationclassname'] , content['cscreationclassname'] , content['csdversion'])
   end
   
   private 
   
   def OperatingSystemFactory.verify_record content
     raise ArgumentError , 'Wrong number of arguments' unless @@process.members.select{|k,v|
            content.respond_to?k
            }.length <= @@process.members.length
   end
   
    
   @@process = Struct.new(:bootdevice  , :buildnumber  , :buildtype , :caption ,  :codeset , :countrycode , :creationclassname , :cscreationclassname , :csdversion)
   
    
end