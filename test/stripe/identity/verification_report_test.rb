# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Identity
    class VerificationReportTest < Test::Unit::TestCase
      should "be listable" do
        verification_reports = Stripe::Identity::VerificationReport.list
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports"
        assert verification_reports.data.is_a?(Array)
        assert verification_reports.data[0].is_a?(Stripe::Identity::VerificationReport)
      end

      should "be retrievable" do
        verification_report = Stripe::Identity::VerificationReport.retrieve("vs_123")
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports/vs_123"
        assert verification_report.is_a?(Stripe::Identity::VerificationReport)
      end
    end
  end
end
