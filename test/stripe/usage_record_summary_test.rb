# frozen_string_literal: true

require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class UsageRecordSummaryTest < Test::Unit::TestCase
    setup do
      @sub_item = Stripe::SubscriptionItem.retrieve("si_123")
    end

    should "be listable" do
      transactions = @sub_item.usage_record_summaries

      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/#{@sub_item.id}/usage_record_summaries"
      assert transactions.data.is_a?(Array)
      assert transactions.first.is_a?(Stripe::UsageRecordSummary)
    end
  end
end
