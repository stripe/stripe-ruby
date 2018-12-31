# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class OAuthTest < Test::Unit::TestCase
    setup do
      Stripe.client_id = "ca_test"
    end

    teardown do
      Stripe.client_id = nil
    end

    context ".authorize_url" do
      should "return the authorize URL" do
        uri_str = OAuth.authorize_url(scope: "read_write",
                                      state: "csrf_token",
                                      stripe_user: {
                                        email: "test@example.com",
                                        url: "https://example.com/profile/test",
                                        country: "US",
                                      })

        uri = URI.parse(uri_str)
        params = CGI.parse(uri.query)

        assert_equal("https", uri.scheme)
        assert_equal("connect.stripe.com", uri.host)
        assert_equal("/oauth/authorize", uri.path)

        assert_equal(["ca_test"], params["client_id"])
        assert_equal(["read_write"], params["scope"])
        assert_equal(["test@example.com"], params["stripe_user[email]"])
        assert_equal(["https://example.com/profile/test"], params["stripe_user[url]"])
        assert_equal(["US"], params["stripe_user[country]"])
      end

      should "optionally return an express path" do
        uri_str = OAuth.authorize_url({}, express: true)

        uri = URI.parse(uri_str)
        assert_equal("https", uri.scheme)
        assert_equal("connect.stripe.com", uri.host)
        assert_equal("/express/oauth/authorize", uri.path)
      end
    end

    context ".token" do
      should "exchange a code for an access token" do
        # The OpenAPI fixtures don't cover the OAuth endpoints, so we just
        # stub the request manually.
        stub_request(:post, "#{Stripe.connect_base}/oauth/token")
          .with(body: {
            "grant_type" => "authorization_code",
            "code" => "this_is_an_authorization_code",
          })
          .to_return(body: JSON.generate(access_token: "sk_access_token",
                                         scope: "read_only",
                                         livemode: false,
                                         token_type: "bearer",
                                         refresh_token: "sk_refresh_token",
                                         stripe_user_id: "acct_test",
                                         stripe_publishable_key: "pk_test"))

        resp = OAuth.token(grant_type: "authorization_code",
                           code: "this_is_an_authorization_code")
        assert_equal("sk_access_token", resp.access_token)
      end
    end

    context ".deauthorize" do
      should "deauthorize an account" do
        # The OpenAPI fixtures don't cover the OAuth endpoints, so we just
        # stub the request manually.
        stub_request(:post, "#{Stripe.connect_base}/oauth/deauthorize")
          .with(body: {
            "client_id" => "ca_test",
            "stripe_user_id" => "acct_test_deauth",
          })
          .to_return(body: JSON.generate(stripe_user_id: "acct_test_deauth"))

        resp = OAuth.deauthorize(stripe_user_id: "acct_test_deauth")
        assert_equal("acct_test_deauth", resp.stripe_user_id)
      end
    end
  end
end
