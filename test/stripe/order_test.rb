require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderTest < Test::Unit::TestCase
    should "be listable" do
      orders = Stripe::Order.list
      assert_requested :get, "#{Stripe.api_base}/v1/orders"
      assert orders.data.kind_of?(Array)
      assert orders.first.kind_of?(Stripe::Order)
    end

    should "be retrievable" do
      order = Stripe::Order.retrieve("or_123")
      assert_requested :get, "#{Stripe.api_base}/v1/orders/or_123"
      assert order.kind_of?(Stripe::Order)
    end

    should "be creatable" do
      order = Stripe::Order.create(
        currency: "USD"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/orders"
      assert order.kind_of?(Stripe::Order)
    end

    should "be saveable" do
      order = Stripe::Order.retrieve("or_123")
      order.metadata['key'] = 'value'
      order.save
      assert_requested :post, "#{Stripe.api_base}/v1/orders/#{order.id}"
    end

    should "be updateable" do
      order = Stripe::Order.update("or_123", metadata: { key: 'value' })
      assert_requested :post, "#{Stripe.api_base}/v1/orders/or_123"
      assert order.kind_of?(Stripe::Order)
    end

    context "#pay" do
      should "pay an order" do
        order = Stripe::Order.retrieve("or_123")
        order = order.pay(token: "tok_123")
        assert order.kind_of?(Stripe::Order)
      end
    end

    context "#return_order" do
      should "return an order" do
        order = Stripe::Order.retrieve("or_123")
        order = order.return_order(:orders => [
          { parent: "sku_123" }
        ])
        assert order.kind_of?(Stripe::OrderReturn)
      end
    end
  end
end
