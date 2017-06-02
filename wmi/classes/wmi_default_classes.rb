require_relative 'wmi_class_base'

module Nanotek

  class WmiDefaultClasses < WmiClassBase
    
    def initialize
      super
    end
    
    def load_wmi_classes
      @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\DEFAULT")
      @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\DEFAULT")
      @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\DEFAULT")
      @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\DEFAULT")
      @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\DEFAULT")
      @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\DEFAULT")
      @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\DEFAULT")
      @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\DEFAULT")
      @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\DEFAULT")
      @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\DEFAULT")
      @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\DEFAULT")
      @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\DEFAULT")
      @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\DEFAULT")
      @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\DEFAULT")
      @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\DEFAULT")
      @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\DEFAULT")
      @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\DEFAULT")
      @classes[:__EventConsumerProv] = Nanotek::Wmi_Class.new("__EventConsumerProv" ,"ROOT\DEFAULT")
      @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\DEFAULT")
      @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\DEFAULT")
      @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\DEFAULT")
      @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\DEFAULT")
      @classes[:SMTPEventConsumer] = Nanotek::Wmi_Class.new("SMTPEventConsumer" ,"ROOT\DEFAULT")
      @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\DEFAULT")
      @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\DEFAULT")
      @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\DEFAULT")
      @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\DEFAULT")
      @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\DEFAULT")
      @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\DEFAULT")
      @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\DEFAULT")
      @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\DEFAULT")
      @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\DEFAULT")
      @classes[:RegistryEvent] = Nanotek::Wmi_Class.new("RegistryEvent" ,"ROOT\DEFAULT")
      @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\DEFAULT")
      @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\DEFAULT")
      @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\DEFAULT")
      @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\DEFAULT")
      @classes[:__AdapStatus] = Nanotek::Wmi_Class.new("__AdapStatus" ,"ROOT\DEFAULT")
      @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\DEFAULT")
      @classes[:StdRegProv] = Nanotek::Wmi_Class.new("StdRegProv" ,"ROOT\DEFAULT")
      @classes[:SystemRestoreConfig] = Nanotek::Wmi_Class.new("SystemRestoreConfig" ,"ROOT\DEFAULT")
      @classes[:SystemRestore] = Nanotek::Wmi_Class.new("SystemRestore" ,"ROOT\DEFAULT")

    end

  end

end