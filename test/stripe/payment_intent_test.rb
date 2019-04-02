# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  TEST_RESOURCE_ID = "pi_123".freeze

  class PaymentIntentTest < Test::Unit::TestCase
    should "be listable" do
      payment_intents = Stripe::PaymentIntent.list
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents"
      assert payment_intents.data.is_a?(Array)
      assert payment_intents.data[0].is_a?(Stripe::PaymentIntent)
    end

    should "be retrievable" do
      payment_intent = Stripe::PaymentIntent.retrieve("pi_123")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    should "be creatable" do
      payment_intent = Stripe::PaymentIntent.create(
        amount: 1234,
        currency: "usd",
        payment_method_types: ["card"]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    should "be saveable" do
      payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent", metadata: {})
      payment_intent.metadata["key"] = "value"
      payment_intent.save
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/#{payment_intent.id}"
    end

    should "be updateable" do
      payment_intent = Stripe::PaymentIntent.update("pi_123", metadata: { foo: "bar" })

      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    context "#cancel" do
      should "cancel a payment_intent" do
        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.cancel

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/cancel"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context ".cancel" do
      should "cancel a payment_intent" do
        payment_intent = Stripe::PaymentIntent.cancel("pi_123")

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/cancel"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context "#capture" do
      should "capture a payment_intent" do
        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.capture(
          amount_to_capture: 1234
        )

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/capture"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context ".capture" do
      should "capture a payment_intent" do
        payment_intent = Stripe::PaymentIntent.capture("pi_123", amount_to_capture: 1234)

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/capture"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context "#confirm" do
      should "confirm a payment_intent" do
        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.confirm(
          source: "src_123"
        )

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/confirm"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context ".confirm" do
      should "confirm a payment_intent" do
        payment_intent = Stripe::PaymentIntent.confirm("pi_123", source: "src_123")

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/confirm"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end
  end
end
