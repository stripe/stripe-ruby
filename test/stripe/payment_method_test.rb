# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class PaymentMethodTest < Test::Unit::TestCase
    should "be listable" do
      payment_methods = Stripe::PaymentMethod.list(
        customer: "cus_123",
        type: "card"
      )
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods?customer=cus_123&type=card"
      assert payment_methods.data.is_a?(Array)
      assert payment_methods.first.is_a?(Stripe::PaymentMethod)
    end

    should "be retrievable" do
      payment_method = Stripe::PaymentMethod.retrieve("pm_123")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods/pm_123"
      assert payment_method.is_a?(Stripe::PaymentMethod)
    end

    should "be creatable" do
      payment_method = Stripe::PaymentMethod.create(
        type: "card"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods"
      assert payment_method.is_a?(Stripe::PaymentMethod)
    end

    should "be saveable" do
      payment_method = Stripe::PaymentMethod.retrieve("pm_123")
      payment_method.metadata["key"] = "value"
      payment_method.save
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/#{payment_method.id}"
    end

    should "be updateable" do
      payment_method = Stripe::PaymentMethod.update("pm_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_123"
      assert payment_method.is_a?(Stripe::PaymentMethod)
    end

    context "#attach" do
      should "attach payment_method" do
        payment_method = Stripe::PaymentMethod.construct_from(id: "pm_123", object: "payment_method")
        payment_method = payment_method.attach(
          customer: "cus_123"
        )

        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_123/attach"
        assert payment_method.is_a?(Stripe::PaymentMethod)
      end
    end

    context ".attach" do
      should "attach payment_method" do
        payment_method = Stripe::PaymentMethod.attach("pm_123", customer: "cus_123")

        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_123/attach"
        assert payment_method.is_a?(Stripe::PaymentMethod)
      end
    end

    context "#detach" do
      should "detach payment_method" do
        payment_method = Stripe::PaymentMethod.construct_from(id: "pm_123", object: "payment_method")
        payment_method = payment_method.detach

        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_123/detach"
        assert payment_method.is_a?(Stripe::PaymentMethod)
      end
    end

    context ".detach" do
      should "detach payment_method" do
        payment_method = Stripe::PaymentMethod.detach("pm_123")

        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_123/detach"
        assert payment_method.is_a?(Stripe::PaymentMethod)
      end
    end
  end
end
