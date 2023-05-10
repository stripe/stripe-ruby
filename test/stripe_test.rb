# frozen_string_literal: true

require ::File.expand_path("test_helper", __dir__)

class StripeTest < Test::Unit::TestCase
  should "allow app_info to be configured" do
    begin
      old = Stripe.app_info
      Stripe.set_app_info(
        "MyAwesomePlugin",
        partner_id: "partner_1234",
        url: "https://myawesomeplugin.info",
        version: "1.2.34"
      )
      assert_equal({
        name: "MyAwesomePlugin",
        partner_id: "partner_1234",
        url: "https://myawesomeplugin.info",
        version: "1.2.34",
      }, Stripe.app_info)
    ensure
      Stripe.app_info = old
    end
  end

  context "forwardable configurations" do
    context "internal configurations" do
      should "return the certificate store" do
        assert Stripe.ca_store.is_a?(OpenSSL::X509::Store)
      end

      should "return the max_network_retry_delay" do
        assert_equal 2, Stripe.max_network_retry_delay
      end

      should "return the initial_network_retry_delay" do
        assert_equal 0.5, Stripe.initial_network_retry_delay
      end
    end

    should "allow ca_bundle_path to be configured" do
      Stripe::StripeClient.expects(:clear_all_connection_managers)
      Stripe.ca_bundle_path = "/path/to/ca/bundle"
      assert_equal "/path/to/ca/bundle", Stripe.ca_bundle_path
    end

    should "allow open timeout to be configured" do
      Stripe.open_timeout = 10
      assert_equal 10, Stripe.open_timeout
    end

    should "allow read timeout to be configured" do
      Stripe.read_timeout = 10
      assert_equal 10, Stripe.read_timeout
    end

    if WRITE_TIMEOUT_SUPPORTED
      should "allow write timeout to be configured" do
        Stripe.write_timeout = 10
        assert_equal 10, Stripe.write_timeout
      end
    else
      should "raise when write timeout to be configured is not supported" do
        assert_raises NotImplementedError do
          Stripe.write_timeout = 10
        end
      end
    end

    should "allow api_key to be configured" do
      Stripe.api_key = "sk_local_test"
      assert_equal "sk_local_test", Stripe.api_key
    end

    should "allow stripe_account to be configured" do
      Stripe.stripe_account = "acct_1234"
      assert_equal "acct_1234", Stripe.stripe_account
    end

    should "allow enable_telemetry to be configured" do
      begin
        old = Stripe.enable_telemetry?

        Stripe.enable_telemetry = false
        assert_equal false, Stripe.enable_telemetry?
      ensure
        Stripe.enable_telemetry = old
      end
    end

    should "allow log_level to be configured" do
      Stripe.log_level = "debug"
      assert_equal ::Logger::DEBUG, Stripe.log_level
    end

    should "allow logger to be configured" do
      old_logger = Stripe.logger
      begin
        logger = Object.new
        Stripe.logger = logger
        assert_equal logger, Stripe.logger
      ensure
        Stripe.logger = old_logger
      end
    end

    should "allow proxy to be configured" do
      Stripe.proxy = "http://proxy"
      assert_equal "http://proxy", Stripe.proxy
    end

    should "allow uploads_base to be configured" do
      Stripe.uploads_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", Stripe.uploads_base
    end

    should "allow api_base to be configured" do
      Stripe.api_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", Stripe.api_base
    end

    should "allow api_version to be configured" do
      Stripe.api_version = "2018-02-28"
      assert_equal "2018-02-28", Stripe.api_version
    end

    should "allow connect_base to be configured" do
      Stripe.connect_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", Stripe.connect_base
    end

    should "allow verify_ssl_certs to be configured" do
      Stripe.verify_ssl_certs = false
      assert_equal false, Stripe.verify_ssl_certs
    end

    should "allow client_id to be configured" do
      Stripe.client_id = "client"
      assert_equal "client", Stripe.client_id
    end
  end

  context "raw_request" do
    should "send get request and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      stub_request(:get, "#{Stripe.api_base}/v1/accounts/acc_123")
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:get, "/v1/accounts/acc_123")

      assert_equal expected_body, resp.http_body
    end

    should "send post request with body and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      stub_request(:post, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with(body: "p1=1&p2=string")
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v1/accounts/acc_123", { p1: 1, p2: "string" })

      assert_equal expected_body, resp.http_body
    end

    should "send post request with json body and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      stub_request(:post, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with(body: "{\"p1\":1,\"p2\":\"string\"}")
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v1/accounts/acc_123", { p1: 1, p2: "string" }, { api_mode: :preview })

      assert_equal expected_body, resp.http_body
    end

    should "send post request with json body and headers and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      stub_request(:post, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with(body: "{\"p1\":1,\"p2\":\"string\"}", headers: { "Stripe-Account" => "bar", "Content-Type" => "application/json" })
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v1/accounts/acc_123", { p1: 1, p2: "string" }, { api_mode: :preview, "Stripe-Account": "bar" })

      assert_equal expected_body, resp.http_body
    end

    should "send get request with json body and headers and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:get, "/v1/accounts/acc_123", {}, { api_mode: :preview, "Stripe-Account": "bar" })

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal expected_body, resp.http_body
    end
  end

  context "preview raw requests" do
    should "send preview get request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.get("/v2/accounts/acc_123")

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end

    should "send preview post request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.post("/v2/accounts", { p1: 1, p2: "string" })

      assert_equal "application/json", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal "{\"p1\":1,\"p2\":\"string\"}", req.body
      assert_equal expected_body, resp.http_body
    end

    should "send preview delete request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:delete, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.delete("/v2/accounts/acc_123")

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end

    should "allow overriding default options for preview requests" do
      expected_body = "{\"id\": \"acc_123\"}"
      stripe_version_override = "2022-11-15"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.post("/v2/accounts", {}, { stripe_version: stripe_version_override })

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal stripe_version_override, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end
  end

  context "deserialize" do
    should "deserializes string into known object" do
      expected_body = "{\"id\": \"acc_123\", \"object\": \"account\"}"

      obj = Stripe.deserialize(expected_body)

      assert_equal obj.class, Stripe::Account
      assert_equal obj.id, "acc_123"
    end

    should "deserializes string into unknown object" do
      expected_body = "{\"id\": \"acc_123\", \"object\": \"unknown\"}"

      obj = Stripe.deserialize(expected_body)

      assert_equal obj.class, Stripe::StripeObject
      assert_equal obj.id, "acc_123"
    end

    should "deserializes hash into known object" do
      expected_body = { "id" => "acc_123", "object" => "account" }

      obj = Stripe.deserialize(expected_body)

      assert_equal obj.class, Stripe::Account
      assert_equal obj.id, "acc_123"
    end

    should "deserializes hash into unknown object" do
      expected_body = { "id" => "acc_123", "object" => "unknown" }

      obj = Stripe.deserialize(expected_body)

      assert_equal obj.class, Stripe::StripeObject
      assert_equal obj.id, "acc_123"
    end
  end
end
