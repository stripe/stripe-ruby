# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class OrderReturnTest < Test::Unit::TestCase
    should "be listable" do
      order_returns = EwStripe::OrderReturn.list
      assert_requested :get, "#{EwStripe.api_base}/v1/order_returns"
      assert order_returns.data.is_a?(Array)
      assert order_returns.data[0].is_a?(EwStripe::OrderReturn)
    end

    should "be retrievable" do
      order_return = EwStripe::OrderReturn.retrieve("orret_123")
      assert_requested :get,
                       "#{EwStripe.api_base}/v1/order_returns/orret_123"
      assert order_return.is_a?(EwStripe::OrderReturn)
    end
  end
end
