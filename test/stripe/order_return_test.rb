require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderReturnTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:order_return)

    should "be listable" do
      order_returns = Stripe::OrderReturn.list
      assert_requested :get, "#{Stripe.api_base}/v1/order_returns"
      assert order_returns.data.kind_of?(Array)
      assert order_returns.data[0].kind_of?(Stripe::OrderReturn)
    end

    should "be retrievable" do
      order_return = Stripe::OrderReturn.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/order_returns/#{FIXTURE[:id]}"
      assert order_return.kind_of?(Stripe::OrderReturn)
    end
  end
end
