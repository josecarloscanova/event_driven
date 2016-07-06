require_relative 'wmi_class_base'

module Nanotek

    class WmiSecurityClasses < Nanotek::WmiClassBase
      
      def initialize
        @classes = {} 
        load_wmi_classes
      end
      
      def load_wmi_classes
        
        @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\\SECURITY")
        @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\\SECURITY")
        @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\\SECURITY")
        @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\\SECURITY")
        @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\\SECURITY")
        @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\\SECURITY")
        @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\\SECURITY")
        @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\\SECURITY")
        @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\\SECURITY")
        @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\\SECURITY")
        @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\\SECURITY")
        @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\\SECURITY")
        @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\\SECURITY")
        @classes[:__Subject] = Nanotek::Wmi_Class.new("__Subject" ,"ROOT\\SECURITY")
        @classes[:__Group] = Nanotek::Wmi_Class.new("__Group" ,"ROOT\\SECURITY")
        @classes[:__User] = Nanotek::Wmi_Class.new("__User" ,"ROOT\\SECURITY")
        @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\\SECURITY")
        @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\\SECURITY")
        @classes[:__EventConsumerPro] = Nanotek::Wmi_Class.new("__EventConsumerPro" ,"ROOT\\SECURITY")
        @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\\SECURITY")
        @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\\SECURITY")
        @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\\SECURITY")
        @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\\SECURITY")
        @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\\SECURITY")
        @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\\SECURITY")
        @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\\SECURITY")
        @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\\SECURITY")
        @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\\SECURITY")
        @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\\SECURITY")
        @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\\SECURITY")
        @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\\SECURITY")
        @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\\SECURITY")
        @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\\SECURITY")
        @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\\SECURITY")
        @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\\SECURITY")
    
      end
      
    end

end