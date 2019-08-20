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

# Named API resources
require "stripe/resources"

# OAuth
require "stripe/oauth"

module Stripe
  DEFAULT_CA_BUNDLE_PATH = __dir__ + "/data/ca-certificates.crt"

  @app_info = nil

  @api_base = "https://api.stripe.com"
  @connect_base = "https://connect.stripe.com"
  @uploads_base = "https://files.stripe.com"

  @log_level = nil
  @logger = nil

  @proxy = nil

  @max_network_retries = 0
  @max_network_retry_delay = 2
  @initial_network_retry_delay = 0.5

  @ca_bundle_path = DEFAULT_CA_BUNDLE_PATH
  @ca_store = nil
  @verify_ssl_certs = true

  @open_timeout = 30
  @read_timeout = 80

  @enable_telemetry = true

  class << self
    attr_accessor :api_key
    attr_accessor :api_version
    attr_accessor :client_id
    attr_accessor :stripe_account

    # These all get manual attribute writers so that we can reset connections
    # if they change.
    attr_reader :api_base
    attr_reader :connect_base
    attr_reader :open_timeout
    attr_reader :proxy
    attr_reader :read_timeout
    attr_reader :uploads_base
    attr_reader :verify_ssl_certs

    attr_reader :max_network_retry_delay, :initial_network_retry_delay
  end

  # Gets the application for a plugin that's identified some. See
  # #set_app_info.
  def self.app_info
    @app_info
  end

  def self.app_info=(info)
    @app_info = info
  end

  def self.api_base=(api_base)
    @api_base = api_base
    StripeClient.clear_all_connection_managers
  end

  # The location of a file containing a bundle of CA certificates. By default
  # the library will use an included bundle that can successfully validate
  # Stripe certificates.
  def self.ca_bundle_path
    @ca_bundle_path
  end

  def self.ca_bundle_path=(path)
    @ca_bundle_path = path

    # empty this field so a new store is initialized
    @ca_store = nil

    StripeClient.clear_all_connection_managers
  end

  # A certificate store initialized from the the bundle in #ca_bundle_path and
  # which is used to validate TLS on every request.
  #
  # This was added to the give the gem "pseudo thread safety" in that it seems
  # when initiating many parallel requests marshaling the certificate store is
  # the most likely point of failure (see issue #382). Any program attempting
  # to leverage this pseudo safety should make a call to this method (i.e.
  # `Stripe.ca_store`) in their initialization code because it marshals lazily
  # and is itself not thread safe.
  def self.ca_store
    @ca_store ||= begin
      store = OpenSSL::X509::Store.new
      store.add_file(ca_bundle_path)
      store
    end
  end

  def self.connection_base=(connection_base)
    @connection_base = connection_base
    StripeClient.clear_all_connection_managers
  end

  def self.enable_telemetry?
    @enable_telemetry
  end

  def self.enable_telemetry=(val)
    @enable_telemetry = val
  end

  # map to the same values as the standard library's logger
  LEVEL_DEBUG = Logger::DEBUG
  LEVEL_ERROR = Logger::ERROR
  LEVEL_INFO = Logger::INFO

  # When set prompts the library to log some extra information to $stdout and
  # $stderr about what it's doing. For example, it'll produce information about
  # requests, responses, and errors that are received. Valid log levels are
  # `debug` and `info`, with `debug` being a little more verbose in places.
  #
  # Use of this configuration is only useful when `.logger` is _not_ set. When
  # it is, the decision what levels to print is entirely deferred to the logger.
  def self.log_level
    @log_level
  end

  def self.log_level=(val)
    # Backwards compatibility for values that we briefly allowed
    if val == "debug"
      val = LEVEL_DEBUG
    elsif val == "info"
      val = LEVEL_INFO
    end

    if !val.nil? && ![LEVEL_DEBUG, LEVEL_ERROR, LEVEL_INFO].include?(val)
      raise ArgumentError,
            "log_level should only be set to `nil`, `debug` or `info`"
    end
    @log_level = val
  end

  # Sets a logger to which logging output will be sent. The logger should
  # support the same interface as the `Logger` class that's part of Ruby's
  # standard library (hint, anything in `Rails.logger` will likely be
  # suitable).
  #
  # If `.logger` is set, the value of `.log_level` is ignored. The decision on
  # what levels to print is entirely deferred to the logger.
  def self.logger
    @logger
  end

  def self.logger=(val)
    @logger = val
  end

  def self.max_network_retries
    @max_network_retries
  end

  def self.max_network_retries=(val)
    @max_network_retries = val.to_i
  end

  def self.open_timeout=(open_timeout)
    @open_timeout = open_timeout
    StripeClient.clear_all_connection_managers
  end

  def self.proxy=(proxy)
    @proxy = proxy
    StripeClient.clear_all_connection_managers
  end

  def self.read_timeout=(read_timeout)
    @read_timeout = read_timeout
    StripeClient.clear_all_connection_managers
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

  def self.uploads_base=(uploads_base)
    @uploads_base = uploads_base
    StripeClient.clear_all_connection_managers
  end

  def self.verify_ssl_certs=(verify_ssl_certs)
    @verify_ssl_certs = verify_ssl_certs
    StripeClient.clear_all_connection_managers
  end
end

Stripe.log_level = ENV["STRIPE_LOG"] unless ENV["STRIPE_LOG"].nil?
