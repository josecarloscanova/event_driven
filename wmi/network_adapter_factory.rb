require_relative 'wmi_class_factory'

class NetworkAdapterFactory < Nanotek::WmiClassFactory
  
  #<struct bootdevice=nil, buildnumber=nil, buildtype=nil, caption="[00000001] Qualcomm Atheros AR9485 Wireless Network Adapter", codeset=nil, countrycode=nil, creationclassname="Win32_NetworkAdapter", cscreationclassname=nil, csdversion=nil>
#  Win32_NetworkAdapter.yml
    def initialize
    end
      
    def NetworkAdapterFactory.get_empty_process_record
      @@process.new
    end
    
    def NetworkAdapterFactory.process_with content
        verify_record content
        @@process.new(content['bootdevice'] , content['buildnumber'] , content['caption'] , content['codeset'] , content['countrycode'] , content['creationclassname'] , content['cscreationclassname'], content['csdversion'])
    end
    
    private 
    
    def NetworkAdapterFactory.verify_record content
      raise ArgumentError , 'Wrong number of arguments' unless @@process.members.select{|k,v|
             content.respond_to?k
             }.length <= @@process.members.length
    end
    
    @@process = Struct.new(:bootdevice , :buildnumber , :caption , :codeset , :countrycode , :creationclassname , :cscreationclassname, :csdversion)
    
    
end