# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Radar
    class EarlyFraudWarningTest < Test::Unit::TestCase
      should "be listable" do
        warnings = EwStripe::Radar::EarlyFraudWarning.list
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/early_fraud_warnings"
        assert warnings.data.is_a?(Array)
        assert warnings.data[0].is_a?(EwStripe::Radar::EarlyFraudWarning)
      end

      should "be retrievable" do
        warning = EwStripe::Radar::EarlyFraudWarning.retrieve("issfr_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/early_fraud_warnings/issfr_123"
        assert warning.is_a?(EwStripe::Radar::EarlyFraudWarning)
      end
    end
  end
end
