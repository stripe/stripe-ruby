# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class UsageRecordSummaryTest < Test::Unit::TestCase
    setup do
      @sub_item = EwStripe::SubscriptionItem.retrieve("si_123")
    end

    should "be listable" do
      old_stderr = $stderr
      $stderr = StringIO.new

      begin
        transactions = @sub_item.usage_record_summaries

        assert_requested :get, "#{EwStripe.api_base}/v1/subscription_items/#{@sub_item.id}/usage_record_summaries"
        assert transactions.data.is_a?(Array)
        assert transactions.first.is_a?(EwStripe::UsageRecordSummary)

        assert_include $stderr.string,
                       "use SubscriptionItem.list_usage_record_summaries instead"
      ensure
        $stderr = old_stderr
      end
    end
  end
end
