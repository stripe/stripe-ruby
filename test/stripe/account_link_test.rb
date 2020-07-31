# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class AccountLinkTest < Test::Unit::TestCase
    should "be creatable" do
      link = Stripe::AccountLink.create(
        account: "acct_123",
        refresh_url: "https://stripe.com/refresh",
        return_url: "https://stripe.com/return",
        type: "account_onboarding"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/account_links"
      assert link.is_a?(Stripe::AccountLink)
    end
  end
end
