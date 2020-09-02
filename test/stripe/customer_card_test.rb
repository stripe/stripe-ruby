# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class CustomerCardTest < Test::Unit::TestCase
    setup do
      # Unfortunately, the OpenAPI spec has an issue where the sources list has the wrong
      # url so we need to mock this call instead.
      customer_json = { id: "cus_123", object: "customer", sources: { object: "list", data: [], has_more: true, url: "/v1/customers/cus_123/sources" } }
      stub_request(:get, "#{Stripe.api_base}/v1/customers/cus_123")
        .to_return(body: JSON.generate(customer_json))

      @customer = Stripe::Customer.retrieve("cus_123")
    end

    should "be listable" do
      sources = @customer.sources.list
      assert sources.data.is_a?(Array)
      # because of the terrible :wildcard nature of sources, the API stub
      # cannot currently replace this response with anything meaningful so we
      # don't assert on the type of individual items like we do in other tests
    end

    should "be creatable" do
      @customer.sources.create(
        source: "tok_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources"
    end

    should "be deletable" do
      card = Stripe::Card.construct_from(customer: @customer.id,
                                         id: "card_123")
      card.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources/card_123"
    end

    should "be saveable" do
      card = Stripe::Card.construct_from(customer: @customer.id,
                                         id: "card_123",
                                         metadata: {})
      card.metadata["key"] = "value"
      card.save
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources/card_123"
    end
  end
end
