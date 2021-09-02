# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class PaymentIntentTest < Test::Unit::TestCase
    TEST_RESOURCE_ID = "pi_123"

    should "be listable" do
      payment_intents = EwStripe::PaymentIntent.list
      assert_requested :get, "#{EwStripe.api_base}/v1/payment_intents"
      assert payment_intents.data.is_a?(Array)
      assert payment_intents.data[0].is_a?(EwStripe::PaymentIntent)
    end

    should "be retrievable" do
      payment_intent = EwStripe::PaymentIntent.retrieve("pi_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(EwStripe::PaymentIntent)
    end

    should "be creatable" do
      payment_intent = EwStripe::PaymentIntent.create(
        amount: 1234,
        currency: "usd",
        payment_method_types: ["card"]
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents"
      assert payment_intent.is_a?(EwStripe::PaymentIntent)
    end

    should "be saveable" do
      payment_intent = EwStripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent", metadata: {})
      payment_intent.metadata["key"] = "value"
      payment_intent.save
      assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/#{payment_intent.id}"
    end

    should "be updateable" do
      payment_intent = EwStripe::PaymentIntent.update("pi_123", metadata: { foo: "bar" })

      assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(EwStripe::PaymentIntent)
    end

    context "#cancel" do
      should "cancel a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.cancel

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/cancel"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end

    context ".cancel" do
      should "cancel a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.cancel("pi_123")

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/cancel"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end

    context "#capture" do
      should "capture a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.capture(
          amount_to_capture: 1234
        )

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/capture"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end

    context ".capture" do
      should "capture a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.capture("pi_123", amount_to_capture: 1234)

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/capture"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end

    context "#confirm" do
      should "confirm a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.confirm(
          payment_method: "pm_123"
        )

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/confirm"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end

    context ".confirm" do
      should "confirm a payment_intent" do
        payment_intent = EwStripe::PaymentIntent.confirm("pi_123", payment_method: "pm_123")

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_intents/pi_123/confirm"
        assert payment_intent.is_a?(EwStripe::PaymentIntent)
      end
    end
  end
end
