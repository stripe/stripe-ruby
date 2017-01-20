require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerTest < Test::Unit::TestCase
    should "customers should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers").
        to_return(body: make_response(make_customer_array))
      c = Stripe::Customer.list.data
      assert c.kind_of? Array
      assert c[0].kind_of? Stripe::Customer
    end

    should "customers should be deletable" do
      stub_request(:delete, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      c = Stripe::Customer.new("test_customer")
      c.delete
    end

    should "customers should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      c = Stripe::Customer.retrieve("test_customer")

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{c.id}").
        with(body: { mnemonic: "bar" }).
        to_return(body: make_response(make_customer))
      c.mnemonic = "bar"
      c.save
    end

    should "customers should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/customers/test_customer").
        with(body: { mnemonic: "bar" }).
        to_return(body: make_response(make_customer))
      _ = Stripe::Customer.update("test_customer", mnemonic: "bar")
    end

    should "create should return a new customer" do
      stub_request(:post, "#{Stripe.api_base}/v1/customers").
        to_return(body: make_response(make_customer))
      _ = Stripe::Customer.create
    end

    should "create_upcoming_invoice should create a new invoice" do
      stub_request(:post, "#{Stripe.api_base}/v1/invoices").
        with(body: { customer: "test_customer" }).
        to_return(body: make_response(make_customer))
      _ = Stripe::Customer.new("test_customer").create_upcoming_invoice
    end

    should "be able to update a customer's subscription" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      c = Stripe::Customer.retrieve("test_customer")

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{c.id}/subscription").
        with(body: { plan: "silver" }).
        to_return(body: make_response(make_subscription))
      _ = c.update_subscription({:plan => 'silver'})
    end

    should "be able to cancel a customer's subscription" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      c = Stripe::Customer.retrieve("test_customer")

      # Not an accurate response, but whatever

      stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{c.id}/subscription").
        with(query: { at_period_end: "true" }).
        to_return(body: make_response(make_subscription))
      c.cancel_subscription({:at_period_end => 'true'})

      stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{c.id}/subscription").
        to_return(body: make_response(make_subscription))
      c.cancel_subscription
    end

    should "be able to create a subscription for a customer" do
      c = Stripe::Customer.new("test_customer")

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{c.id}/subscriptions").
        with(body: { plan: "silver" }).
        to_return(body: make_response(make_subscription))
      _ = c.create_subscription({:plan => 'silver'})
    end

    should "be able to delete a customer's discount" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      c = Stripe::Customer.retrieve("test_customer")

      stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{c.id}/discount").
        to_return(body: make_response(make_delete_discount_response))
      c.delete_discount
    end

    should "can have a token source set" do
      c = Stripe::Customer.new("test_customer")
      c.source = "tok_123"
      assert_equal "tok_123", c.source
    end

    should "set a flag if given an object source" do
      c = Stripe::Customer.new("test_customer")
      c.source = {
        :object => 'card'
      }
      assert_equal true, c.source.save_with_parent
    end
  end
end

