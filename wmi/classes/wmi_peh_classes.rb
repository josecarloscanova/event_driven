require_relative 'wmi_class_base'


module Nanotek


    class WmiPehClass < Nanotek::WmiClassBase
      
      def initialize
        @classes = {}
         load_wmi_classes
      end
      
      def load_wmi_classes
        @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\\PEH")
        @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\\PEH")
        @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\\PEH")
        @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\\PEH")
        @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT\\PEH")
        @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\\PEH")
        @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\\PEH")
        @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT\\PEH")
        @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\\PEH")
        @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\\PEH")
        @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\\PEH")
        @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\\PEH")
        @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\\PEH")
        @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\\PEH")
        @classes[:__SecurityRelatedClass] = Nanotek::Wmi_Class.new("__SecurityRelatedClass" ,"ROOT\\PEH")
        @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\\PEH")
        @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\\PEH")
        @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\\PEH")
        @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT\\PEH")
        @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\\PEH")
        @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\\PEH")
        @classes[:__ProviderRegistration] = Nanotek::Wmi_Class.new("__ProviderRegistration" ,"ROOT\\PEH")
        @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\\PEH")
        @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\\PEH")
        @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\\PEH")
        @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\\PEH")
        @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\\PEH")
        @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\\PEH")
        @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\\PEH")
        @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\\PEH")
        @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT\\PEH")
        @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT\\PEH")
        @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT\\PEH")
        @classes[:__InstanceCreationEvent] = Nanotek::Wmi_Class.new("__InstanceCreationEvent" ,"ROOT\\PEH")
        @classes[:__MethodInvocationEvent] = Nanotek::Wmi_Class.new("__MethodInvocationEvent" ,"ROOT\\PEH")
        @classes[:__InstanceDeletionEvent] = Nanotek::Wmi_Class.new("__InstanceDeletionEvent" ,"ROOT\\PEH")
        @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\\PEH")
        @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\\PEH")
        @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\\PEH")
        @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\\PEH")
        @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\\PEH")
        @classes[:__ConsumerFailureEvent] = Nanotek::Wmi_Class.new("__ConsumerFailureEvent" ,"ROOT\\PEH")
        @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\\PEH")
        @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\\PEH")
        @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\\PEH")
        @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\\PEH")
        @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\\PEH")
        @classes[:MSFT_PipelineDefinition] = Nanotek::Wmi_Class.new("MSFT_PipelineDefinition" ,"ROOT\\PEH")
        @classes[:MSFT_Pipeline] = Nanotek::Wmi_Class.new("MSFT_Pipeline" ,"ROOT\\PEH")
        @classes[:MSFT_MintPipeline] = Nanotek::Wmi_Class.new("MSFT_MintPipeline" ,"ROOT\\PEH")
        @classes[:MSFT_Engine] = Nanotek::Wmi_Class.new("MSFT_Engine" ,"ROOT\\PEH")
        @classes[:MSFT_MintEngine] = Nanotek::Wmi_Class.new("MSFT_MintEngine" ,"ROOT\\PEH")
        @classes[:MSFT_Runspace] = Nanotek::Wmi_Class.new("MSFT_Runspace" ,"ROOT\\PEH")
        @classes[:MSFT_MintRunspace] = Nanotek::Wmi_Class.new("MSFT_MintRunspace" ,"ROOT\\PEH")
        @classes[:MSFT_PipelineExecution] = Nanotek::Wmi_Class.new("MSFT_PipelineExecution" ,"ROOT\\PEH")
        @classes[:MSFT_Expression] = Nanotek::Wmi_Class.new("MSFT_Expression" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionIf] = Nanotek::Wmi_Class.new("MSFT_ExpressionIf" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionLet] = Nanotek::Wmi_Class.new("MSFT_ExpressionLet" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionCall] = Nanotek::Wmi_Class.new("MSFT_ExpressionCall" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionBegin] = Nanotek::Wmi_Class.new("MSFT_ExpressionBegin" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionValue] = Nanotek::Wmi_Class.new("MSFT_ExpressionValue" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionLoop] = Nanotek::Wmi_Class.new("MSFT_ExpressionLoop" ,"ROOT\\PEH")
        @classes[:MSFT_ExpressionLambda] = Nanotek::Wmi_Class.new("MSFT_ExpressionLambda" ,"ROOT\\PEH")
    
      end
  end
end