# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Issuing
    class CardTest < Test::Unit::TestCase
      should "be creatable" do
        card = StripeClient.new.issuing.card.create(
          currency: "usd",
          type: "physical"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards"
        assert card.is_a?(Stripe::Issuing::Card)
      end

      should "be listable" do
        cards = StripeClient.new.issuing.card.list
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards"
        assert cards.data.is_a?(Array)
        assert cards.data[0].is_a?(Stripe::Issuing::Card)
      end

      should "be retrievable" do
        card = StripeClient.new.issuing.card.retrieve("ic_123")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_123"
        assert card.is_a?(Stripe::Issuing::Card)
      end

      should "be saveable" do
        card = StripeClient.new.issuing.card.retrieve("ic_123")
        card.metadata["key"] = "value"
        card.save
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_123"
        assert card.is_a?(Stripe::Issuing::Card)
      end

      should "be updateable" do
        card = StripeClient.new.issuing.card.update("ic_123", metadata: { foo: "bar" })
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_123"
        assert card.is_a?(Stripe::Issuing::Card)
      end

      context "#details" do
        should "retrieve a card's details" do
          # The /details endpoint is deprecated and not in the spec so we mock
          stub_request(:get, "#{Stripe.api_base}/v1/issuing/cards/ic_123/details")
            .to_return(body: JSON.generate(object: "issuing.card_details"))

          card_details = StripeClient.new.issuing.card.details("ic_123")
          assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_123/details"
          assert card_details.is_a?(Stripe::Issuing::CardDetails)
        end
      end

      context ".details" do
        should "retrieve a card's details" do
          # The /details endpoint is deprecated and not in the spec so we mock
          stub_request(:get, "#{Stripe.api_base}/v1/issuing/cards/ic_123/details")
            .to_return(body: JSON.generate(object: "issuing.card_details"))

          card = StripeClient.new.issuing.card.construct_from(
            id: "ic_123",
            object: "issuing.card_details"
          )
          card_details = card.details

          assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_123/details"
          assert card_details.is_a?(Stripe::Issuing::CardDetails)
        end
      end
    end
  end
end
