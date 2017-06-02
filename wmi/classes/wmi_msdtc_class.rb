require_relative 'wmi_class_base'


module Nanotek

      class WmiMsdtcClass < WmiClassBase
        
        def initialize
          super 
        end
        
        def load_wmi_classes
          @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\msdtc")
          @classes[:CIM_ClassIndication] = Nanotek::Wmi_Class.new("CIM_ClassIndication" ,"ROOT\msdtc")
          @classes[:CIM_ClassDeletion] = Nanotek::Wmi_Class.new("CIM_ClassDeletion" ,"ROOT\msdtc")
          @classes[:CIM_ClassCreation] = Nanotek::Wmi_Class.new("CIM_ClassCreation" ,"ROOT\msdtc")
          @classes[:CIM_ClassModification] = Nanotek::Wmi_Class.new("CIM_ClassModification" ,"ROOT\msdtc")
          @classes[:CIM_InstIndication] = Nanotek::Wmi_Class.new("CIM_InstIndication" ,"ROOT\msdtc")
          @classes[:CIM_InstCreation] = Nanotek::Wmi_Class.new("CIM_InstCreation" ,"ROOT\msdtc")
          @classes[:CIM_InstModification] = Nanotek::Wmi_Class.new("CIM_InstModification" ,"ROOT\msdtc")
          @classes[:CIM_InstDeletion] = Nanotek::Wmi_Class.new("CIM_InstDeletion" ,"ROOT\msdtc")
          @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\msdtc")
          @classes[:__ExtendedStatus] = Nanotek::Wmi_Class.new("__ExtendedStatus" ,"ROOT\msdtc")
          @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\msdtc")
          @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\msdtc")
          @classes[:MSFT_ExtendedStatus] = Nanotek::Wmi_Class.new("MSFT_ExtendedStatus" ,"ROOT\msdtc")
          @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\msdtc")
          @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\msdtc")
          @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\msdtc")
          @classes[:__SecurityDescriptor] = Nanotek::Wmi_Class.new("__SecurityDescriptor" ,"ROOT\msdtc")
          @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\msdtc")
          @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\msdtc")
          @classes[:__EventConsumerProvid] = Nanotek::Wmi_Class.new("__EventConsumerProvid" ,"ROOT\msdtc")
          @classes[:__thisNAMESPACE] = Nanotek::Wmi_Class.new("__thisNAMESPACE" ,"ROOT\msdtc")
          @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\msdtc")
          @classes[:__IndicationRelated] = Nanotek::Wmi_Class.new("__IndicationRelated" ,"ROOT\msdtc")
          @classes[:__EventConsumer] = Nanotek::Wmi_Class.new("__EventConsumer" ,"ROOT\msdtc")
          @classes[:__AggregateEvent] = Nanotek::Wmi_Class.new("__AggregateEvent" ,"ROOT\msdtc")
          @classes[:__TimerNextFiring] = Nanotek::Wmi_Class.new("__TimerNextFiring" ,"ROOT\msdtc")
          @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\msdtc")
          @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\msdtc")
          @classes[:__ClassOperationEvent] = Nanotek::Wmi_Class.new("__ClassOperationEvent" ,"ROOT\msdtc")
          @classes[:__ClassDeletionEvent] = Nanotek::Wmi_Class.new("__ClassDeletionEvent" ,"ROOT\msdtc")
          @classes[:__ClassCreationEvent] = Nanotek::Wmi_Class.new("__ClassCreationEvent" ,"ROOT\msdtc")
          @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\msdtc")
          @classes[:__ExtrinsicEvent] = Nanotek::Wmi_Class.new("__ExtrinsicEvent" ,"ROOT\msdtc")
          @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\msdtc")
          @classes[:__EventDroppedEvent] = Nanotek::Wmi_Class.new("__EventDroppedEvent" ,"ROOT\msdtc")
          @classes[:__QOSFailureEvent] = Nanotek::Wmi_Class.new("__QOSFailureEvent" ,"ROOT\msdtc")
          @classes[:__EventGenerator] = Nanotek::Wmi_Class.new("__EventGenerator" ,"ROOT\msdtc")
          @classes[:__TimerInstruction] = Nanotek::Wmi_Class.new("__TimerInstruction" ,"ROOT\msdtc")
          @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\msdtc")
          @classes[:__Win32Provider] = Nanotek::Wmi_Class.new("__Win32Provider" ,"ROOT\msdtc")
          @classes[:__SystemSecurity] = Nanotek::Wmi_Class.new("__SystemSecurity" ,"ROOT\msdtc")
          @classes[:MSFT_DtcTask] = Nanotek::Wmi_Class.new("MSFT_DtcTask" ,"ROOT\msdtc")
          @classes[:MSFT_DtcDefaultTask] = Nanotek::Wmi_Class.new("MSFT_DtcDefaultTask" ,"ROOT\msdtc")
          @classes[:DtcLogFileSettings] = Nanotek::Wmi_Class.new("DtcLogFileSettings" ,"ROOT\msdtc")
          @classes[:MSFT_DtcTransactionsT] = Nanotek::Wmi_Class.new("MSFT_DtcTransactionsT" ,"ROOT\msdtc")
          @classes[:DtcInstance] = Nanotek::Wmi_Class.new("DtcInstance" ,"ROOT\msdtc")
          @classes[:DtcTransactionInfo] = Nanotek::Wmi_Class.new("DtcTransactionInfo" ,"ROOT\msdtc")
          @classes[:MSFT_DtcTransactionsT] = Nanotek::Wmi_Class.new("MSFT_DtcTransactionsT" ,"ROOT\msdtc")
          @classes[:DtcClusterTMMapping] = Nanotek::Wmi_Class.new("DtcClusterTMMapping" ,"ROOT\msdtc")
          @classes[:DtcNetworkSettings] = Nanotek::Wmi_Class.new("DtcNetworkSettings" ,"ROOT\msdtc")
          @classes[:MSFT_DtcLogTask] = Nanotek::Wmi_Class.new("MSFT_DtcLogTask" ,"ROOT\msdtc")
      
        end
      end

end