# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class UsageRecordTest < Test::Unit::TestCase
    should "be creatable" do
      usage_record = Stripe::UsageRecord.create(
        quantity: 5000,
        subscription_item: "si_abc",
        timestamp: Time.now.to_i,
        action: "increment"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/si_abc/usage_records"
      assert usage_record.is_a?(Stripe::UsageRecord)
    end

    should "raise when subscription_item is missing" do
      assert_raise ArgumentError do
        Stripe::UsageRecord.create(
          quantity: 5000,
          timestamp: Time.now.to_i,
          action: "increment"
        )
      end
    end
  end
end
