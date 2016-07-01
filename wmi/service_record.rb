class ServiceRecordFactory
  
  def get_empty_service_record
    @@service_record.new
  end
  
  def ServiceRecordFactory.record_with content
    verify_record content
    @@service_record.new(content['description'] , content['checkpoint'] , content['creationclassname'] , content['startname'] , content['systemname'] , content['name'] )
  end  
  
  
  
  private
  
  def ServiceRecordFactory.verify_record content
   raise ArgumentError , 'Wrong number of arguments' unless @@service_record.members.select{|k,v|
          content.respond_to?k
          }.length <= @@service_record.members.length
  end
  
  @@service_record = Struct.new(:description , :checkpoint, :creationclassname , :startname , :systemname , :name)

end