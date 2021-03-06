require 'minitest/autorun'
require_relative '../adapter/adapter'
require_relative '../adapter/event_adapter'
require_relative '../event/composed_message_event'

class AdapterTest < Minitest::Test

      def setup
      end

      def test_generate_message
        @adapter = EventAdapter.new
        @adapter.add_adapter 'event' , ComposedMessageEvent
        @adapter.add_adapter 'composed_message_event' , ComposedMessageEvent
        @adapter.send_message 'message_event'
        @adapter.send_message({:e => 'message_event_1'})
      end

       def test_generate_message_1
           @adapter = Adapter.new
           @adapter.add_adapter nil
           @adapter.send_message 'message_event'
       end

end

