# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class MandateTest < Test::Unit::TestCase
    should "be retrievable" do
      schedule = StripeClient.new.mandate.retrieve("mandate_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/mandates/mandate_123"
      assert schedule.is_a?(Stripe::Mandate)
    end
  end
end
