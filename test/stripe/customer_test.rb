# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CustomerTest < Test::Unit::TestCase
    should "be listable" do
      customers = Stripe::Customer.list
      assert_requested :get, "#{Stripe.api_base}/v1/customers"
      assert customers.data.is_a?(Array)
      assert customers.first.is_a?(Stripe::Customer)
    end

    should "be retrievable" do
      customer = Stripe::Customer.retrieve("cus_123")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123"
      assert customer.is_a?(Stripe::Customer)
    end

    should "be creatable" do
      customer = Stripe::Customer.create
      assert_requested :post, "#{Stripe.api_base}/v1/customers"
      assert customer.is_a?(Stripe::Customer)
    end

    should "be saveable" do
      customer = Stripe::Customer.retrieve("cus_123")
      customer.metadata["key"] = "value"
      customer.save
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{customer.id}"
    end

    should "be updateable" do
      customer = Stripe::Customer.update("cus_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123"
      assert customer.is_a?(Stripe::Customer)
    end

    context "#delete" do
      should "be deletable" do
        customer = Stripe::Customer.retrieve("cus_123")
        customer = customer.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{customer.id}"
        assert customer.is_a?(Stripe::Customer)
      end
    end

    context ".delete" do
      should "be deletable" do
        customer = Stripe::Customer.delete("cus_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_123"
        assert customer.is_a?(Stripe::Customer)
      end
    end

    context "#create_subscription" do
      should "create a new subscription" do
        customer = Stripe::Customer.retrieve("cus_123")
        subscription = customer.create_subscription(items: [{ plan: "silver" }])
        assert_requested :post, "#{Stripe.api_base}/v1/customers/#{customer.id}/subscriptions"
        assert subscription.is_a?(Stripe::Subscription)
      end
    end

    context "#create_upcoming_invoice" do
      should "create a new invoice" do
        customer = Stripe::Customer.retrieve("cus_123")
        invoice = customer.create_upcoming_invoice
        assert_requested :post, "#{Stripe.api_base}/v1/invoices"
        assert invoice.is_a?(Stripe::Invoice)
      end
    end

    context "#update_subscription" do
      should "update a subscription" do
        customer = Stripe::Customer.retrieve("cus_123")

        # deprecated API and not in schema
        stub_request(:post, "#{Stripe.api_base}/v1/customers/#{customer.id}/subscription")
          .with(body: { plan: "silver" })
          .to_return(body: JSON.generate(object: "subscription"))
        subscription = customer.update_subscription(plan: "silver")
        assert subscription.is_a?(Stripe::Subscription)
      end
    end

    context "#cancel_subscription" do
      should "cancel a subscription" do
        customer = Stripe::Customer.retrieve("cus_123")

        # deprecated API and not in schema
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{customer.id}/subscription")
          .with(query: { at_period_end: "true" })
          .to_return(body: JSON.generate(object: "subscription"))
        subscription = customer.cancel_subscription(at_period_end: "true")
        assert subscription.is_a?(Stripe::Subscription)
      end
    end

    context "#delete_discount" do
      should "delete a discount" do
        customer = Stripe::Customer.retrieve("cus_123")
        customer = customer.delete_discount
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{customer.id}/discount"
        assert customer.is_a?(Stripe::Customer)
      end
    end

    context ".delete_discount" do
      should "delete a discount" do
        discount = Stripe::Customer.delete_discount("cus_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_123/discount"
        assert discount.is_a?(Stripe::Discount)
      end
    end

    context "source field" do
      should "allow setting source with token" do
        c = Stripe::Customer.new("test_customer")
        c.source = "tok_123"
        assert_equal "tok_123", c.source
      end

      should "allow setting source with hash and set flag" do
        c = Stripe::Customer.new("test_customer")
        c.source = {
          object: "card",
        }
        assert_equal true, c.source.save_with_parent
      end
    end
  end
end
