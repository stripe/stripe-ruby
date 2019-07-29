# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class SetupIntentTest < Test::Unit::TestCase
    TEST_RESOURCE_ID = "seti_123"

    should "be listable" do
      setup_intents = Stripe::SetupIntent.list
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents"
      assert setup_intents.data.is_a?(Array)
      assert setup_intents.data[0].is_a?(Stripe::SetupIntent)
    end

    should "be retrievable" do
      setup_intent = Stripe::SetupIntent.retrieve("seti_123")
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents/seti_123"
      assert setup_intent.is_a?(Stripe::SetupIntent)
    end

    should "be creatable" do
      setup_intent = Stripe::SetupIntent.create(
        payment_method_types: ["card"]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents"
      assert setup_intent.is_a?(Stripe::SetupIntent)
    end

    should "be saveable" do
      setup_intent = Stripe::SetupIntent.construct_from(id: "seti_123", object: "setup_intent", metadata: {})
      setup_intent.metadata["key"] = "value"
      setup_intent.save
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/#{setup_intent.id}"
    end

    should "be updateable" do
      setup_intent = Stripe::SetupIntent.update("seti_123", metadata: { foo: "bar" })

      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_123"
      assert setup_intent.is_a?(Stripe::SetupIntent)
    end

    context "#cancel" do
      should "cancel a setup_intent" do
        setup_intent = Stripe::SetupIntent.construct_from(id: "seti_123", object: "setup_intent")
        setup_intent = setup_intent.cancel

        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_123/cancel"
        assert setup_intent.is_a?(Stripe::SetupIntent)
      end
    end

    context ".cancel" do
      should "cancel a setup_intent" do
        setup_intent = Stripe::SetupIntent.cancel("seti_123")

        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_123/cancel"
        assert setup_intent.is_a?(Stripe::SetupIntent)
      end
    end

    context "#confirm" do
      should "confirm a setup_intent" do
        setup_intent = Stripe::SetupIntent.construct_from(id: "seti_123", object: "setup_intent")
        setup_intent = setup_intent.confirm(
          payment_method: "pm_123"
        )

        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_123/confirm"
        assert setup_intent.is_a?(Stripe::SetupIntent)
      end
    end

    context ".confirm" do
      should "confirm a setup_intent" do
        setup_intent = Stripe::SetupIntent.confirm("seti_123", payment_method: "pm_123")

        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_123/confirm"
        assert setup_intent.is_a?(Stripe::SetupIntent)
      end
    end
  end
end
