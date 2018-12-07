# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AccountLinkTest < Test::Unit::TestCase
    should "be creatable" do
      link = Stripe::AccountLink.create(
        account: "acct_123",
        failure_url: "https://stripe.com/failure",
        success_url: "https://stripe.com/success",
        type: "custom_account_verification"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/account_links"
      assert link.is_a?(Stripe::AccountLink)
    end
  end
end
