# frozen_string_literal: true

require ::File.expand_path("../../../test_helper", __FILE__)

module Stripe
  module Checkout
    class SessionTest < Test::Unit::TestCase
      should "be creatable" do
        session = Stripe::Checkout::Session.create(
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
          payment_method_types: ["card"],
          success_url: "https://stripe.com/success"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions"
        assert session.is_a?(Stripe::Checkout::Session)
      end

      should "be retrievable" do
        charge = Stripe::Checkout::Session.retrieve("cs_123")
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/cs_123"
        assert charge.is_a?(Stripe::Checkout::Session)
      end
    end
  end
end
