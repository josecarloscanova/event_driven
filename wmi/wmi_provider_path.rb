class WmiProviderPath 
  
  attr_reader(:path)
  
  def initialize
    load_paths
  end
  
  def load_paths
    return to_path_hash
  end
  
  def to_path_hash
    return @@paths.hash
  end
  
  private 
  
    @@paths = Array.new
    
    def configure_path
      
      @@paths.puts('ROOT')
      @@paths.puts('ROOT\subscription')
      @@paths.puts('ROOT\DEFAULT')
      @@paths.puts('ROOT\CIMV2')
      @@paths.puts('ROOT\msdtc')
      @@paths.puts('ROOT\Cli')
      @@paths.puts('ROOT\SECURITY')
      @@paths.puts('ROOT\SecurityCenter2')
      @@paths.puts('ROOT\RSOP')
      @@paths.puts('ROOT\PEH')
      @@paths.puts('ROOT\StandardCimv2')
      @@paths.puts('ROOT\WMI')
      @@paths.puts('ROOT\directory')
      @@paths.puts('ROOT\Interop')
      @@paths.puts('ROOT\Hardware')
      @@paths.puts('ROOT\ServiceModel')
      @@paths.puts('ROOT\SecurityCenter')
      @@paths.puts('ROOT\VisualSVN')
      @@paths.puts('ROOT\Microsoft')
      @@paths.puts('ROOT\CIMV2\mdm')
      @@paths.puts('ROOT\CIMV2\Security')
      @@paths.puts('ROOT\CIMV2\power')
      @@paths.puts('ROOT\CIMV2\Applications')
      @@paths.puts('ROOT\RSOP\User')
      @@paths.puts('ROOT\RSOP\Computer')
      @@paths.puts('ROOT\directory\LDAP')
      @@paths.puts('ROOT\VisualSVN\RepoCfg')
      @@paths.puts('ROOT\Microsoft\SqlServer')
      @@paths.puts('ROOT\Microsoft\HomeNet')
      @@paths.puts('ROOT\Microsoft\protectionManagement')
      @@paths.puts('ROOT\Microsoft\Windows')
      @@paths.puts('ROOT\Microsoft\SecurityClient')
      @@paths.puts('ROOT\CIMV2\mdm\dmmap')
      @@paths.puts('ROOT\CIMV2\Security\MicrosoftTpm')
      @@paths.puts('ROOT\CIMV2\Security\MicrosoftVolumeEncryption')
      @@paths.puts('ROOT\CIMV2\Applications\WindowsParentalControls')
      @@paths.puts('ROOT\CIMV2\Applications\Games')
      @@paths.puts('ROOT\Microsoft\SqlServer\ServerEvents')
      @@paths.puts('ROOT\Microsoft\SqlServer\ComputerManagement12')
      @@paths.puts('ROOT\Microsoft\Windows\RemoteAccess')
      @@paths.puts('ROOT\Microsoft\Windows\Dns')
      @@paths.puts('ROOT\Microsoft\Windows\Powershellv3')
      @@paths.puts('ROOT\Microsoft\Windows\WindowsUpdate')
      
    end
  
end