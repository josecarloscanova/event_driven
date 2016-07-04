class WmiProviderPath 
  
  attr_reader(:path , :wmi_paths)
  
  def initialize
    prepare
  end
  
  def prepare
      @@path = Struct.new(:in)
      load_paths
  end
  
  def load_paths
      configure_path
     true
  end
  
  
  def get_wmi_path *path_sufix
    result = find_path(path_sufix[0])
    build_path result
  end
  
  def get_wmi_paths 
      @wmi_paths = []
      @@paths.each {|p|
                      @wmi_paths.push(p)
                    }
    true              
  end
  
  private 
    
    def configure_path
      
      @@paths = []
        
      @@paths.push('ROOT')
      @@paths.push('ROOT\subscription')
      @@paths.push('ROOT\DEFAULT')
      @@paths.push('ROOT\CIMV2')
      @@paths.push('ROOT\msdtc')
      @@paths.push('ROOT\Cli')
      @@paths.push('ROOT\SECURITY')
      @@paths.push('ROOT\SecurityCenter2')
      @@paths.push('ROOT\RSOP')
      @@paths.push('ROOT\PEH')
      @@paths.push('ROOT\StandardCimv2')
      @@paths.push('ROOT\WMI')
      @@paths.push('ROOT\directory')
      @@paths.push('ROOT\Interop')
      @@paths.push('ROOT\Hardware')
      @@paths.push('ROOT\ServiceModel')
      @@paths.push('ROOT\SecurityCenter')
      @@paths.push('ROOT\VisualSVN')
      @@paths.push('ROOT\Microsoft')
      @@paths.push('ROOT\CIMV2\mdm')
      @@paths.push('ROOT\CIMV2\Security')
      @@paths.push('ROOT\CIMV2\power')
      @@paths.push('ROOT\CIMV2\Applications')
      @@paths.push('ROOT\RSOP\User')
      @@paths.push('ROOT\RSOP\Computer')
      @@paths.push('ROOT\directory\LDAP')
      @@paths.push('ROOT\VisualSVN\RepoCfg')
      @@paths.push('ROOT\Microsoft\SqlServer')
      @@paths.push('ROOT\Microsoft\HomeNet')
      @@paths.push('ROOT\Microsoft\protectionManagement')
      @@paths.push('ROOT\Microsoft\Windows')
      @@paths.push('ROOT\Microsoft\SecurityClient')
      @@paths.push('ROOT\CIMV2\mdm\dmmap')
      @@paths.push('ROOT\CIMV2\Security\MicrosoftTpm')
      @@paths.push('ROOT\CIMV2\Security\MicrosoftVolumeEncryption')
      @@paths.push('ROOT\CIMV2\Applications\WindowsParentalControls')
      @@paths.push('ROOT\CIMV2\Applications\Games')
      @@paths.push('ROOT\Microsoft\SqlServer\ServerEvents')
      @@paths.push('ROOT\Microsoft\SqlServer\ComputerManagement12')
      @@paths.push('ROOT\Microsoft\Windows\RemoteAccess')
      @@paths.push('ROOT\Microsoft\Windows\Dns')
      @@paths.push('ROOT\Microsoft\Windows\Powershellv3')
      @@paths.push('ROOT\Microsoft\Windows\WindowsUpdate')
      
    end 
      
  
end