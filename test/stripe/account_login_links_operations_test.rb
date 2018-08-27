# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AccountLoginLinksOperationsTest < Test::Unit::TestCase
    setup do
      @account_id = "acct_123"
    end

    context "#create_login_link" do
      should "create a login link" do
        login_link = Stripe::Account.create_login_link(
          @account_id
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{@account_id}/login_links"
        assert login_link.is_a?(Stripe::LoginLink)
      end
    end
  end
end
