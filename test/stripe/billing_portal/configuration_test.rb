# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module BillingPortal
    class ConfigurationTest < Test::Unit::TestCase
      should "be creatable" do
        session = EwStripe::BillingPortal::Configuration.create({
          business_profile: {
            privacy_policy_url: "https://example.com/privacy",
            terms_of_service_url: "https://example.com/tos",
          },
          features: { customer_update: { allowed_updates: ["address"], enabled: true } },
        })
        assert_requested :post, "#{EwStripe.api_base}/v1/billing_portal/configurations"
        assert session.is_a?(EwStripe::BillingPortal::Configuration)
      end
      should "be retrievable" do
        session = EwStripe::BillingPortal::Configuration.retrieve("bpc_xyz")
        assert_requested :get, "#{EwStripe.api_base}/v1/billing_portal/configurations/bpc_xyz"
        assert session.is_a?(EwStripe::BillingPortal::Configuration)
      end

      should "be updateable" do
        session = EwStripe::BillingPortal::Configuration.update("bpc_xyz", { active: false })
        assert_requested :post, "#{EwStripe.api_base}/v1/billing_portal/configurations/bpc_xyz"
        assert session.is_a?(EwStripe::BillingPortal::Configuration)
      end
      should "be listable" do
        sessions = EwStripe::BillingPortal::Configuration.list
        assert_requested :get, "#{EwStripe.api_base}/v1/billing_portal/configurations"
        assert sessions.data[0].is_a?(EwStripe::BillingPortal::Configuration)
      end
    end
  end
end
