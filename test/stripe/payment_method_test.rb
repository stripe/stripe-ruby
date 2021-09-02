# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class PaymentMethodTest < Test::Unit::TestCase
    should "be listable" do
      payment_methods = EwStripe::PaymentMethod.list(
        customer: "cus_123",
        type: "card"
      )
      assert_requested :get, "#{EwStripe.api_base}/v1/payment_methods?customer=cus_123&type=card"
      assert payment_methods.data.is_a?(Array)
      assert payment_methods.first.is_a?(EwStripe::PaymentMethod)
    end

    should "be retrievable" do
      payment_method = EwStripe::PaymentMethod.retrieve("pm_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/payment_methods/pm_123"
      assert payment_method.is_a?(EwStripe::PaymentMethod)
    end

    should "be creatable" do
      payment_method = EwStripe::PaymentMethod.create(
        type: "card"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods"
      assert payment_method.is_a?(EwStripe::PaymentMethod)
    end

    should "be saveable" do
      payment_method = EwStripe::PaymentMethod.retrieve("pm_123")
      payment_method.metadata["key"] = "value"
      payment_method.save
      assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/#{payment_method.id}"
    end

    should "be updateable" do
      payment_method = EwStripe::PaymentMethod.update("pm_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/pm_123"
      assert payment_method.is_a?(EwStripe::PaymentMethod)
    end

    context "#attach" do
      should "attach payment_method" do
        payment_method = EwStripe::PaymentMethod.construct_from(id: "pm_123", object: "payment_method")
        payment_method = payment_method.attach(
          customer: "cus_123"
        )

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/pm_123/attach"
        assert payment_method.is_a?(EwStripe::PaymentMethod)
      end
    end

    context ".attach" do
      should "attach payment_method" do
        payment_method = EwStripe::PaymentMethod.attach("pm_123", customer: "cus_123")

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/pm_123/attach"
        assert payment_method.is_a?(EwStripe::PaymentMethod)
      end
    end

    context "#detach" do
      should "detach payment_method" do
        payment_method = EwStripe::PaymentMethod.construct_from(id: "pm_123", object: "payment_method")
        payment_method = payment_method.detach

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/pm_123/detach"
        assert payment_method.is_a?(EwStripe::PaymentMethod)
      end
    end

    context ".detach" do
      should "detach payment_method" do
        payment_method = EwStripe::PaymentMethod.detach("pm_123")

        assert_requested :post, "#{EwStripe.api_base}/v1/payment_methods/pm_123/detach"
        assert payment_method.is_a?(EwStripe::PaymentMethod)
      end
    end
  end
end
