require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderReturnTest < Test::Unit::TestCase
    should "returns should be listable" do
      @mock.expects(:get).once.returns(make_response(make_order_return_array))
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
