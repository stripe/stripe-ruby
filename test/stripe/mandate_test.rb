# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class MandateTest < Test::Unit::TestCase
    should "be retrievable" do
      schedule = EwStripe::Mandate.retrieve("mandate_123")
      assert_requested :get,
                       "#{EwStripe.api_base}/v1/mandates/mandate_123"
      assert schedule.is_a?(EwStripe::Mandate)
    end
  end
end
