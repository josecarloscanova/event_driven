class OperatingSystemFactory
  
#  [#<WmiLite::Wmi::Instance:0x00000003405da0 @wmi_ole_object=#<WIN32OLE:0x00000003405dc8>, 
#  @property_map={"bootdevice"=>"\\Device\\HarddiskVolume2", "buildnumber"=>"10586", "buildtype"=>"Multiprocessor Free", "caption"=>"Microsoft Windows 10 Home Single Language", "codeset"=>"1252", "countrycode"=>"55", "creationclassname"=>"Win32_OperatingSystem", "cscreationclassname"=>"Win32_ComputerSystem", 
#  "csdversion"=>nil, "csname"=>"LENOVO-PC", "currenttimezone"=>-180, "dataexecutionprevention_32bitapplications"=>true, "dataexecutionprevention_available"=>true, "dataexecutionprevention_drivers"=>true, "dataexecutionprevention_supportpolicy"=>2, "debug"=>false, 
#  "description"=>"", "distributed"=>false, "encryptionlevel"=>256, "foregroundapplicationboost"=>2,
#  "freephysicalmemory"=>"2329772", "freespaceinpagingfiles"=>"4944324", "freevirtualmemory"=>"4537068", "installdate"=>"20151128072220.000000-120", 
#  "largesystemcache"=>nil, "lastbootuptime"=>"20160705125331.495450-180", "localdatetime"=>"20160705195045.531000-180", "locale"=>"0416", 
#  "manufacturer"=>"Microsoft Corporation", "maxnumberofprocesses"=>-1, "maxprocessmemorysize"=>"137438953344", "muilanguages"=>["pt-BR"], 
#  "name"=>"Microsoft Windows 10 Home Single Language|C:\\WINDOWS|\\Device\\Harddisk0\\Partition5", "numberoflicensedusers"=>0, "numberofprocesses"=>120, "numberofusers"=>3, 
#  "operatingsystemsku"=>100, "organization"=>"", "osarchitecture"=>"64 bits", "oslanguage"=>1046, "osproductsuite"=>768, "ostype"=>18, "othertypedescription"=>nil, 
#  "paeenabled"=>nil, "plusproductid"=>nil, "plusversionnumber"=>nil, "portableoperatingsystem"=>false, "primary"=>true, "producttype"=>1, "registereduser"=>"user", 
#  "serialnumber"=>"00327-60000-00000-AA237", "servicepackmajorversion"=>0, "servicepackminorversion"=>0, "sizestoredinpagingfiles"=>"4980736", "status"=>"OK", 
#  "suitemask"=>784, "systemdevice"=>"\\Device\\HarddiskVolume5", "systemdirectory"=>"C:\\WINDOWS\\system32", "systemdrive"=>"C:", "totalswapspacesize"=>nil, 
#  "totalvirtualmemorysize"=>"13230332", "totalvisiblememorysize"=>"8249596", "version"=>"10.0.10586", "windowsdirectory"=>"C:\\WINDOWS"}>]
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