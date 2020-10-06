# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeConfigurationTest < Test::Unit::TestCase
    context ".setup" do
      should "initialize a new configuration with defaults" do
        config = Stripe::StripeConfiguration.setup

        assert_equal Stripe::DEFAULT_CA_BUNDLE_PATH, config.ca_bundle_path
        assert_equal true, config.enable_telemetry
        assert_equal true, config.verify_ssl_certs
        assert_equal 2, config.max_network_retry_delay
        assert_equal 0.5, config.initial_network_retry_delay
        assert_equal 0, config.max_network_retries
        assert_equal 30, config.open_timeout
        assert_equal 80, config.read_timeout
        assert_equal 30, config.write_timeout
        assert_equal "https://api.stripe.com", config.api_base
        assert_equal "https://connect.stripe.com", config.connect_base
        assert_equal "https://files.stripe.com", config.uploads_base
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

        duped_config = config.reverse_duplicate_merge(read_timeout: 500)

        assert_equal config.open_timeout, duped_config.open_timeout
        assert_equal 500, duped_config.read_timeout
      end
    end

    context "#max_network_retries=" do
      should "coerce the option into an integer" do
        config = Stripe::StripeConfiguration.setup

        config.max_network_retries = "10"
        assert_equal 10, config.max_network_retries
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

        StripeClient.expects(:clear_all_connection_managers)
        config.ca_bundle_path = "/path/to/ca/bundle"
      end

      should "clear when setting open timeout" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.open_timeout = 10
      end

      should "clear when setting read timeout" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.read_timeout = 10
      end

      should "clear when setting uploads_base" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.uploads_base = "https://other.stripe.com"
      end

      should "clearn when setting api_base to be configured" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.api_base = "https://other.stripe.com"
      end

      should "clear when setting connect_base" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.connect_base = "https://other.stripe.com"
      end

      should "clear when setting verify_ssl_certs" do
        config = Stripe::StripeConfiguration.setup

        StripeClient.expects(:clear_all_connection_managers)
        config.verify_ssl_certs = false
      end
    end
  end
end
