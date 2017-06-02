require_relative '../wmi/wmi_context'
require_relative '../wmi/wmi_service'
require_relative '../wmi/wmi_provider_path'
require_relative '../wmi/wmi_service_configurator'
require_relative '../context/wmi_application_context'
require_relative '../context/web_application_context'

module Nanotek

    class EventMainApp

      def initialize
          build_application_context
      end

      def  build_application_context
            load_wmi_context
      end

      def load_wmi_context
        Nanotek::WmiApplicationContext.new{Nanotek::WmiApplicationContext.configure_application_context}.join
      end
#      def  build_application_context
#           load_context
#      end
#
#      def load_context
#          WebApplicationContext.configure_application_context
#      end

    end

end

Nanotek::EventMainApp.new
