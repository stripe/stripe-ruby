# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Reporting
    class ReportTypeTest < Test::Unit::TestCase
      should "be listable" do
        report_types = StripeClient.new.reporting.report_type.list
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types"
        assert report_types.data.is_a?(Array)
        assert report_types.data[0].is_a?(Stripe::Reporting::ReportType)
      end

      should "be retrievable" do
        report_type = StripeClient.new.reporting.report_type.retrieve("activity.summary.1")
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types/activity.summary.1"
        assert report_type.is_a?(Stripe::Reporting::ReportType)
      end
    end
  end
end
