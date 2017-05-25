# Stripe Ruby bindings
# API spec at https://stripe.com/docs/api
require 'cgi'
require 'openssl'
require 'rbconfig'
require 'set'
require 'socket'

require 'faraday'
require 'json'

# Version
require 'stripe/version'

# API operations
require 'stripe/api_operations/create'
require 'stripe/api_operations/save'
require 'stripe/api_operations/delete'
require 'stripe/api_operations/list'
require 'stripe/api_operations/request'

# API resource support classes
require 'stripe/errors'
require 'stripe/util'
require 'stripe/stripe_client'
require 'stripe/stripe_object'
require 'stripe/stripe_response'
require 'stripe/list_object'
require 'stripe/api_resource'
require 'stripe/singleton_api_resource'
require 'stripe/webhook'

# Named API resources
require 'stripe/account'
require 'stripe/alipay_account'
require 'stripe/apple_pay_domain'
require 'stripe/application_fee'
require 'stripe/application_fee_refund'
require 'stripe/balance'
require 'stripe/balance_transaction'
require 'stripe/bank_account'
require 'stripe/bitcoin_receiver'
require 'stripe/bitcoin_transaction'
require 'stripe/card'
require 'stripe/charge'
require 'stripe/country_spec'
require 'stripe/coupon'
require 'stripe/customer'
require 'stripe/dispute'
require 'stripe/event'
require 'stripe/file_upload'
require 'stripe/invoice'
require 'stripe/invoice_item'
require 'stripe/invoice_line_item'
require 'stripe/login_link'
require 'stripe/order'
require 'stripe/order_return'
require 'stripe/payout'
require 'stripe/plan'
require 'stripe/product'
require 'stripe/recipient'
require 'stripe/recipient_transfer'
require 'stripe/refund'
require 'stripe/reversal'
require 'stripe/sku'
require 'stripe/source'
require 'stripe/subscription'
require 'stripe/subscription_item'
require 'stripe/three_d_secure'
require 'stripe/token'
require 'stripe/transfer'

# OAuth
require 'stripe/oauth'

module Stripe
  DEFAULT_CA_BUNDLE_PATH = File.dirname(__FILE__) + '/data/ca-certificates.crt'

  @app_info = nil

  @api_base = 'https://api.stripe.com'
  @connect_base = 'https://connect.stripe.com'
  @uploads_base = 'https://uploads.stripe.com'

  @max_network_retries = 0
  @max_network_retry_delay = 2
  @initial_network_retry_delay = 0.5

  @ca_bundle_path = DEFAULT_CA_BUNDLE_PATH
  @ca_store = nil
  @verify_ssl_certs = true

  @open_timeout = 30
  @read_timeout = 80

  class << self
    attr_accessor :stripe_account, :api_key, :api_base, :verify_ssl_certs, :api_version, :client_id, :connect_base, :uploads_base,
                  :open_timeout, :read_timeout

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

  def self.max_network_retries
    @max_network_retries
  end

  def self.max_network_retries=(val)
    @max_network_retries = val.to_i
  end

  # Sets some basic information about the running application that's sent along
  # with API requests. Useful for plugin authors to identify their plugin when
  # communicating with Stripe.
  #
  # Takes a name and optional version and plugin URL.
  def self.set_app_info(name, version: nil, url: nil)
    @app_info = {
      name: name,
      url: url,
      version: version,
    }
  end

  private

  # DEPRECATED. Use `Util#encode_parameters` instead.
  def self.uri_encode(params)
    Util.encode_parameters(params)
  end
  class << self
    extend Gem::Deprecate
    deprecate :uri_encode, "Stripe::Util#encode_parameters", 2016, 01
  end
end
