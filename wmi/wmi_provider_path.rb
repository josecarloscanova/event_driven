class WmiProviderPath 
  
  attr_reader(:path)
  
  def initialize
    prepare
    load_paths
  end
  
  def prepare
      @@path = Struct.new(:in)
    true
  end
  
  def load_paths
      configure_path
     true
  end
  
  def to_path_hash
      @@paths.hash
    true
  end
  
  private 
  
    @@paths = Array.new
    
    def configure_path
      
      path_config = []
        
      path_config.push('ROOT')
      path_config.push('ROOT\subscription')
      path_config.push('ROOT\DEFAULT')
      path_config.push('ROOT\CIMV2')
      path_config.push('ROOT\msdtc')
      path_config.push('ROOT\Cli')
      path_config.push('ROOT\SECURITY')
      path_config.push('ROOT\SecurityCenter2')
      path_config.push('ROOT\RSOP')
      path_config.push('ROOT\PEH')
      path_config.push('ROOT\StandardCimv2')
      path_config.push('ROOT\WMI')
      path_config.push('ROOT\directory')
      path_config.push('ROOT\Interop')
      path_config.push('ROOT\Hardware')
      path_config.push('ROOT\ServiceModel')
      path_config.push('ROOT\SecurityCenter')
      path_config.push('ROOT\VisualSVN')
      path_config.push('ROOT\Microsoft')
      path_config.push('ROOT\CIMV2\mdm')
      path_config.push('ROOT\CIMV2\Security')
      path_config.push('ROOT\CIMV2\power')
      path_config.push('ROOT\CIMV2\Applications')
      path_config.push('ROOT\RSOP\User')
      path_config.push('ROOT\RSOP\Computer')
      path_config.push('ROOT\directory\LDAP')
      path_config.push('ROOT\VisualSVN\RepoCfg')
      path_config.push('ROOT\Microsoft\SqlServer')
      path_config.push('ROOT\Microsoft\HomeNet')
      path_config.push('ROOT\Microsoft\protectionManagement')
      path_config.push('ROOT\Microsoft\Windows')
      path_config.push('ROOT\Microsoft\SecurityClient')
      path_config.push('ROOT\CIMV2\mdm\dmmap')
      path_config.push('ROOT\CIMV2\Security\MicrosoftTpm')
      path_config.push('ROOT\CIMV2\Security\MicrosoftVolumeEncryption')
      path_config.push('ROOT\CIMV2\Applications\WindowsParentalControls')
      path_config.push('ROOT\CIMV2\Applications\Games')
      path_config.push('ROOT\Microsoft\SqlServer\ServerEvents')
      path_config.push('ROOT\Microsoft\SqlServer\ComputerManagement12')
      path_config.push('ROOT\Microsoft\Windows\RemoteAccess')
      path_config.push('ROOT\Microsoft\Windows\Dns')
      path_config.push('ROOT\Microsoft\Windows\Powershellv3')
      path_config.push('ROOT\Microsoft\Windows\WindowsUpdate')
      
      @@paths.push path_config.each{|k|  mount_path_config @@path.new(split_path(k))}
        
    end 
      
    def mount_path_config *path_splitted
          level_counter = 0
          hash_keys = {}
          path_struct_hash = Hash.new
          path_struct =  path_splitted.flatten.collect {|k|
               level_counter+=1
               hash_keys[level_counter] = @@path.new(k) 
          }
          @@paths.push(hash_keys)
     end
      
    def split_path what
        what.split('\\')
    end  
      
  
end