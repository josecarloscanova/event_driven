require_relative 'wmi_class_base'

module Nanotek
  
  #  NameSpace: ROOT
  #  
  class WmiRootClasses < Nanotek::WmiClassBase
    
    attr_reader(:wmi_classes_path , :classes)
    
    def initialize
      load_wmi_classes
    end
    
    def load_wmi_classes
      @classes = {}
      @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT")
      @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT")
      @classes[:__CacheControl] = Nanotek::Wmi_Class.new("__CacheControl" ,"ROOT")
      @classes[:__EventConsumerProviderCacheControl] = Nanotek::Wmi_Class.new("__EventConsumerProviderCacheControl" ,"ROOT")
      @classes[:__EventProviderCacheControl] = Nanotek::Wmi_Class.new("__EventProviderCacheControl" ,"ROOT")
      @classes[:__EventSinkCacheControl] = Nanotek::Wmi_Class.new("__EventSinkCacheControl" ,"ROOT")
      @classes[:__ObjectProviderCacheControl] = Nanotek::Wmi_Class.new("__ObjectProviderCacheControl" ,"ROOT")
      @classes[:__PropertyProviderCacheControl] = Nanotek::Wmi_Class.new("__PropertyProviderCacheControl" ,"ROOT")
      @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT")
      @classes[:__ArbitratorConfiguration] = Nanotek::Wmi_Class.new("__ArbitratorConfiguration" ,"ROOT")
      @classes[:__CIMOMIdentification] = Nanotek::Wmi_Class.new("__CIMOMIdentification" ,"ROOT")
      @classes[:__ProviderHostQuotaConfiguration] = Nanotek::Wmi_Class.new("__ProviderHostQuotaConfiguration" ,"ROOT")
      @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT")
      @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT")
      @classes[:__ProviderRegistration] = Nanotek::Wmi_Class.new("__ProviderRegistration" ,"ROOT")
      @classes[:__EventProviderRegistration] = Nanotek::Wmi_Class.new("__EventProviderRegistration" ,"ROOT")
      @classes[:__ObjectProviderRegistration] = Nanotek::Wmi_Class.new("__ObjectProviderRegistration" ,"ROOT")
      @classes[:__ClassProviderRegistration] = Nanotek::Wmi_Class.new("__ClassProviderRegistration" ,"ROOT")
      @classes[:__InstanceProviderRegistration] = Nanotek::Wmi_Class.new("__InstanceProviderRegistration" ,"ROOT")
      @classes[:__MethodProviderRegistration] = Nanotek::Wmi_Class.new("__MethodProviderRegistration" ,"ROOT")
      @classes[:__PropertyProviderRegistration] = Nanotek::Wmi_Class.new("__PropertyProviderRegistration" ,"ROOT")
      @classes[:__EventConsumerProviderRegistration] = Nanotek::Wmi_Class.new("__EventConsumerProviderRegistration" ,"ROOT")
      @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT")
      @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT")
      @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT")
      @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT")
      @classes[:__FilterToConsumerBinding] = Nanotek::Wmi_Class.new("__FilterToConsumerBinding" ,"ROOT")
      @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT")
      @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT")
      @classes[:__InstanceOperationEvent] = Nanotek::Wmi_Class.new("__InstanceOperationEvent" ,"ROOT")
      @classes[:__InstanceModificationEvent] = Nanotek::Wmi_Class.new("__InstanceModificationEvent" ,"ROOT")
      @classes[:__InstanceCreationEvent] = Nanotek::Wmi_Class.new("__InstanceCreationEvent" ,"ROOT")
      @classes[:__MethodInvocationEvent] = Nanotek::Wmi_Class.new("__MethodInvocationEvent" ,"ROOT")
      @classes[:__InstanceDeletionEvent] = Nanotek::Wmi_Class.new("__InstanceDeletionEvent" ,"ROOT")
      @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT")
      @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT")
      @classes[:__ClassModificationEvent] = Nanotek::Wmi_Class.new("__ClassModificationEvent" ,"ROOT")
      @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT")
      @classes[:__NamespaceOperationEvent] = Nanotek::Wmi_Class.new("__NamespaceOperationEvent" ,"ROOT")
      @classes[:__NamespaceModificationEvent] = Nanotek::Wmi_Class.new("__NamespaceModificationEvent" ,"ROOT")
      @classes[:__NamespaceDeletionEvent] = Nanotek::Wmi_Class.new("__NamespaceDeletionEvent" ,"ROOT")
      @classes[:__NamespaceCreationEvent] = Nanotek::Wmi_Class.new("__NamespaceCreationEvent" ,"ROOT")
      @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT")
      @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT")
      @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT")
      @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT")
      @classes[:__EventQueueOverflowEvent] = Nanotek::Wmi_Class.new("__EventQueueOverflowEvent" ,"ROOT")
      @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT")
      @classes[:__ConsumerFailureEvent] = Nanotek::Wmi_Class.new("__ConsumerFailureEvent" ,"ROOT")
      @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT")
      @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT")
      @classes[:__AbsoluteTimerInstruction] = Nanotek::Wmi_Class.new("__AbsoluteTimerInstruction" ,"ROOT")
      @classes[:__IntervalTimerInstruction] = Nanotek::Wmi_Class.new("__IntervalTimerInstruction" ,"ROOT")
      @classes[:__ListOfEventActiveNamespaces] = Nanotek::Wmi_Class.new("__ListOfEventActiveNamespaces" ,"ROOT")
      @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT")
      @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT")
      @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT")
      @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT")
      @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT")
      @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT")
      @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT")
      @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT")
      @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT")
      @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT")
      @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT")
      @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT")
      @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT")
      @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT")
      @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT")
      @classes[:__SecurityRelatedClass] = Nanotek::Wmi_Class.new("__SecurityRelatedClass" ,"ROOT")
      @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT")
      @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT")
      @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT")
      @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT")
      @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT")

    end

  end
end


wmi = Nanotek::WmiRootClasses.new

puts wmi.find_wmi_class(:__SecurityDescriptor)