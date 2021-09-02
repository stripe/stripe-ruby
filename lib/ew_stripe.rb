# frozen_string_literal: true

# EwStripe Ruby bindings
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
require "ew_stripe/version"

# API operations
require "ew_stripe/api_operations/create"
require "ew_stripe/api_operations/delete"
require "ew_stripe/api_operations/list"
require "ew_stripe/api_operations/nested_resource"
require "ew_stripe/api_operations/request"
require "ew_stripe/api_operations/save"

# API resource support classes
require "ew_stripe/errors"
require "ew_stripe/object_types"
require "ew_stripe/util"
require "ew_stripe/connection_manager"
require "ew_stripe/multipart_encoder"
require "ew_stripe/stripe_client"
require "ew_stripe/stripe_object"
require "ew_stripe/stripe_response"
require "ew_stripe/list_object"
require "ew_stripe/error_object"
require "ew_stripe/api_resource"
require "ew_stripe/singleton_api_resource"
require "ew_stripe/webhook"
require "ew_stripe/stripe_configuration"

# Named API resources
require "ew_stripe/resources"

# OAuth
require "ew_stripe/oauth"

module EwStripe
  DEFAULT_CA_BUNDLE_PATH = __dir__ + "/data/ca-certificates.crt"

  # map to the same values as the standard library's logger
  LEVEL_DEBUG = Logger::DEBUG
  LEVEL_ERROR = Logger::ERROR
  LEVEL_INFO = Logger::INFO

  @app_info = nil

  @config = EwStripe::StripeConfiguration.setup

  class << self
    extend Forwardable

    attr_reader :config

    # User configurable options
    def_delegators :@config, :api_key, :api_key=
    def_delegators :@config, :api_version, :api_version=
    def_delegators :@config, :stripe_account, :stripe_account=
    def_delegators :@config, :api_base, :api_base=
    def_delegators :@config, :uploads_base, :uploads_base=
    def_delegators :@config, :connect_base, :connect_base=
    def_delegators :@config, :open_timeout, :open_timeout=
    def_delegators :@config, :read_timeout, :read_timeout=
    def_delegators :@config, :write_timeout, :write_timeout=
    def_delegators :@config, :proxy, :proxy=
    def_delegators :@config, :verify_ssl_certs, :verify_ssl_certs=
    def_delegators :@config, :ca_bundle_path, :ca_bundle_path=
    def_delegators :@config, :log_level, :log_level=
    def_delegators :@config, :logger, :logger=
    def_delegators :@config, :max_network_retries, :max_network_retries=
    def_delegators :@config, :enable_telemetry=, :enable_telemetry?
    def_delegators :@config, :client_id=, :client_id

    # Internal configurations
    def_delegators :@config, :max_network_retry_delay
    def_delegators :@config, :initial_network_retry_delay
    def_delegators :@config, :ca_store
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
  # communicating with EwStripe.
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

EwStripe.log_level = ENV["STRIPE_LOG"] unless ENV["STRIPE_LOG"].nil?
