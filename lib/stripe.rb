# frozen_string_literal: true

# Stripe Ruby bindings
# API spec at https://stripe.com/docs/api
require "cgi"
require "json"
require "logger"
require "net/http"
require "openssl"
require "rbconfig"
require "securerandom"
require "set"
require "socket"
require "uri"
require "forwardable"

# Version
require "stripe/version"

# API operations
require "stripe/api_operations/create"
require "stripe/api_operations/delete"
require "stripe/api_operations/list"
require "stripe/api_operations/nested_resource"
require "stripe/api_operations/request"
require "stripe/api_operations/save"

# API resource support classes
require "stripe/errors"
require "stripe/object_types"
require "stripe/util"
require "stripe/connection_manager"
require "stripe/multipart_encoder"
require "stripe/stripe_client"
require "stripe/stripe_object"
require "stripe/stripe_response"
require "stripe/list_object"
require "stripe/error_object"
require "stripe/api_resource"
require "stripe/singleton_api_resource"
require "stripe/webhook"
require "stripe/stripe_configuration"

# Named API resources
require "stripe/resources"

# OAuth
require "stripe/oauth"

module Stripe
  DEFAULT_CA_BUNDLE_PATH = __dir__ + "/data/ca-certificates.crt"

  # map to the same values as the standard library's logger
  LEVEL_DEBUG = Logger::DEBUG
  LEVEL_ERROR = Logger::ERROR
  LEVEL_INFO = Logger::INFO

  @app_info = nil

  @configuration = Stripe::StripeConfiguration.setup

  class << self
    extend Forwardable

    # User configurable options
    def_delegators :@configuration, :api_key, :api_key=
    def_delegators :@configuration, :api_version, :api_version=
    def_delegators :@configuration, :stripe_account, :stripe_account=
    def_delegators :@configuration, :api_base, :api_base=
    def_delegators :@configuration, :uploads_base, :uploads_base=
    def_delegators :@configuration, :connect_base, :connect_base=
    def_delegators :@configuration, :open_timeout, :open_timeout=
    def_delegators :@configuration, :read_timeout, :read_timeout=
    def_delegators :@configuration, :write_timeout, :write_timeout=
    def_delegators :@configuration, :proxy, :proxy=
    def_delegators :@configuration, :verify_ssl_certs, :verify_ssl_certs=
    def_delegators :@configuration, :ca_bundle_path, :ca_bundle_path=
    def_delegators :@configuration, :log_level, :log_level=
    def_delegators :@configuration, :logger, :logger=
    def_delegators :@configuration, :max_network_retries, :max_network_retries=
    def_delegators :@configuration, :enable_telemetry=, :enable_telemetry?

    # Internal configurations
    def_delegators :@configuration, :max_network_retry_delay
    def_delegators :@configuration, :initial_network_retry_delay
    def_delegators :@configuration, :ca_store

    attr_accessor :client_id
  end

  # Gets the application for a plugin that's identified some. See
  # #set_app_info.
  def self.app_info
    @app_info
  end

  def self.app_info=(info)
    @app_info = info
  end

  # Sets some basic information about the running application that's sent along
  # with API requests. Useful for plugin authors to identify their plugin when
  # communicating with Stripe.
  #
  # Takes a name and optional  partner program ID, plugin URL, and version.
  def self.set_app_info(name, partner_id: nil, url: nil, version: nil)
    @app_info = {
      name: name,
      partner_id: partner_id,
      url: url,
      version: version,
    }
  end
end

Stripe.log_level = ENV["STRIPE_LOG"] unless ENV["STRIPE_LOG"].nil?
