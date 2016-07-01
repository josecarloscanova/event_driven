class ProcessFactory

  def initialize
  end
    
  def ProcessFactory.simple_process_with content
      verify_record content
      @@process.new(content['osname'] , content['caption'] , content['csname'] , content['processid'] , content['parentprocessid'] , content['description'] )
  end
  
  private 
  
  def ProcessFactory.verify_record content
    raise ArgumentError , 'Wrong number of arguments' unless @@process.members.select{|k,v|
           content.respond_to?k
           }.length <= @@process.members.length
   end
  
  @@process = Struct.new(:osname  , :caption  , :csname , :processid ,  :parentprocessid , :description)
  
  
end