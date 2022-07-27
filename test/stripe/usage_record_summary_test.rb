# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class UsageRecordSummaryTest < Test::Unit::TestCase
    should "be listable" do
      old_stderr = $stderr
      $stderr = StringIO.new

      begin
        transactions = Stripe::SubscriptionItem.list_usage_record_summaries("si_123")

        assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/si_123/usage_record_summaries"
        assert transactions.data.is_a?(Array)
        assert transactions.first.is_a?(Stripe::UsageRecordSummary)
      ensure
        $stderr = old_stderr
      end
    end
  end
end
