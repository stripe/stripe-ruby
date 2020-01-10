# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class UsageRecordSummaryTest < Test::Unit::TestCase
    setup do
      @sub_item = Stripe::SubscriptionItem.retrieve("si_123")
    end

    should "be listable" do
      old_stderr = $stderr
      $stderr = StringIO.new

      begin
        transactions = @sub_item.usage_record_summaries

        assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/#{@sub_item.id}/usage_record_summaries"
        assert transactions.data.is_a?(Array)
        assert transactions.first.is_a?(Stripe::UsageRecordSummary)

        assert_include $stderr.string,
                       "use SubscriptionItem.list_usage_record_summaries instead"
      ensure
        $stderr = old_stderr
      end
    end
  end
end
