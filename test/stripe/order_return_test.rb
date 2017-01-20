require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderReturnTest < Test::Unit::TestCase
    should "returns should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/order_returns").
        to_return(body: JSON.generate(make_order_return_array))
      returns = Stripe::OrderReturn.list
      assert returns.data.kind_of?(Array)
      returns.each do |ret|
        assert ret.kind_of?(Stripe::OrderReturn)
      end
    end

    should "returns should not be deletable" do
      p = Stripe::OrderReturn.new("test_order")
      assert_raises(NoMethodError) { p.delete }
    end

    should "returns should be immutable" do
      p = Stripe::OrderReturn.new("test_order")
      p.items = []
      assert_raises(NoMethodError) { p.save }
    end
  end
end
