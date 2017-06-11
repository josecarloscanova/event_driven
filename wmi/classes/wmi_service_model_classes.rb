require_relative 'wmi_class_base'

module Nanotek

  class WmiSecurityCenter < Nanotek::WmiClassBase
    
    def initialize
        load_wmi_classes
    end
    
    def load_wmi_classes
      @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\ServiceModel")
      @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\ServiceModel")
      @classes[:__ProviderRegistration] = Nanotek::Wmi_Class.new("__ProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__EventProviderRegistration] = Nanotek::Wmi_Class.new("__EventProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__ObjectProviderRegistration] = Nanotek::Wmi_Class.new("__ObjectProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__ClassProviderRegistration] = Nanotek::Wmi_Class.new("__ClassProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__InstanceProviderRegistration] = Nanotek::Wmi_Class.new("__InstanceProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__MethodProviderRegistration] = Nanotek::Wmi_Class.new("__MethodProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__PropertyProviderRegistration] = Nanotek::Wmi_Class.new("__PropertyProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__EventConsumerProviderRegistration] = Nanotek::Wmi_Class.new("__EventConsumerProviderRegistration" ,"ROOT\ServiceModel")
      @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\ServiceModel")
      @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\ServiceModel")
      @classes[:__FilterToConsumerBinding] = Nanotek::Wmi_Class.new("__FilterToConsumerBinding" ,"ROOT\ServiceModel")
      @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\ServiceModel")
      @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\ServiceModel")
      @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\ServiceModel")
      @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\ServiceModel")
      @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\ServiceModel")
      @classes[:__NamespaceOperationEvent] = Nanotek::Wmi_Class.new("__NamespaceOperationEvent" ,"ROOT\ServiceModel")
      @classes[:__NamespaceModificationEvent] = Nanotek::Wmi_Class.new("__NamespaceModificationEvent" ,"ROOT\ServiceModel")
      @classes[:__NamespaceDeletionEvent] = Nanotek::Wmi_Class.new("__NamespaceDeletionEvent" ,"ROOT\ServiceModel")
      @classes[:__NamespaceCreationEvent] = Nanotek::Wmi_Class.new("__NamespaceCreationEvent" ,"ROOT\ServiceModel")
      @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT\ServiceModel")
      @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT\ServiceModel")
      @classes[:__ClassModificationEvent] = Nanotek::Wmi_Class.new("__ClassModificationEvent" ,"ROOT\ServiceModel")
      @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT\ServiceModel")
      @classes[:__InstanceOperationEvent] = Nanotek::Wmi_Class.new("__InstanceOperationEvent" ,"ROOT\ServiceModel")
      @classes[:__InstanceCreationEvent] = Nanotek::Wmi_Class.new("__InstanceCreationEvent" ,"ROOT\ServiceModel")
      @classes[:__MethodInvocationEvent] = Nanotek::Wmi_Class.new("__MethodInvocationEvent" ,"ROOT\ServiceModel")
      @classes[:__InstanceModificationEvent] = Nanotek::Wmi_Class.new("__InstanceModificationEvent" ,"ROOT\ServiceModel")
      @classes[:__InstanceDeletionEvent] = Nanotek::Wmi_Class.new("__InstanceDeletionEvent" ,"ROOT\ServiceModel")
      @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\ServiceModel")
      @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\ServiceModel")
      @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\ServiceModel")
      @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\ServiceModel")
      @classes[:__EventQueueOverflowEvent] = Nanotek::Wmi_Class.new("__EventQueueOverflowEvent" ,"ROOT\ServiceModel")
      @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\ServiceModel")
      @classes[:__ConsumerFailureEvent] = Nanotek::Wmi_Class.new("__ConsumerFailureEvent" ,"ROOT\ServiceModel")
      @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\ServiceModel")
      @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\ServiceModel")
      @classes[:__AbsoluteTimerInstruction] = Nanotek::Wmi_Class.new("__AbsoluteTimerInstruction" ,"ROOT\ServiceModel")
      @classes[:__IntervalTimerInstruction] = Nanotek::Wmi_Class.new("__IntervalTimerInstruction" ,"ROOT\ServiceModel")
      @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\ServiceModel")
      @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\ServiceModel")
      @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\ServiceModel")
      @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\ServiceModel")
      @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\ServiceModel")
      @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\ServiceModel")
      @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\ServiceModel")
      @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT\ServiceModel")
      @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\ServiceModel")
      @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\ServiceModel")
      @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT\ServiceModel")
      @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\ServiceModel")
      @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\ServiceModel")
      @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\ServiceModel")
      @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\ServiceModel")
      @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\ServiceModel")
      @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\ServiceModel")
      @classes[:__SecurityRelatedClass] = Nanotek::Wmi_Class.new("__SecurityRelatedClass" ,"ROOT\ServiceModel")
      @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\ServiceModel")
      @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\ServiceModel")
      @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\ServiceModel")
      @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT\ServiceModel")
      @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\ServiceModel")
      @classes[:ChannelPoolSettings] = Nanotek::Wmi_Class.new("ChannelPoolSettings" ,"ROOT\ServiceModel")
      @classes[:PeerSecuritySettings] = Nanotek::Wmi_Class.new("PeerSecuritySettings" ,"ROOT\ServiceModel")
      @classes[:Contract] = Nanotek::Wmi_Class.new("Contract" ,"ROOT\ServiceModel")
      @classes[:AppDomainInfo] = Nanotek::Wmi_Class.new("AppDomainInfo" ,"ROOT\ServiceModel")
      @classes[:Operation] = Nanotek::Wmi_Class.new("Operation" ,"ROOT\ServiceModel")
      @classes[:TraceListener] = Nanotek::Wmi_Class.new("TraceListener" ,"ROOT\ServiceModel")
      @classes[:ExtendedProtectionPolicy] = Nanotek::Wmi_Class.new("ExtendedProtectionPolicy" ,"ROOT\ServiceModel")
      @classes[:TcpConnectionPoolSettings] = Nanotek::Wmi_Class.new("TcpConnectionPoolSettings" ,"ROOT\ServiceModel")
      @classes[:PeerTransportSecuritySettings] = Nanotek::Wmi_Class.new("PeerTransportSecuritySettings" ,"ROOT\ServiceModel")
      @classes[:Service] = Nanotek::Wmi_Class.new("Service" ,"ROOT\ServiceModel")
      @classes[:MetadataExporter] = Nanotek::Wmi_Class.new("MetadataExporter" ,"ROOT\ServiceModel")
      @classes[:XmlDictionaryReaderQuotas] = Nanotek::Wmi_Class.new("XmlDictionaryReaderQuotas" ,"ROOT\ServiceModel")
      @classes[:Channel] = Nanotek::Wmi_Class.new("Channel" ,"ROOT\ServiceModel")
      @classes[:Behavior] = Nanotek::Wmi_Class.new("Behavior" ,"ROOT\ServiceModel")
      @classes[:ServiceTimeoutsBehavior] = Nanotek::Wmi_Class.new("ServiceTimeoutsBehavior" ,"ROOT\ServiceModel")
      @classes[:WorkflowOperationBehavior] = Nanotek::Wmi_Class.new("WorkflowOperationBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceSecurityAuditBehavior] = Nanotek::Wmi_Class.new("ServiceSecurityAuditBehavior" ,"ROOT\ServiceModel")
      @classes[:WebInvokeAttribute] = Nanotek::Wmi_Class.new("WebInvokeAttribute" ,"ROOT\ServiceModel")
      @classes[:PersistenceProviderBehavior] = Nanotek::Wmi_Class.new("PersistenceProviderBehavior" ,"ROOT\ServiceModel")
      @classes[:DispatcherSynchronizationBehavior] = Nanotek::Wmi_Class.new("DispatcherSynchronizationBehavior" ,"ROOT\ServiceModel")
      @classes[:SynchronousReceiveBehavior] = Nanotek::Wmi_Class.new("SynchronousReceiveBehavior" ,"ROOT\ServiceModel")
      @classes[:WorkflowServiceBehavior] = Nanotek::Wmi_Class.new("WorkflowServiceBehavior" ,"ROOT\ServiceModel")
      @classes[:WebHttpBehavior] = Nanotek::Wmi_Class.new("WebHttpBehavior" ,"ROOT\ServiceModel")
      @classes[:WebScriptEnablingBehavior] = Nanotek::Wmi_Class.new("WebScriptEnablingBehavior" ,"ROOT\ServiceModel")
      @classes[:WebGetAttribute] = Nanotek::Wmi_Class.new("WebGetAttribute" ,"ROOT\ServiceModel")
      @classes[:XmlSerializerOperationBehavior] = Nanotek::Wmi_Class.new("XmlSerializerOperationBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceThrottlingBehavior] = Nanotek::Wmi_Class.new("ServiceThrottlingBehavior" ,"ROOT\ServiceModel")
      @classes[:TransactionFlowAttribute] = Nanotek::Wmi_Class.new("TransactionFlowAttribute" ,"ROOT\ServiceModel")
      @classes[:OperationBehaviorAttribute] = Nanotek::Wmi_Class.new("OperationBehaviorAttribute" ,"ROOT\ServiceModel")
      @classes[:DataContractSerializerOperationBehavior] = Nanotek::Wmi_Class.new("DataContractSerializerOperationBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceMetadataBehavior] = Nanotek::Wmi_Class.new("ServiceMetadataBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceCredentials] = Nanotek::Wmi_Class.new("ServiceCredentials" ,"ROOT\ServiceModel")
      @classes[:ServiceBehaviorAttribute] = Nanotek::Wmi_Class.new("ServiceBehaviorAttribute" ,"ROOT\ServiceModel")
      @classes[:ClientCredentials] = Nanotek::Wmi_Class.new("ClientCredentials" ,"ROOT\ServiceModel")
      @classes[:DurableOperationAttribute] = Nanotek::Wmi_Class.new("DurableOperationAttribute" ,"ROOT\ServiceModel")
      @classes[:ClientViaBehavior] = Nanotek::Wmi_Class.new("ClientViaBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceDebugBehavior] = Nanotek::Wmi_Class.new("ServiceDebugBehavior" ,"ROOT\ServiceModel")
      @classes[:MustUnderstandBehavior] = Nanotek::Wmi_Class.new("MustUnderstandBehavior" ,"ROOT\ServiceModel")
      @classes[:WorkflowRuntimeBehavior] = Nanotek::Wmi_Class.new("WorkflowRuntimeBehavior" ,"ROOT\ServiceModel")
      @classes[:ServiceAuthorizationBehavior] = Nanotek::Wmi_Class.new("ServiceAuthorizationBehavior" ,"ROOT\ServiceModel")
      @classes[:DurableServiceAttribute] = Nanotek::Wmi_Class.new("DurableServiceAttribute" ,"ROOT\ServiceModel")
      @classes[:TransactedBatchingBehavior] = Nanotek::Wmi_Class.new("TransactedBatchingBehavior" ,"ROOT\ServiceModel")
      @classes[:CallbackBehavior] = Nanotek::Wmi_Class.new("CallbackBehavior" ,"ROOT\ServiceModel")
      @classes[:DeliveryRequirementsAttribute] = Nanotek::Wmi_Class.new("DeliveryRequirementsAttribute" ,"ROOT\ServiceModel")
      @classes[:AspNetCompatibilityRequirementsAttribute] = Nanotek::Wmi_Class.new("AspNetCompatibilityRequirementsAttribute" ,"ROOT\ServiceModel")
      @classes[:BindingElement] = Nanotek::Wmi_Class.new("BindingElement" ,"ROOT\ServiceModel")
      @classes[:ContextBindingElement] = Nanotek::Wmi_Class.new("ContextBindingElement" ,"ROOT\ServiceModel")
      @classes[:TransportBindingElement] = Nanotek::Wmi_Class.new("TransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:HttpTransportBindingElement] = Nanotek::Wmi_Class.new("HttpTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:HttpsTransportBindingElement] = Nanotek::Wmi_Class.new("HttpsTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:PeerTransportBindingElement] = Nanotek::Wmi_Class.new("PeerTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:ConnectionOrientedTransportBindingElement] = Nanotek::Wmi_Class.new("ConnectionOrientedTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:TcpTransportBindingElement] = Nanotek::Wmi_Class.new("TcpTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:NamedPipeTransportBindingElement] = Nanotek::Wmi_Class.new("NamedPipeTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:MsmqBindingElementBase] = Nanotek::Wmi_Class.new("MsmqBindingElementBase" ,"ROOT\ServiceModel")
      @classes[:MsmqIntegrationBindingElement] = Nanotek::Wmi_Class.new("MsmqIntegrationBindingElement" ,"ROOT\ServiceModel")
      @classes[:MsmqTransportBindingElement] = Nanotek::Wmi_Class.new("MsmqTransportBindingElement" ,"ROOT\ServiceModel")
      @classes[:CompositeDuplexBindingElement] = Nanotek::Wmi_Class.new("CompositeDuplexBindingElement" ,"ROOT\ServiceModel")
      @classes[:PrivacyNoticeBindingElement] = Nanotek::Wmi_Class.new("PrivacyNoticeBindingElement" ,"ROOT\ServiceModel")
      @classes[:SecurityBindingElement] = Nanotek::Wmi_Class.new("SecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:SymmetricSecurityBindingElement] = Nanotek::Wmi_Class.new("SymmetricSecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:AsymmetricSecurityBindingElement] = Nanotek::Wmi_Class.new("AsymmetricSecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:TransportSecurityBindingElement] = Nanotek::Wmi_Class.new("TransportSecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:ReliableSessionBindingElement] = Nanotek::Wmi_Class.new("ReliableSessionBindingElement" ,"ROOT\ServiceModel")
      @classes[:UseManagedPresentationBindingElement] = Nanotek::Wmi_Class.new("UseManagedPresentationBindingElement" ,"ROOT\ServiceModel")
      @classes[:WindowsStreamSecurityBindingElement] = Nanotek::Wmi_Class.new("WindowsStreamSecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:TransactionFlowBindingElement] = Nanotek::Wmi_Class.new("TransactionFlowBindingElement" ,"ROOT\ServiceModel")
      @classes[:OneWayBindingElement] = Nanotek::Wmi_Class.new("OneWayBindingElement" ,"ROOT\ServiceModel")
      @classes[:CustomBindingElement] = Nanotek::Wmi_Class.new("CustomBindingElement" ,"ROOT\ServiceModel")
      @classes[:MessageEncodingBindingElement] = Nanotek::Wmi_Class.new("MessageEncodingBindingElement" ,"ROOT\ServiceModel")
      @classes[:BinaryMessageEncodingBindingElement] = Nanotek::Wmi_Class.new("BinaryMessageEncodingBindingElement" ,"ROOT\ServiceModel")
      @classes[:TextMessageEncodingBindingElement] = Nanotek::Wmi_Class.new("TextMessageEncodingBindingElement" ,"ROOT\ServiceModel")
      @classes[:MtomMessageEncodingBindingElement] = Nanotek::Wmi_Class.new("MtomMessageEncodingBindingElement" ,"ROOT\ServiceModel")
      @classes[:WebMessageEncodingBindingElement] = Nanotek::Wmi_Class.new("WebMessageEncodingBindingElement" ,"ROOT\ServiceModel")
      @classes[:SslStreamSecurityBindingElement] = Nanotek::Wmi_Class.new("SslStreamSecurityBindingElement" ,"ROOT\ServiceModel")
      @classes[:PeerResolverBindingElement] = Nanotek::Wmi_Class.new("PeerResolverBindingElement" ,"ROOT\ServiceModel")
      @classes[:PeerCustomResolverBindingElement] = Nanotek::Wmi_Class.new("PeerCustomResolverBindingElement" ,"ROOT\ServiceModel")
      @classes[:PnrpPeerResolverBindingElement] = Nanotek::Wmi_Class.new("PnrpPeerResolverBindingElement" ,"ROOT\ServiceModel")
      @classes[:TraceListenerArgument] = Nanotek::Wmi_Class.new("TraceListenerArgument" ,"ROOT\ServiceModel")
      @classes[:Endpoint] = Nanotek::Wmi_Class.new("Endpoint" ,"ROOT\ServiceModel")
      @classes[:ServiceToEndpointAssociation] = Nanotek::Wmi_Class.new("ServiceToEndpointAssociation" ,"ROOT\ServiceModel")
      @classes[:LocalServiceSecuritySettings] = Nanotek::Wmi_Class.new("LocalServiceSecuritySettings" ,"ROOT\ServiceModel")
      @classes[:NamedPipeConnectionPoolSettings] = Nanotek::Wmi_Class.new("NamedPipeConnectionPoolSettings" ,"ROOT\ServiceModel")
      @classes[:Binding] = Nanotek::Wmi_Class.new("Binding" ,"ROOT\ServiceModel")
      @classes[:ServiceAppDomain] = Nanotek::Wmi_Class.new("ServiceAppDomain" ,"ROOT\ServiceModel")
    end
  end
end