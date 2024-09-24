# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class OAuthServiceTest < Test::Unit::TestCase
    context ".authorize_url" do
      should "return the authorize URL" do
        client = Stripe::StripeClient.new("sk_test_fake_key", client_id: "foo")
        uri_str = client.oauth.authorize_url(scope: "read_write",
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

        assert_equal(["foo"], params["client_id"])
        assert_equal(["read_write"], params["scope"])
        assert_equal(["test@example.com"], params["stripe_user[email]"])
        assert_equal(["https://example.com/profile/test"], params["stripe_user[url]"])
        assert_equal(["US"], params["stripe_user[country]"])
      end

      should "optionally return an express path" do
        client = Stripe::StripeClient.new("sk_test_fake_key", client_id: "foo")
        uri_str = client.oauth.authorize_url({}, express: true)

        uri = URI.parse(uri_str)
        assert_equal("https", uri.scheme)
        assert_equal("connect.stripe.com", uri.host)
        assert_equal("/express/oauth/authorize", uri.path)
      end

      should "override the api base path when connect_base opt is provided" do
        client = Stripe::StripeClient.new("sk_test_fake_key", client_id: "foo", connect_base: "https://other.stripe.com")
        uri_str = client.oauth.authorize_url({})

        uri = URI.parse(uri_str)
        assert_equal("other.stripe.com", uri.host)
      end

      should "warn when client id is not provided" do
        e = assert_raises(AuthenticationError) do
          client = Stripe::StripeClient.new("sk_test_fake_key")
          client.oauth.authorize_url({})
        end
        assert e.message.start_with?("No client_id provided. (HINT: ")
      end
    end

    context ".token" do
      should "exchange a code for an access token" do
        # The OpenAPI fixtures don't cover the OAuth endpoints, so we just
        # stub the request manually.
        client = Stripe::StripeClient.new("sk_test_fake_key", stripe_account: "foo", client_id: "bar")

        stub_request(:post, "#{Stripe::DEFAULT_CONNECT_BASE}/oauth/token")
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

        resp = client.oauth.token(grant_type: "authorization_code",
                                  code: "this_is_an_authorization_code")
        assert_equal("sk_access_token", resp.access_token)
      end

      should "override the API key when client_secret is passed" do
        client = Stripe::StripeClient.new("sk_test_fake_key", stripe_account: "foo", client_id: "bar")
        stub_request(:post, "#{Stripe::DEFAULT_CONNECT_BASE}/oauth/token")
          .with(body: {
            "client_secret" => "client_secret_override",
            "grant_type" => "authorization_code",
            "code" => "this_is_an_authorization_code",
          })
          .with(headers: { Authorization: "Bearer client_secret_override" })
          .to_return(body: JSON.generate(test: "test", access_token: "another_access_token"))

        resp = client.oauth.token(client_secret: "client_secret_override",
                                  grant_type: "authorization_code",
                                  code: "this_is_an_authorization_code")
        assert_equal("another_access_token", resp.access_token)
      end

      should "override the connect base url when client connect_base is set" do
        stub_request(:post, "https://other.stripe.com/oauth/token")
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

        client = Stripe::StripeClient.new("sk_test_fake_key", connect_base: "https://other.stripe.com")

        resp = client.oauth.token(
          { grant_type: "authorization_code", code: "this_is_an_authorization_code" }
        )

        assert_equal("sk_access_token", resp.access_token)
      end
    end

    context ".deauthorize" do
      should "deauthorize an account" do
        # The OpenAPI fixtures don't cover the OAuth endpoints, so we just
        # stub the request manually.
        stub_request(:post, "#{Stripe::DEFAULT_CONNECT_BASE}/oauth/deauthorize")
          .with(body: {
            "client_id" => "foo",
            "stripe_user_id" => "acct_test_deauth",
          })
          .to_return(body: JSON.generate(stripe_user_id: "acct_test_deauth"))

        client = Stripe::StripeClient.new("sk_test_fake_key", client_id: "foo")
        resp = client.oauth.deauthorize(stripe_user_id: "acct_test_deauth")
        assert_equal("acct_test_deauth", resp.stripe_user_id)
      end

      should "override the api base path when connect_base is set" do
        stub_request(:post, "https://other.stripe.com/oauth/deauthorize")
          .with(body: {
            "client_id" => "foo",
            "stripe_user_id" => "acct_test_deauth",
          })
          .to_return(body: JSON.generate(stripe_user_id: "acct_test_deauth"))

        client = Stripe::StripeClient.new("sk_test_fake_key", client_id: "foo", connect_base: "https://other.stripe.com")

        resp = client.oauth.deauthorize({ stripe_user_id: "acct_test_deauth" })

        assert_equal("acct_test_deauth", resp.stripe_user_id)
      end

      should "warn when client id is not provided" do
        e = assert_raises(AuthenticationError) do
          client = Stripe::StripeClient.new("sk_test_fake_key")
          client.oauth.deauthorize({ stripe_user_id: "acct_test_no_client_id" })
        end
        assert e.message.start_with?("No client_id provided. (HINT: ")
      end
    end
  end
end
