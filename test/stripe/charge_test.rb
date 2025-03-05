# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "be listable" do
      charges = Stripe::Charge.list
      assert_requested :get, "#{Stripe.api_base}/v1/charges"
      assert charges.data.is_a?(Array)
      assert charges.data[0].is_a?(Stripe::Charge)
    end

    should "be searchable" do
      charges = Stripe::Charge.search(query: 'currency:"USD"')
      assert_requested :get, "#{Stripe.api_base}/v1/charges/search?query=currency:%22USD%22"
      assert charges.total_count == 1
      assert charges.data.is_a?(Array)
      assert charges.data[0].is_a?(Stripe::Charge)

      cnt = 0
      charges.auto_paging_each do |c|
        assert c.is_a?(Stripe::Charge)
        cnt += 1
      end
      assert cnt == 1
    end

    should "be retrievable" do
      charge = Stripe::Charge.retrieve("ch_123")
      assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be creatable" do
      charge = Stripe::Charge.create(
        amount: 100,
        currency: "USD",
        source: "src_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/charges"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be saveable" do
      charge = Stripe::Charge.retrieve("ch_123")
      charge.metadata["key"] = "value"
      charge.save
      assert_requested :post, "#{Stripe.api_base}/v1/charges/#{charge.id}"
    end

    should "be updateable" do
      charge = Stripe::Charge.update("ch_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    context "#capture" do
      should "capture the charge" do
        charge = Stripe::Charge.retrieve("ch_123")
        charge = charge.capture(amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context ".capture" do
      should "capture the charge" do
        charge = Stripe::Charge.capture("ch_123", amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context "invalid inputs" do
      should "handle null values gracefully" do
        assert_raises(ArgumentError) { Stripe::Charge.create(amount: nil, currency: "USD", source: "src_123") }
        assert_raises(ArgumentError) { Stripe::Charge.update("ch_123", amount: nil) }
        assert_raises(ArgumentError) { Stripe::Charge.capture("ch_123", amount: nil) }
      end

      should "handle empty strings gracefully" do
        assert_raises(ArgumentError) { Stripe::Charge.create(amount: "", currency: "USD", source: "src_123") }
        assert_raises(ArgumentError) { Stripe::Charge.update("ch_123", amount: "") }
        assert_raises(ArgumentError) { Stripe::Charge.capture("ch_123", amount: "") }
      end

      should "handle incorrect data types gracefully" do
        assert_raises(TypeError) { Stripe::Charge.create(amount: "one hundred", currency: "USD", source: "src_123") }
        assert_raises(TypeError) { Stripe::Charge.update("ch_123", amount: "one hundred") }
        assert_raises(TypeError) { Stripe::Charge.capture("ch_123", amount: "one hundred") }
      end
    end
  end
end
