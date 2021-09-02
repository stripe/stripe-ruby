# frozen_string_literal: true

require ::File.expand_path("test_helper", __dir__)

class StripeTest < Test::Unit::TestCase
  should "allow app_info to be configured" do
    begin
      old = EwStripe.app_info
      EwStripe.set_app_info(
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
      }, EwStripe.app_info)
    ensure
      EwStripe.app_info = old
    end
  end

  context "forwardable configurations" do
    context "internal configurations" do
      should "return the certificate store" do
        assert EwStripe.ca_store.is_a?(OpenSSL::X509::Store)
      end

      should "return the max_network_retry_delay" do
        assert_equal 2, EwStripe.max_network_retry_delay
      end

      should "return the initial_network_retry_delay" do
        assert_equal 0.5, EwStripe.initial_network_retry_delay
      end
    end

    should "allow ca_bundle_path to be configured" do
      EwStripe::StripeClient.expects(:clear_all_connection_managers)
      EwStripe.ca_bundle_path = "/path/to/ca/bundle"
      assert_equal "/path/to/ca/bundle", EwStripe.ca_bundle_path
    end

    should "allow open timeout to be configured" do
      EwStripe.open_timeout = 10
      assert_equal 10, EwStripe.open_timeout
    end

    should "allow read timeout to be configured" do
      EwStripe.read_timeout = 10
      assert_equal 10, EwStripe.read_timeout
    end

    if WRITE_TIMEOUT_SUPPORTED
      should "allow write timeout to be configured" do
        EwStripe.write_timeout = 10
        assert_equal 10, EwStripe.write_timeout
      end
    else
      should "raise when write timeout to be configured is not supported" do
        assert_raises NotImplementedError do
          EwStripe.write_timeout = 10
        end
      end
    end

    should "allow api_key to be configured" do
      EwStripe.api_key = "sk_local_test"
      assert_equal "sk_local_test", EwStripe.api_key
    end

    should "allow stripe_account to be configured" do
      EwStripe.stripe_account = "acct_1234"
      assert_equal "acct_1234", EwStripe.stripe_account
    end

    should "allow enable_telemetry to be configured" do
      begin
        old = EwStripe.enable_telemetry?

        EwStripe.enable_telemetry = false
        assert_equal false, EwStripe.enable_telemetry?
      ensure
        EwStripe.enable_telemetry = old
      end
    end

    should "allow log_level to be configured" do
      EwStripe.log_level = "debug"
      assert_equal ::Logger::DEBUG, EwStripe.log_level
    end

    should "allow logger to be configured" do
      logger = Object.new
      EwStripe.logger = logger
      assert_equal logger, EwStripe.logger
    end

    should "allow proxy to be configured" do
      EwStripe.proxy = "http://proxy"
      assert_equal "http://proxy", EwStripe.proxy
    end

    should "allow uploads_base to be configured" do
      EwStripe.uploads_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", EwStripe.uploads_base
    end

    should "allow api_base to be configured" do
      EwStripe.api_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", EwStripe.api_base
    end

    should "allow api_version to be configured" do
      EwStripe.api_version = "2018-02-28"
      assert_equal "2018-02-28", EwStripe.api_version
    end

    should "allow connect_base to be configured" do
      EwStripe.connect_base = "https://other.stripe.com"
      assert_equal "https://other.stripe.com", EwStripe.connect_base
    end

    should "allow verify_ssl_certs to be configured" do
      EwStripe.verify_ssl_certs = false
      assert_equal false, EwStripe.verify_ssl_certs
    end

    should "allow client_id to be configured" do
      EwStripe.client_id = "client"
      assert_equal "client", EwStripe.client_id
    end
  end
end
