require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:customer)

    should "be listable" do
      customers = Stripe::Customer.list
      assert_requested :get, "#{Stripe.api_base}/v1/customers"
      assert customers.data.kind_of?(Array)
      assert customers.first.kind_of?(Stripe::Customer)
    end

    should "be retrievable" do
      customer = Stripe::Customer.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/customers/#{FIXTURE[:id]}"
      assert customer.kind_of?(Stripe::Customer)
    end

    should "be creatable" do
      customer = Stripe::Customer.create
      assert_requested :post, "#{Stripe.api_base}/v1/customers"
      assert customer.kind_of?(Stripe::Customer)
    end

    should "be saveable" do
      customer = Stripe::Customer.retrieve(FIXTURE[:id])
      customer.metadata['key'] = 'value'
      customer.save
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      customer = Stripe::Customer.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{FIXTURE[:id]}"
      assert customer.kind_of?(Stripe::Customer)
    end

    should "be deletable" do
      customer = Stripe::Customer.retrieve(FIXTURE[:id])
      customer = customer.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{FIXTURE[:id]}"
      assert customer.kind_of?(Stripe::Customer)
    end

    context "#create_subscription" do
      should "create a new subscription" do
        customer = Stripe::Customer.retrieve(FIXTURE[:id])
        subscription = customer.create_subscription({:plan => 'silver'})
        assert subscription.kind_of?(Stripe::Subscription)
      end
    end

    context "#create_upcoming_invoice" do
      should "create a new invoice" do
        customer = Stripe::Customer.retrieve(FIXTURE[:id])
        invoice = customer.create_upcoming_invoice
        assert invoice.kind_of?(Stripe::Invoice)
      end
    end

    context "#update_subscription" do
      should "update a subscription" do
        customer = Stripe::Customer.retrieve(FIXTURE[:id])

        # deprecated API and not in schema
        stub_request(:post, "#{Stripe.api_base}/v1/customers/#{customer.id}/subscription").
          with(body: { plan: "silver" }).
          to_return(body: JSON.generate(API_FIXTURES[:subscription]))
        subscription = customer.update_subscription({:plan => 'silver'})
        assert subscription.kind_of?(Stripe::Subscription)
      end
    end

    context "#cancel_subscription" do
      should "cancel a subscription" do
        customer = Stripe::Customer.retrieve(FIXTURE[:id])

        # deprecated API and not in schema
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{customer.id}/subscription").
          with(query: { at_period_end: "true" }).
          to_return(body: JSON.generate(API_FIXTURES[:subscription]))
        subscription = customer.cancel_subscription({:at_period_end => 'true'})
        assert subscription.kind_of?(Stripe::Subscription)
      end
    end

    context "#delete_discount" do
      should "delete a discount" do
        customer = Stripe::Customer.retrieve(FIXTURE[:id])

        stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{customer.id}/discount").
          to_return(body: JSON.generate(API_FIXTURES[:discount]))
        discount = customer.delete_discount
        assert discount.kind_of?(Stripe::Customer)
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
          :object => 'card'
        }
        assert_equal true, c.source.save_with_parent
      end
    end
  end
end

