require 'minitest/autorun'

class PathSplitTest < Minitest::Test
  
      def setup 
        @@paths = Array.new 
        @@path = Struct.new(:in)
        configure_path
      end
      
      def test_spring_path
        @@paths.each{|k| print_path mount_path_config(@@path.new(split_path(k)))}
      end
  
      def mount_path_config *path_splitted
          key = path_splitted.flatten.last
          puts path_splitted
          path_struct =  path_splitted.flatten.collect {|k| @@path.new(k)}
         return path_struct  # Hash.new({key => path_struct})
      end
      
      def split_path what
          what.split("\\")
      end  
      
      def print_path *what
       puts what.flatten
     end
     
     def configure_path
       
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