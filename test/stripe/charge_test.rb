# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class ChargeTest < Test::Unit::TestCase
    should "be listable" do
      charges = EwStripe::Charge.list
      assert_requested :get, "#{EwStripe.api_base}/v1/charges"
      assert charges.data.is_a?(Array)
      assert charges.data[0].is_a?(EwStripe::Charge)
    end

    should "be retrievable" do
      charge = EwStripe::Charge.retrieve("ch_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(EwStripe::Charge)
    end

    should "be creatable" do
      charge = EwStripe::Charge.create(
        amount: 100,
        currency: "USD",
        source: "src_123"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/charges"
      assert charge.is_a?(EwStripe::Charge)
    end

    should "be saveable" do
      charge = EwStripe::Charge.retrieve("ch_123")
      charge.metadata["key"] = "value"
      charge.save
      assert_requested :post, "#{EwStripe.api_base}/v1/charges/#{charge.id}"
    end

    should "be updateable" do
      charge = EwStripe::Charge.update("ch_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(EwStripe::Charge)
    end

    context "#capture" do
      should "capture the charge" do
        charge = EwStripe::Charge.retrieve("ch_123")
        charge = charge.capture(amount: 100)
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(EwStripe::Charge)
      end
    end

    context ".capture" do
      should "capture the charge" do
        charge = EwStripe::Charge.capture("ch_123", amount: 100)
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(EwStripe::Charge)
      end
    end
  end
end
