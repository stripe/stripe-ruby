# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CheckoutSessionTest < Test::Unit::TestCase
    should "be creatable" do
      session = Stripe::CheckoutSession.create(
        allowed_source_types: ["card"],
        cancel_url: "https://stripe.com/cancel",
        client_reference_id: "1234",
        line_items: [
          {
            amount: 123,
            currency: "usd",
            description: "item 1",
            images: [
              "https://stripe.com/img1",
            ],
            name: "name",
            quantity: 2,
          },
        ],
        payment_intent_data: [
          receipt_email: "test@stripe.com",
        ],
        success_url: "https://stripe.com/success"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/checkout_sessions"
      assert session.is_a?(Stripe::CheckoutSession)
    end
  end
end
