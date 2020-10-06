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
      logger = Object.new
      Stripe.logger = logger
      assert_equal logger, Stripe.logger
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
end
