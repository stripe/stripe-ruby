# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeConfigurationTest < Test::Unit::TestCase
    context ".setup" do
      should "initialize a new configuration with defaults" do
        config = Stripe::StripeConfiguration.setup

        assert_equal Stripe::DEFAULT_CA_BUNDLE_PATH, config.ca_bundle_path
        assert_equal true, config.enable_telemetry
        assert_equal true, config.verify_ssl_certs
        assert_equal 5, config.max_network_retry_delay
        assert_equal 0.5, config.initial_network_retry_delay
        assert_equal 2, config.max_network_retries
        assert_equal 30, config.open_timeout
        assert_equal 80, config.read_timeout
        assert_equal 30, config.write_timeout
        assert_equal "https://api.stripe.com", config.api_base
        assert_equal "https://connect.stripe.com", config.connect_base
        assert_equal "https://files.stripe.com", config.uploads_base
        assert_equal "https://meter-events.stripe.com", config.meter_events_base
        assert !config.api_version.nil?
      end

      should "allow for overrides when a block is passed" do
        config = Stripe::StripeConfiguration.setup do |c|
          c.open_timeout = 100
          c.read_timeout = 100
          c.write_timeout = 100 if WRITE_TIMEOUT_SUPPORTED
        end

        assert_equal 100, config.open_timeout
        assert_equal 100, config.read_timeout
        assert_equal 100, config.write_timeout if WRITE_TIMEOUT_SUPPORTED
      end
    end

    context "#reverse_duplicate_merge" do
      should "return a duplicate object with overrides" do
        config = Stripe::StripeConfiguration.setup do |c|
          c.open_timeout = 100
        end

        duped_config = config.reverse_duplicate_merge(read_timeout: 500, api_version: "2018-08-02")

        assert_equal config.open_timeout, duped_config.open_timeout
        assert_equal 500, duped_config.read_timeout
      end

      context "base addresses" do
        should "correctly merge all" do
          config = Stripe::StripeConfiguration.setup do |c|
            c.api_base = "test"
            c.uploads_base = "foo"
            c.connect_base = "bar"
            c.meter_events_base = "baz"
          end

          duped_config = config.reverse_duplicate_merge({ read_timeout: 500 })

          assert_equal config.base_addresses[:api], duped_config.base_addresses[:api]
          assert_equal config.base_addresses[:files], duped_config.base_addresses[:files]
          assert_equal config.base_addresses[:connect], duped_config.base_addresses[:connect]
          assert_equal config.base_addresses[:meter_events], duped_config.base_addresses[:meter_events]
          assert_equal 500, duped_config.read_timeout
        end

        should "correctly merge one" do
          config = Stripe::StripeConfiguration.setup do |c|
            c.api_base = "test"
          end

          duped_config = config.reverse_duplicate_merge({ read_timeout: 500 })

          assert_equal config.base_addresses[:api], duped_config.base_addresses[:api]
          assert_equal Stripe::DEFAULT_CONNECT_BASE, duped_config.base_addresses[:connect]
          assert_equal Stripe::DEFAULT_UPLOAD_BASE, duped_config.base_addresses[:files]
          assert_equal Stripe::DEFAULT_METER_EVENTS_BASE, duped_config.base_addresses[:meter_events]
          assert_equal 500, duped_config.read_timeout
        end

        should "correctly merge global base" do
          old_api_base = Stripe.api_base
          Stripe.api_base = "test"

          duped_config = Stripe.config.reverse_duplicate_merge({})

          assert_equal Stripe.api_base, duped_config.base_addresses[:api]
          assert_equal Stripe.connect_base, duped_config.base_addresses[:connect]
          assert_equal Stripe.uploads_base, duped_config.base_addresses[:files]
          assert_equal Stripe.meter_events_base, duped_config.base_addresses[:meter_events]

          Stripe.api_base = old_api_base
        end
      end
    end

    context "client_init" do
      setup do
        @client_opts = StripeClient::CLIENT_OPTIONS.to_h { |k| [k, nil] }
        @old_api_key = Stripe.api_key
        @old_stripe_account = Stripe.stripe_account
        @old_enable_telemetry = Stripe.instance_variable_get(:@enable_telemetry)
        @old_open_timeout = Stripe.open_timeout
        @old_uploads_base = Stripe.uploads_base
      end

      teardown do
        Stripe.api_key = @old_api_key
        Stripe.stripe_account = @old_stripe_account
        Stripe.enable_telemetry = @old_enable_telemetry
        Stripe.open_timeout = @old_open_timeout
        Stripe.uploads_base = @old_uploads_base
      end

      should "correctly set options for the client" do
        # mix of default, global, client options
        Stripe.api_key = "global_test_123"
        Stripe.stripe_account = "global_acct_123"
        Stripe.enable_telemetry = false
        Stripe.open_timeout = 30_000
        Stripe.uploads_base = "global_uploads_base.stripe.com"

        @client_opts[:api_key] = "client_test_123"
        @client_opts[:stripe_account] = "client_acct_123"
        @client_opts[:uploads_base] = "client_uploads_base.stripe.com"
        @client_opts.reject! { |_k, v| v.nil? }

        client_config = Stripe::StripeConfiguration.client_init(@client_opts)

        assert_equal("client_test_123", client_config.api_key) # client api key
        assert_equal("client_acct_123", client_config.stripe_account) # client stripe account
        assert_equal(false, client_config.enable_telemetry) # global telemetry
        assert_equal(30_000, client_config.open_timeout) # global timeout
        assert_equal("client_uploads_base.stripe.com", client_config.base_addresses[:files]) # client uploads base
        assert_equal(Stripe::DEFAULT_API_BASE, client_config.base_addresses[:api]) # default api base
        assert_equal(ApiVersion::CURRENT, client_config.api_version) # default api version
        assert_equal(Stripe::DEFAULT_CA_BUNDLE_PATH, client_config.ca_bundle_path) # default ca bundle path
      end
    end

    context "#max_network_retries=" do
      should "coerce the option into an integer" do
        config = Stripe::StripeConfiguration.setup

        config.max_network_retries = "10"
        assert_equal 10, config.max_network_retries
      end
    end

    context "#max_network_retry_delay=" do
      should "coerce the option into an integer" do
        config = Stripe::StripeConfiguration.setup

        config.max_network_retry_delay = "10"
        assert_equal 10, config.max_network_retry_delay
      end
    end

    context "#initial_network_retry_delay=" do
      should "coerce the option into an integer" do
        config = Stripe::StripeConfiguration.setup

        config.initial_network_retry_delay = "10"
        assert_equal 10, config.initial_network_retry_delay
      end
    end

    context "#log_level=" do
      should "be backwards compatible with old values" do
        config = Stripe::StripeConfiguration.setup

        config.log_level = "debug"
        assert_equal Stripe::LEVEL_DEBUG, config.log_level

        config.log_level = "info"
        assert_equal Stripe::LEVEL_INFO, config.log_level
      end

      should "raise an error if the value isn't valid" do
        config = Stripe::StripeConfiguration.setup

        assert_raises ArgumentError do
          config.log_level = "Foo"
        end
      end
    end

    context "options that require all connection managers to be cleared" do
      should "clear when setting allow ca_bundle_path" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.ca_bundle_path = "/path/to/ca/bundle"
      end

      should "clear when setting open timeout" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.open_timeout = 10
      end

      should "clear when setting read timeout" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.read_timeout = 10
      end

      should "clear when setting uploads_base" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.uploads_base = "https://other.stripe.com"
      end

      should "clear when setting api_base to be configured" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.api_base = "https://other.stripe.com"
      end

      should "clear when setting connect_base" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.connect_base = "https://other.stripe.com"
      end

      should "clear when setting meter_events_base" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.meter_events_base = "https://other.stripe.com"
      end

      should "clear when setting verify_ssl_certs" do
        config = Stripe::StripeConfiguration.setup

        APIRequestor.expects(:clear_all_connection_managers).with(config: config)
        config.verify_ssl_certs = false
      end
    end

    context "#key" do
      should "generate the same key when values are identicial" do
        assert_equal StripeConfiguration.setup.key, StripeConfiguration.setup.key

        custom_config = StripeConfiguration.setup { |c| c.open_timeout = 1000 }
        refute_equal StripeConfiguration.setup.key, custom_config.key
      end
    end
  end
end
