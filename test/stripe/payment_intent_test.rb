# frozen_string_literal: true

require File.expand_path("../../test_helper", __FILE__)

module Stripe
  TEST_RESOURCE_ID = "pi_123".freeze

  class PaymentIntentTest < Test::Unit::TestCase
    should "be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/payment_intents")
        .to_return(body: JSON.generate(object: "list", data: [{ id: "pi_123", object: "payment_intent" }]))

      payment_intents = Stripe::PaymentIntent.list
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents"
      assert payment_intents.data.is_a?(Array)
      assert payment_intents.data[0].is_a?(Stripe::PaymentIntent)
    end

    should "be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/payment_intents/pi_123")
        .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

      payment_intent = Stripe::PaymentIntent.retrieve("pi_123")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    should "be creatable" do
      stub_request(:post, "#{Stripe.api_base}/v1/payment_intents")
        .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

      payment_intent = Stripe::PaymentIntent.create
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    should "be saveable" do
      stub_request(:post, "#{Stripe.api_base}/v1/payment_intents/pi_123")
        .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

      payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent", metadata: {})
      payment_intent.metadata["key"] = "value"
      payment_intent.save
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/#{payment_intent.id}"
    end

    should "be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/payment_intents/pi_123")
        .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

      payment_intent = Stripe::PaymentIntent.update("pi_123", metadata: { foo: "bar" })

      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123"
      assert payment_intent.is_a?(Stripe::PaymentIntent)
    end

    context "#cancel" do
      should "cancel a payment_intent" do
        stub_request(:post, "#{Stripe.api_base}/v1/payment_intents/pi_123/cancel")
          .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.cancel

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/cancel"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context "#capture" do
      should "capture a payment_intent" do
        stub_request(:post, "#{Stripe.api_base}/v1/payment_intents/pi_123/capture")
          .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.capture

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/capture"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end

    context "#confirm" do
      should "confirm a payment_intent" do
        stub_request(:post, "#{Stripe.api_base}/v1/payment_intents/pi_123/confirm")
          .to_return(body: JSON.generate(id: "pi_123", object: "payment_intent"))

        payment_intent = Stripe::PaymentIntent.construct_from(id: "pi_123", object: "payment_intent")
        payment_intent = payment_intent.confirm

        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_123/confirm"
        assert payment_intent.is_a?(Stripe::PaymentIntent)
      end
    end
  end
end
