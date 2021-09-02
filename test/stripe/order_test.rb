# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class OrderTest < Test::Unit::TestCase
    should "be listable" do
      orders = EwStripe::Order.list
      assert_requested :get, "#{EwStripe.api_base}/v1/orders"
      assert orders.data.is_a?(Array)
      assert orders.first.is_a?(EwStripe::Order)
    end

    should "be retrievable" do
      order = EwStripe::Order.retrieve("or_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/orders/or_123"
      assert order.is_a?(EwStripe::Order)
    end

    should "be creatable" do
      order = EwStripe::Order.create(
        currency: "USD"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/orders"
      assert order.is_a?(EwStripe::Order)
    end

    should "be saveable" do
      order = EwStripe::Order.retrieve("or_123")
      order.metadata["key"] = "value"
      order.save
      assert_requested :post, "#{EwStripe.api_base}/v1/orders/#{order.id}"
    end

    should "be updateable" do
      order = EwStripe::Order.update("or_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/orders/or_123"
      assert order.is_a?(EwStripe::Order)
    end

    context "#pay" do
      should "pay an order" do
        order = EwStripe::Order.retrieve("or_123")
        order = order.pay(source: "tok_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/orders/#{order.id}/pay"
        assert order.is_a?(EwStripe::Order)
      end

      should "pay an order without additional arguments" do
        order = EwStripe::Order.retrieve("or_123")
        order = order.pay
        assert_requested :post, "#{EwStripe.api_base}/v1/orders/#{order.id}/pay"
        assert order.is_a?(EwStripe::Order)
      end
    end

    context ".pay" do
      should "pay an order" do
        order = EwStripe::Order.pay("or_123", source: "tok_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/orders/or_123/pay"
        assert order.is_a?(EwStripe::Order)
      end
    end

    context "#return_order" do
      should "return an order" do
        order = EwStripe::Order.retrieve("or_123")
        order_return = order.return_order({})
        assert_requested :post, "#{EwStripe.api_base}/v1/orders/#{order.id}/returns"
        assert order_return.is_a?(EwStripe::OrderReturn)
      end
    end

    context ".return_order" do
      should "return an order" do
        order_return = EwStripe::Order.return_order("or_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/orders/or_123/returns"
        assert order_return.is_a?(EwStripe::OrderReturn)
      end
    end
  end
end
