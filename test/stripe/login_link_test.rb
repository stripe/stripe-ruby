# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class LoginLinkTest < Test::Unit::TestCase
    setup do
      account_fixture = {
        "id" => "acct_123",
        "object" => "account",
        "login_links" => {
          "data" => [],
          "has_more" => false,
          "object" => "list",
          "url" =>  "/v1/accounts/acct_123/login_links",
        },
      }
      @account = Stripe::Account.construct_from(account_fixture)
    end

    should "not be retrievable" do
      assert_raises NotImplementedError do
        Stripe::LoginLink.retrieve("foo")
      end
    end

    should "be creatable" do
      stub_request(:post, "#{Stripe.api_base}/v1/accounts/#{@account.id}/login_links")
        .to_return(body: JSON.generate(object: "login_link"))

      login_link = @account.login_links.create
      assert_requested :post,
                       "#{Stripe.api_base}/v1/accounts/#{@account.id}/login_links"
      assert login_link.is_a?(Stripe::LoginLink)
    end
  end
end
