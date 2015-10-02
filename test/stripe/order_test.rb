require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderTest < Test::Unit::TestCase
    should "orders should be listable" do
      @mock.expects(:get).once.returns(make_response(make_order_array))
      orders = Stripe::Order.list
      assert orders.data.kind_of?(Array)
      orders.each do |order|
        assert order.kind_of?(Stripe::Order)
      end
    end

    should "orders should not be deletable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(make_response(make_order))
        p = Stripe::Order.retrieve("test_order")
        p.delete
      end
    end

    should "orders should be updateable" do
      @mock.expects(:get).once.returns(make_response(make_order))
      @mock.expects(:post).once.returns(make_response(make_order))
      p = Stripe::Order.new("test_order")
      p.refresh
      p.status = "fulfilled"
      p.save
    end

    should "orders should allow metadata updates" do
      @mock.expects(:get).once.returns(make_response(make_order))
      @mock.expects(:post).once.returns(make_response(make_order))
      p = Stripe::Order.new("test_order")
      p.refresh
      p.metadata['key'] = 'value'
      p.save
    end

    should "pay should pay an order" do
      @mock.expects(:get).once.
        returns(make_response(make_order(:id => 'or_test_order')))
      order = Stripe::Order.retrieve('or_test_order')

      @mock.expects(:post).once.
        with('https://api.stripe.com/v1/orders/or_test_order/pay', nil, 'token=test_token').
        returns(make_response(make_paid_order))
      order.pay(:token => 'test_token')
      assert_equal "paid", order.status
    end
  end
end
