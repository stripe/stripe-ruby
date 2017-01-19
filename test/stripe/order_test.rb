require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class OrderTest < Test::Unit::TestCase
    should "orders should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/orders").
        to_return(body: make_response(make_order_array))
      orders = Stripe::Order.list
      assert orders.data.kind_of?(Array)
      orders.each do |order|
        assert order.kind_of?(Stripe::Order)
      end
    end

    should "orders should not be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/orders/or_test_order").
        to_return(body: make_response(make_order))
      p = Stripe::Order.retrieve("or_test_order")

      assert_raises NoMethodError do
        p.delete
      end
    end

    should "orders should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/orders/or_test_order").
        to_return(body: make_response(make_order))
      p = Stripe::Order.retrieve("or_test_order")

      stub_request(:post, "#{Stripe.api_base}/v1/orders/#{p.id}").
        with(body: { status: "fulfilled" }).
        to_return(body: make_response(make_order))
      p.status = "fulfilled"
      p.save
    end

    should "orders should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/orders/or_test_order").
        with(body: { status: "fulfilled" }).
        to_return(body: make_response(make_order))
      _ = Stripe::Order.update("or_test_order", status: 'fulfilled')
    end

    should "pay should pay an order" do
      stub_request(:get, "#{Stripe.api_base}/v1/orders/or_test_order").
        to_return(body: make_response(make_order))
      order = Stripe::Order.retrieve('or_test_order')

      stub_request(:post, "#{Stripe.api_base}/v1/orders/#{order.id}/pay").
        with(body: { token: "test_token" }).
        to_return(body: make_response(make_order))
      order.pay(:token => 'test_token')
    end

    should "return an order" do
      stub_request(:get, "#{Stripe.api_base}/v1/orders/or_test_order").
        to_return(body: make_response(make_order))
      order = Stripe::Order.retrieve('or_test_order')

      stub_request(:post, "#{Stripe.api_base}/v1/orders/#{order.id}/returns").
        with(body: { items: [{ parent: "sku_foo" }] }).
        to_return(body: make_response(make_order))
      _ = order.return_order(:items => [{:parent => 'sku_foo'}])
    end
  end
end
