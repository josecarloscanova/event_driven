require_relative 'wmi_class_base'

module Nanotek

  class WmiSecurityCenter < Nanotek::WmiClassBase
    
    def initialize
        load_wmi_classes
    end
    
    def load_wmi_classes
      @classes[:CIM_Error] = Nanotek::Wmi_Class.new("CIM_Error" ,"ROOT\SecurityCenter2")
      @classes[:__Trustee] = Nanotek::Wmi_Class.new("__Trustee" ,"ROOT\SecurityCenter2")
      @classes[:__ACE] = Nanotek::Wmi_Class.new("__ACE" ,"ROOT\SecurityCenter2")
      @classes[:__EventProv] = Nanotek::Wmi_Class.new("__EventProv" ,"ROOT\SecurityCenter2")
      @classes[:__ObjectPro] = Nanotek::Wmi_Class.new("__ObjectPro" ,"ROOT\SecurityCenter2")
      @classes[:__ClassProv] = Nanotek::Wmi_Class.new("__ClassProv" ,"ROOT\SecurityCenter2")
      @classes[:__InstanceP] = Nanotek::Wmi_Class.new("__InstanceP" ,"ROOT\SecurityCenter2")
      @classes[:__MethodPro] = Nanotek::Wmi_Class.new("__MethodPro" ,"ROOT\SecurityCenter2")
      @classes[:__PropertyP] = Nanotek::Wmi_Class.new("__PropertyP" ,"ROOT\SecurityCenter2")
      @classes[:__EventCons] = Nanotek::Wmi_Class.new("__EventCons" ,"ROOT\SecurityCenter2")
      @classes[:__NAMESPACE] = Nanotek::Wmi_Class.new("__NAMESPACE" ,"ROOT\SecurityCenter2")
      @classes[:__FilterToC] = Nanotek::Wmi_Class.new("__FilterToC" ,"ROOT\SecurityCenter2")
      @classes[:__Event] = Nanotek::Wmi_Class.new("__Event" ,"ROOT\SecurityCenter2")
      @classes[:__Namespace] = Nanotek::Wmi_Class.new("__Namespace" ,"ROOT\SecurityCenter2")
      @classes[:__Namespace] = Nanotek::Wmi_Class.new("__Namespace" ,"ROOT\SecurityCenter2")
      @classes[:__InstanceM] = Nanotek::Wmi_Class.new("__InstanceM" ,"ROOT\SecurityCenter2")
      @classes[:__EventQueu] = Nanotek::Wmi_Class.new("__EventQueu" ,"ROOT\SecurityCenter2")
      @classes[:__AbsoluteT] = Nanotek::Wmi_Class.new("__AbsoluteT" ,"ROOT\SecurityCenter2")
      @classes[:__IntervalT] = Nanotek::Wmi_Class.new("__IntervalT" ,"ROOT\SecurityCenter2")
      @classes[:__Provider] = Nanotek::Wmi_Class.new("__Provider" ,"ROOT\SecurityCenter2")
    end
  end
end