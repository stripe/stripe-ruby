require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerCardTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:card)

    setup do
      @customer =
        Stripe::Customer.retrieve(API_FIXTURES.fetch(:customer)[:id])
    end

    should "be listable" do
      sources = @customer.sources.list
      assert sources.data.kind_of?(Array)
      # because of the terrible :wildcard nature of sources, the API stub
      # cannot currently replace this response with anything meaningful so we
      # don't assert on the type of individual items like we do in other tests
    end

    should "be creatable" do
      card = @customer.sources.create(
        source: API_FIXTURES.fetch(:token)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources"
      assert card.kind_of?(Stripe::BankAccount)
    end

    should "be deletable" do
      card = Stripe::Card.construct_from(FIXTURE.merge(customer: @customer.id))
      card = card.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources/#{FIXTURE[:id]}"
      assert card.kind_of?(Stripe::Card)
    end

    should "be saveable" do
      card = Stripe::Card.construct_from(FIXTURE.merge(customer: @customer.id))
      card.metadata['key'] = 'value'
      card.save
      assert_requested :post, "#{Stripe.api_base}/v1/customers/#{@customer.id}/sources/#{FIXTURE[:id]}"
    end
  end
end
