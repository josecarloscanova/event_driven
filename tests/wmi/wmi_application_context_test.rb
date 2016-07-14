require 'minitest/autorun'
require_relative '../../context/wmi_application_context'

module Nanotek

      class WmiApplicationContextTest < Minitest::Test

        def test_wmi_application_context
            WmiApplicationContext.configure_application_context
        end

      end
end
