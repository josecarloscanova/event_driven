require_relative 'wmi_class_base'

module Nanotek
  
    class WmiSubscriptionClasses < Nanotek::WmiClassBase 
      
      attr_reader(:classes)
    
      def initialize
        @classes = {}
        load_wmi_classes
      end
        
      def load_wmi_classes
        
        @classes[:CIM_Indication] = Nanotek::Wmi_Class.new("CIM_Indication" ,"ROOT\\subscription")
        @classes[:__NotifyStatus] = Nanotek::Wmi_Class.new("__NotifyStatus" ,"ROOT\\subscription")
        @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\\subscription")
        @classes[:MSFT_WmiError] = Nanotek::Wmi_Class.new("MSFT_WmiError" ,"ROOT\\subscription")
        @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\\subscription")
        @classes[:__NTLMUser9X] = Nanotek::Wmi_Class.new("__NTLMUser9X" ,"ROOT\\subscription")
        @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\\subscription")
        @classes[:__PARAMETERS] = Nanotek::Wmi_Class.new("__PARAMETERS" ,"ROOT\\subscription")
        @classes[:__SystemClass] = Nanotek::Wmi_Class.new("__SystemClass" ,"ROOT\\subscription")
        @classes[:__ObjectProvid] = Nanotek::Wmi_Class.new("__ObjectProvid" ,"ROOT\\subscription")
        @classes[:__InstanceProv] = Nanotek::Wmi_Class.new("__InstanceProv" ,"ROOT\\subscription")
        @classes[:__MethodProvid] = Nanotek::Wmi_Class.new("__MethodProvid" ,"ROOT\\subscription")
        @classes[:__PropertyProv] = Nanotek::Wmi_Class.new("__PropertyProv" ,"ROOT\\subscription")
        @classes[:__EventConsume] = Nanotek::Wmi_Class.new("__EventConsume" ,"ROOT\\subscription")
        @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\\subscription")
        @classes[:__EventFilter] = Nanotek::Wmi_Class.new("__EventFilter" ,"ROOT\\subscription")
        @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\\subscription")
        @classes[:__NamespaceMod] = Nanotek::Wmi_Class.new("__NamespaceMod" ,"ROOT\\subscription")
        @classes[:__TimerEvent] = Nanotek::Wmi_Class.new("__TimerEvent" ,"ROOT\\subscription")
        @classes[:__SystemEvent] = Nanotek::Wmi_Class.new("__SystemEvent" ,"ROOT\\subscription")
        @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\\subscription")
    
      end
      
    end

end