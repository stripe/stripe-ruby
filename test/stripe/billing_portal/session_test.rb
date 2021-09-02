# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module BillingPortal
    class SessionTest < Test::Unit::TestCase
      should "be creatable" do
        session = EwStripe::BillingPortal::Session.create(
          customer: "cus_123",
          return_url: "https://stripe.com/return"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/billing_portal/sessions"
        assert session.is_a?(EwStripe::BillingPortal::Session)
      end
    end
  end
end
