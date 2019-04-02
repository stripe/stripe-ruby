# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class OrderTest < Test::Unit::TestCase
    should "be listable" do
      orders = Stripe::Order.list
      assert_requested :get, "#{Stripe.api_base}/v1/orders"
      assert orders.data.is_a?(Array)
      assert orders.first.is_a?(Stripe::Order)
    end

    should "be retrievable" do
      order = Stripe::Order.retrieve("or_123")
      assert_requested :get, "#{Stripe.api_base}/v1/orders/or_123"
      assert order.is_a?(Stripe::Order)
    end

    should "be creatable" do
      order = Stripe::Order.create(
        currency: "USD"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/orders"
      assert order.is_a?(Stripe::Order)
    end

    should "be saveable" do
      order = Stripe::Order.retrieve("or_123")
      order.metadata["key"] = "value"
      order.save
      assert_requested :post, "#{Stripe.api_base}/v1/orders/#{order.id}"
    end

    should "be updateable" do
      order = Stripe::Order.update("or_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/orders/or_123"
      assert order.is_a?(Stripe::Order)
    end

    context "#pay" do
      should "pay an order" do
        order = Stripe::Order.retrieve("or_123")
        order = order.pay(source: "tok_123")
        assert_requested :post, "#{Stripe.api_base}/v1/orders/#{order.id}/pay"
        assert order.is_a?(Stripe::Order)
      end
    end

    context ".pay" do
      should "pay an order" do
        order = Stripe::Order.pay("or_123", source: "tok_123")
        assert_requested :post, "#{Stripe.api_base}/v1/orders/or_123/pay"
        assert order.is_a?(Stripe::Order)
      end
    end

    context "#return_order" do
      should "return an order" do
        order = Stripe::Order.retrieve("or_123")
        order_return = order.return_order({})
        assert_requested :post, "#{Stripe.api_base}/v1/orders/#{order.id}/returns"
        assert order_return.is_a?(Stripe::OrderReturn)
      end
    end

    context ".return_order" do
      should "return an order" do
        order_return = Stripe::Order.return_order("or_123")
        assert_requested :post, "#{Stripe.api_base}/v1/orders/or_123/returns"
        assert order_return.is_a?(Stripe::OrderReturn)
      end
    end
  end
end
