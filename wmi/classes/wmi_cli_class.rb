require_relative 'wmi_class_base'

module Nanotek

  class WmiCliClass < WmiClassBase
    def initialize
      @classes = {}
      load_wmi_classes
    end
    
    
    def load_wmi_classes
      @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\\Cli")
      @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\\Cli")
      @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\\Cli")
      @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\\Cli")
      @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT\\Cli")
      @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\\Cli")
      @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\\Cli")
      @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT\\Cli")
      @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\\Cli")
      @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\\Cli")
      @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\\Cli")
      @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\\Cli")
      @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\\Cli")
      @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\\Cli")
      @classes[:__SecurityRelatedClass] = Nanotek::Wmi_Class.new("__SecurityRelatedClass" ,"ROOT\\Cli")
      @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\\Cli")
      @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\\Cli")
      @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\\Cli")
      @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT\\Cli")
      @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\\Cli")
      @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\\Cli")
      @classes[:__ProviderRegistration] = Nanotek::Wmi_Class.new("__ProviderRegistration" ,"ROOT\\Cli")
      @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\\Cli")
      @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\\Cli")
      @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\\Cli")
      @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\\Cli")
      @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\\Cli")
      @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\\Cli")
      @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\\Cli")
      @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\\Cli")
      @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT\\Cli")
      @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT\\Cli")
      @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT\\Cli")
      @classes[:__InstanceCreationEvent] = Nanotek::Wmi_Class.new("__InstanceCreationEvent" ,"ROOT\\Cli")
      @classes[:__MethodInvocationEvent] = Nanotek::Wmi_Class.new("__MethodInvocationEvent" ,"ROOT\\Cli")
      @classes[:__InstanceDeletionEvent] = Nanotek::Wmi_Class.new("__InstanceDeletionEvent" ,"ROOT\\Cli")
      @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\\Cli")
      @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\\Cli")
      @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\\Cli")
      @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\\Cli")
      @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\\Cli")
      @classes[:__ConsumerFailureEvent] = Nanotek::Wmi_Class.new("__ConsumerFailureEvent" ,"ROOT\\Cli")
      @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\\Cli")
      @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\\Cli")
      @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\\Cli")
      @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\\Cli")
      @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\\Cli")
      @classes[:MSFT_CliTranslateTable] = Nanotek::Wmi_Class.new("MSFT_CliTranslateTable" ,"ROOT\\Cli")
      @classes[:MSFT_CliConnection] = Nanotek::Wmi_Class.new("MSFT_CliConnection" ,"ROOT\\Cli")
      @classes[:MSFT_CliParam] = Nanotek::Wmi_Class.new("MSFT_CliParam" ,"ROOT\\Cli")
      @classes[:MSFT_CliSeeAlso] = Nanotek::Wmi_Class.new("MSFT_CliSeeAlso" ,"ROOT\\Cli")
      @classes[:MSFT_CliVerb] = Nanotek::Wmi_Class.new("MSFT_CliVerb" ,"ROOT\\Cli")
      @classes[:MSFT_CliQualifier] = Nanotek::Wmi_Class.new("MSFT_CliQualifier" ,"ROOT\\Cli")
      @classes[:MSFT_CliProperty] = Nanotek::Wmi_Class.new("MSFT_CliProperty" ,"ROOT\\Cli")
      @classes[:MSFT_CliFormat] = Nanotek::Wmi_Class.new("MSFT_CliFormat" ,"ROOT\\Cli")
      @classes[:MSFT_CliAlias] = Nanotek::Wmi_Class.new("MSFT_CliAlias" ,"ROOT\\Cli")
    end
  end

end