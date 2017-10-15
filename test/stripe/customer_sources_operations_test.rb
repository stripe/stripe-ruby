require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CustomerSourcesOperationsTest < Test::Unit::TestCase
    setup do
      @customer_id = "cus_123"
      @source_id = "ba_123"
    end

    context "#create_source" do
      should "create a source" do
        source = Stripe::Customer.create_source(
          @customer_id,
          source: "tok_123"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer_id}/sources"
        assert source.is_a?(Stripe::BankAccount)
      end
    end

    context "#retrieve_source" do
      should "retrieve a source" do
        source = Stripe::Customer.retrieve_source(
          @customer_id,
          @source_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/#{@customer_id}/sources/#{@source_id}"
        assert source.is_a?(Stripe::BankAccount)
      end
    end

    context "#update_source" do
      should "update a source" do
        source = Stripe::Customer.update_source(
          @customer_id,
          @source_id,
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer_id}/sources/#{@source_id}"
        assert source.is_a?(Stripe::Card)
      end
    end

    context "#delete_source" do
      should "delete a source" do
        source = Stripe::Customer.delete_source(
          @customer_id,
          @source_id
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{@customer_id}/sources/#{@source_id}"
        assert source.is_a?(Stripe::BankAccount)
      end
    end

    context "#list_sources" do
      should "list the customer's sources" do
        sources = Stripe::Customer.list_sources(
          @customer_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/#{@customer_id}/sources"
        assert sources.is_a?(Stripe::ListObject)
        assert sources.data.is_a?(Array)
      end
    end
  end
end
