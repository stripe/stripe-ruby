# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class SetupAttemptTest < Test::Unit::TestCase
    should "be listable" do
      setup_attempts = EwStripe::SetupAttempt.list({
        setup_intent: "seti_123",
      })
      assert_requested :get, "#{EwStripe.api_base}/v1/setup_attempts?setup_intent=seti_123"
      assert setup_attempts.data.is_a?(Array)
      assert setup_attempts.data[0].is_a?(EwStripe::SetupAttempt)
    end
  end
end
