require 'minitest/autorun'

class PathSplitTest < Minitest::Test
  
      def setup 
        @@paths = Array.new 
        @@path = Struct.new(:in , :level)
        configure_path
      end
      
      def test_spring_path
#        @@paths.each{|k| print_path mount_path_config(@@path.new(split_path(k) , 'level_0'))}
        puts  @@paths.select{
                |a|
                 a[4]
        }
#                h[h.keys[0]][i].level == 0
#  |h , i| 
#                 puts  @@paths[i]
  #                h[h.keys[0]][i].level == 0   
#        puts Symbol.all_symbols.size    #=> 903
#        puts Symbol.all_symbols[1..Symbol.all_symbols.length]
      end
  
#      def mount_path_config *path_splitted
#          key = path_splitted.flatten.last
#          puts path_splitted
#          path_struct =  path_splitted.flatten.collect {|k| @@path.new(k)}
#         return path_struct  # Hash.new({key => path_struct})
#      end
      
      def split_path what
          what.split("\\")
      end  
      
      def print_path *what
       puts what.flatten
     end
     
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
       
       path_config.each{|k| mount_path_config(split_path(k))}
         
     end
     
     def mount_path_config *path_splitted
         level_counter = 0
         hash_keys = {}
         path_struct_hash = Hash.new
         key = path_splitted.flatten.last
            path_struct =  path_splitted.flatten.collect {|k|
              level_counter+=1
              hash_keys[level_counter] = k 
         }
         @@paths.push(hash_keys)
    end
     
     def split_path what
         what.split('\\')
     end  
end