require_relative 'wmi_class_base'

module Nanotek

    class WmiRsopClass <Nanotek::WmiClassBase
      
      def initialize
        @classes = {}
        load_wmi_classes  
      end
      
      
      def load_wmi_classes
        @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\\RSOP")
        @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\\RSOP")
        @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\\RSOP")
        @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\\RSOP")
        @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT\\RSOP")
        @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\\RSOP")
        @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\\RSOP")
        @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT\\RSOP")
        @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\\RSOP")
        @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\\RSOP")
        @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\\RSOP")
        @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\\RSOP")
        @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\\RSOP")
        @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\\RSOP")
        @classes[:__SecurityRelatedClass] = Nanotek::Wmi_Class.new("__SecurityRelatedClass" ,"ROOT\\RSOP")
        @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\\RSOP")
        @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\\RSOP")
        @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\\RSOP")
        @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT\\RSOP")
        @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\\RSOP")
        @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\\RSOP")
        @classes[:__ProviderRegistration] = Nanotek::Wmi_Class.new("__ProviderRegistration" ,"ROOT\\RSOP")
        @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\\RSOP")
        @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\\RSOP")
        @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\\RSOP")
        @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\\RSOP")
        @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\\RSOP")
        @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\\RSOP")
        @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\\RSOP")
        @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\\RSOP")
        @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT\\RSOP")
        @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT\\RSOP")
        @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT\\RSOP")
        @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\\RSOP")
        @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\\RSOP")
        @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\\RSOP")
        @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\\RSOP")
        @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\\RSOP")
        @classes[:__ConsumerFailureEvent] = Nanotek::Wmi_Class.new("__ConsumerFailureEvent" ,"ROOT\\RSOP")
        @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\\RSOP")
        @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\\RSOP")
        @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\\RSOP")
        @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\\RSOP")
        @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\\RSOP")
    
      end
    end

end