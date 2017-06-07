require 'rake/file_utils'
require 'io/console'
require 'fcntl'
require 'yaml'
require 'yaml/store'

require_relative 'wmi_class_filter'
require_relative 'wmi_service'
require_relative './classes/wmi_root_cimv2_classes'
require_relative './classes/wmi_root_classes'
require_relative '../filter/nil_filter'
require_relative './wmi_class_definition'
require 'open3'

module Nanotek
  class WmiRootFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        @wmi_root_classes.push remove_preamble(value)
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value[1..value.length-1].join("\\") ,   value[0]))
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -namespace root| Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiRootCimV2FileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command

      cmd = "cmd /C PowerShell.exe   -Command \"&{Get-WmiObject -List -namespace root\\cimv2 | Get-Member -MemberType Property | grep TypeName:}\""

      std = ""

      Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
        std = stdout.read
        puts "stdout is:" + std
      end
      std

      #        `PowerShell.exe -Command "&{Get-WmiObject -List -namespace root\\cimv2 | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiRootSubscriptionFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -namespace  ROOT\\subscription | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiRootDefaultFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiRootMsdtcFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -namespace  ROOT\\msdtc | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiRootCliFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -namespace  ROOT\\Cli | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiSecurityFileFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -namespace  ROOT\\SECURITY| Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class WmiProviderPathFormatter
    include FileUtils
    def initialize
      @wmi_root_classes = []
      #            io = IO.read(File.join(File.dirname(__FILE__), 'wmi_root_objects'))
      execute_shell_command.split("\n").each do |value|
        normalize value
        @wmi_root_classes.push remove_preamble(value) if normalize value
      end
      @classes =[]
      @wmi_root_classes.each do |value|
        @classes.push(Nanotek::Wmi_Class.new(value.last ,   value[0..value.length-2].join("\\"))) if value.length > 0
      end
      @classes.each do |value|
        puts "@classes[:#{value[:base_class]}] = Nanotek::Wmi_Class.new(\"#{value[0]}\" ,\"#{value[1]}\")"
      end
    end

    def normalize value
      if value.lstrip.rstrip == "TypeName:"
        return   false
      end
      true
    end

    def execute_shell_command
      `PowerShell.exe -Command "&{Get-WmiObject -List -Namespace  ROOT\\StandardCimv2 | Get-Member -MemberType Property | grep TypeName:}"`
      #        fd = STDOUT.fcntl(Fcntl::F_DUPFD)
      #        IO.new(fd, mode: 'w:UTF-16LE', cr_newline: true)
    end
    #    @classes[:__Win32Provider] = Nonotek::Wmi_Class.new("__Win32Provider" ,   "ROOT")
    #      def  remove_preamble value
    #        to_remove = "TypeName: System.Management.ManagementClass#"
    #        value.chomp.lstrip.split("#").last.split("\\").last
    #      end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class  PropertyFormatter
    def initialize
    end

  end

  class Wmi2Win32_SystemResources_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_SystemResources" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd , "C:/Java/git_repo/event_driven/base/yaml/"
      yaml_serialzier.serialize
    end
  end

  class Wmi2_SystemSlot_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_SystemSlot" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd , "C:/Java/git_repo/event_driven/base/yaml/"
      yaml_serialzier.serialize
    end
  end

  #FAIL
  class Wmi__TimerInstruction_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["__TimerInstruction" ,"ROOT\\RSOP"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd , "C:/Java/git_repo/event_driven/base/yaml/rsop/"
      yaml_serialzier.serialize
    end
  end

  class Wmi__Win32Provider_DEFAULT_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["__Win32Provider" ,"ROOT\\DEFAULT"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd , "C:/Java/git_repo/event_driven/base/yaml/default/"
      yaml_serialzier.serialize
    end
  end

  class WmiWin32_USBController_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_USBController" ,"ROOT\\CIMV2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiCIM_Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["__SystemClass" ,"ROOT\\CIMV2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiCIM_SystemScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["CIM_System" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiCIM_SystemDeviceScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["CIM_SystemDevice" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiCIMActionScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["CIM_BIOSElement" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_yaml
      yaml_serialzier = Nanotek::YamlSerializer.new
      yaml_serialzier.serialize wmf_cd
    end
  end

  class WmiWin32_BIOS
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmc = Nanotek::WmiRootCimv2Class.new.find_wmi_class :Win32_BIOS
      wmf =  WmiClassFormatter.new [wmc[wmc.keys[0]].base_class ,wmc[wmc.keys[0]].wmi_path]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiWin32_OperatingSystem
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmc = Nanotek::WmiRootCimv2Class.new.find_wmi_class :Win32_OperatingSystem
      wmf =  WmiClassFormatter.new [wmc[wmc.keys[0]].base_class ,wmc[wmc.keys[0]].wmi_path]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiWin32ServiceScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_Service" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiWin32_SystemUsersScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_SystemUsers" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiWin32_ComputerSystemScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_ComputerSystem" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiNetworkAdpterScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_NetworkAdapter" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiWin32ProductScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      wmf = WmiClassFormatter.new ["Win32_Product" ,"ROOT\\cimv2"]
      wmf_cd = wmf.cd if wmf.filter_shell_command
      puts wmf_cd.to_s
      yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
      yaml_serialzier.serialize
    end
  end

  class WmiRootScanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootClasses.new
      generate_class_files
    end

    def generate_class_files
      @cim_v2_classes.classes.each do |clazz|
        #            Wmi_Class = Struct.new(:base_class , :wmi_path)
        wmi_class = clazz[1]
        puts wmi_class
        wmf = WmiClassFormatter.new [wmi_class.base_class , wmi_class.wmi_path]
        wmf_cd = wmf.cd if wmf.filter_shell_command
        yaml_serialzier = Nanotek::YamlSerializer.new wmf_cd
        yaml_serialzier.serialize
      end
    end
  end

  class WmiCimV2Scanner
    def initialize
      @cim_v2_classes = Nanotek::WmiRootCimv2Class.new
      generate_class_files
    end

    def generate_class_files
      @cim_v2_classes.classes.each do |clazz|
        #                          Fiber.new{
        #            Wmi_Class = Struct.new(:base_class , :wmi_path)
        wmi_class = clazz[1]
        puts wmi_class
        wmf = WmiClassFormatter.new [wmi_class.base_class , wmi_class.wmi_path]
        wmf_cd = wmf.cd if wmf.filter_shell_command
        Nanotek::YamlSerializer.new(wmf_cd).serialize
        #                            }.resume
      end
    end
  end

  class WmiClassFormatter
    include FileUtils

    attr_reader(:cd)
    def initialize args = nil
      @wmi_root_classes = []
      @args = args
    end

    def filter_shell_command
      result = execute_shell_command @args
      raise  ArgumentError , "Error on Parameter" unless result.is_a?String
      @cd = Nanotek::ClassDefinition.new
      @cd.name = @args[0]
      @cd.path = @args[1]
      result.split("\\n").each do |value|
        #                      puts " the value #{value}"
        val = value.lstrip.rstrip.chomp
        @cd.with_properties(WmiClassFilter.parse_class(val))
        #                      puts "Class Definition : #{@cd.name} #{@cd.path} #{@cd.properties}"
      end unless result.include?('Get-Member :')
      true
    end

    def execute_shell_command args
      args  = ['Win32_USBHub' , 'root\\cimv2'] if args.nil?
      `PowerShell.exe -Command "&{Get-WmiObject -Class #{args[0]} -namespace #{args[1]} | Get-Member -MemberType Property}"`
    end

    def remove_preamble value
      split_all(value.chomp.lstrip.split("#").last)
    end
  end

  class ClassLoader
    def initialize
      @cd = YAML.load(IO.read("C:/Java/git_repo/event_driven/base/yaml/Win32_SystemBIOS.yml"))
      cd_i = @cd.values[0]
      get_class_definition_from_service cd_i
    end

    def get_class_definition_from_service cd_i
      wmi =  WmiService.new({:service => cd_i.name , :location => cd_i.path})
      instances = wmi.instances_of(cd_i.name)
    end

  end

  class YamlSerializer
    def initialize *args
      @class_definition = args[0]
      @path = Nanotek::NilFilter.accept(args[1]) ? "C:/Java/git_repo/yml/" : args[1]
      puts "the path #{@path}"
    end

    def serialize
      puts  "#{@class_definition.name}"
      store = YAML::Store.new "#{@path}#{@class_definition.name}.yml"
      puts "the class string name #{@path}#{@class_definition.name}.yml"
      store.transaction do
        store[@class_definition.name] = @class_definition
      end

    end

  end

end
# Nanotek::WmiWin32ProductScanner.new
Nanotek::WmiCimV2Scanner.new
#Nanotek::WmiRootCimV2FileFormatter.new
#TypeName: System.Management.ManagementObject#root\cimv2\Win32_USBHub
#
#Name                        MemberType Definition
#----                        ---------- ----------
#Availability                Property   uint16 Availability {get;set;}
#Caption                     Property   string Caption {get;set;}
#ClassCode                   Property   byte ClassCode {get;set;}
#ConfigManagerErrorCode      Property   uint32 ConfigManagerErrorCode {get;set;}
#ConfigManagerUserConfig     Property   bool ConfigManagerUserConfig {get;set;}
#CreationClassName           Property   string CreationClassName {get;set;}
#CurrentAlternateSettings    Property   byte[] CurrentAlternateSettings {get;set;}
#CurrentConfigValue          Property   byte CurrentConfigValue {get;set;}
#Description                 Property   string Description {get;set;}
#DeviceID                    Property   string DeviceID {get;set;}
#ErrorCleared                Property   bool ErrorCleared {get;set;}
#ErrorDescription            Property   string ErrorDescription {get;set;}
#GangSwitched                Property   bool GangSwitched {get;set;}
#InstallDate                 Property   string InstallDate {get;set;}
#LastErrorCode               Property   uint32 LastErrorCode {get;set;}
#Name                        Property   string Name {get;set;}
#NumberOfConfigs             Property   byte NumberOfConfigs {get;set;}
#NumberOfPorts               Property   byte NumberOfPorts {get;set;}
#PNPDeviceID                 Property   string PNPDeviceID {get;set;}
#PowerManagementCapabilities Property   uint16[] PowerManagementCapabilities {get;set;}
#PowerManagementSupported    Property   bool PowerManagementSupported {get;set;}
#ProtocolCode                Property   byte ProtocolCode {get;set;}
#Status                      Property   string Status {get;set;}
#StatusInfo                  Property   uint16 StatusInfo {get;set;}
#SubclassCode                Property   byte SubclassCode {get;set;}
#SystemCreationClassName     Property   string SystemCreationClassName {get;set;}
#SystemName                  Property   string SystemName {get;set;}
#USBVersion                  Property   uint16 USBVersion {get;set;}
#__CLASS                     Property   string __CLASS {get;set;}
#__DERIVATION                Property   string[] __DERIVATION {get;set;}
#__DYNASTY                   Property   string __DYNASTY {get;set;}
#__GENUS                     Property   int __GENUS {get;set;}
#__NAMESPACE                 Property   string __NAMESPACE {get;set;}
#__PATH                      Property   string __PATH {get;set;}
#__PROPERTY_COUNT            Property   int __PROPERTY_COUNT {get;set;}
#__RELPATH                   Property   string __RELPATH {get;set;}
#__SERVER                    Property   string __SERVER {get;set;}
#__SUPERCLASS                Property   string __SUPERCLASS {get;set;}

#ROOT\DEFAULT
#ROOT\msdtc
#ROOT\Cli
#ROOT\SECURITY

