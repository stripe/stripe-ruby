require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:order)

    should "be listable" do
      orders = Stripe::Order.list
      assert_requested :get, "#{Stripe.api_base}/v1/orders"
      assert orders.data.kind_of?(Array)
      assert orders.first.kind_of?(Stripe::Order)
    end

    should "be retrievable" do
      order = Stripe::Order.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/orders/#{FIXTURE[:id]}"
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
      order = Stripe::Order.retrieve(FIXTURE[:id])
      order.metadata['key'] = 'value'
      order.save
      assert_requested :post, "#{Stripe.api_base}/v1/orders/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      order = Stripe::Order.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post, "#{Stripe.api_base}/v1/orders/#{FIXTURE[:id]}"
      assert order.kind_of?(Stripe::Order)
    end

    context "#pay" do
      should "pay an order" do
        order = Stripe::Order.retrieve(FIXTURE[:id])
        order = order.pay(token: API_FIXTURES.fetch(:token)[:id])
        assert order.kind_of?(Stripe::Order)
      end
    end

    context "#return_order" do
      should "return an order" do
        order = Stripe::Order.retrieve(FIXTURE[:id])
        order = order.return_order(:orders => [
          { parent: API_FIXTURES.fetch(:sku)[:id] }
        ])
        assert order.kind_of?(Stripe::OrderReturn)
      end
    end
  end
end
