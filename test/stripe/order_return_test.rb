# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class OrderReturnTest < Test::Unit::TestCase
    should "be listable" do
      order_returns = StripeClient.new.order_returns.list
      assert_requested :get, "#{Stripe.api_base}/v1/order_returns"
      assert order_returns.data.is_a?(Array)
      assert order_returns.data[0].is_a?(Stripe::OrderReturn)
    end

    should "be retrievable" do
      order_return = StripeClient.new.order_returns.retrieve("orret_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/order_returns/orret_123"
      assert order_return.is_a?(Stripe::OrderReturn)
    end
  end
end
