require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderReturnTest < Test::Unit::TestCase
    should "return_order should be listable" do
      @mock.expects(:get).once.returns(make_response(make_order_return_array))
      returns = Stripe::OrderReturn.list
      assert returns.data.kind_of?(Array)
      returns.each do |ret|
        assert ret.kind_of?(Stripe::OrderReturn)
      end
    end

    should "returns should not be updateable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(make_response(make_order_return))
        p = Stripe::OrderReturn.new("test_order")
        p.refresh
        p.items = []
        p.save
      end
    end
  end
end
