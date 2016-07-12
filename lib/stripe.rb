# Stripe Ruby bindings
# API spec at https://stripe.com/docs/api
require 'cgi'
require 'openssl'
require 'rbconfig'
require 'set'
require 'socket'

require 'rest-client'
require 'json'

# Version
require 'stripe/version'

# API operations
require 'stripe/api_operations/create'
require 'stripe/api_operations/save'
require 'stripe/api_operations/delete'
require 'stripe/api_operations/list'
require 'stripe/api_operations/request'

# Resources
require 'stripe/util'
require 'stripe/stripe_object'
require 'stripe/api_resource'
require 'stripe/singleton_api_resource'
require 'stripe/list_object'
require 'stripe/account'
require 'stripe/balance'
require 'stripe/balance_transaction'
require 'stripe/customer'
require 'stripe/invoice'
require 'stripe/invoice_item'
require 'stripe/charge'
require 'stripe/country_spec'
require 'stripe/plan'
require 'stripe/file_upload'
require 'stripe/coupon'
require 'stripe/token'
require 'stripe/event'
require 'stripe/transfer'
require 'stripe/recipient'
require 'stripe/bank_account'
require 'stripe/card'
require 'stripe/subscription'
require 'stripe/application_fee'
require 'stripe/refund'
require 'stripe/reversal'
require 'stripe/application_fee_refund'
require 'stripe/bitcoin_receiver'
require 'stripe/bitcoin_transaction'
require 'stripe/dispute'
require 'stripe/product'
require 'stripe/sku'
require 'stripe/order'
require 'stripe/order_return'
require 'stripe/alipay_account'
require 'stripe/three_d_secure'

# Errors
require 'stripe/errors/stripe_error'
require 'stripe/errors/api_error'
require 'stripe/errors/api_connection_error'
require 'stripe/errors/card_error'
require 'stripe/errors/invalid_request_error'
require 'stripe/errors/authentication_error'
require 'stripe/errors/rate_limit_error'

module Stripe
  DEFAULT_CA_BUNDLE_PATH = File.dirname(__FILE__) + '/data/ca-certificates.crt'

  # HTTP status exceptions which we'd like to retry. Most HTTP status
  # exceptions are from a Stripe API server response, so we generally _don't_
  # retry because doing so would have the same result as the original request.
  RETRY_HTTP_EXCEPTIONS = [
    # A server may respond with a 409 to indicate that there is a concurrent
    # request executing with the same idempotency key. In the case that a
    # request failed due to a connection problem and the client has retried too
    # early, but the server is still executing the old request, we would like
    # the client to continue retrying until getting a "real" response status
    # back.
    RestClient::Conflict,

    # Retry on timeout-related problems. This shouldn't be lumped in with HTTP
    # exceptions, but with RestClient it is.
    RestClient::RequestTimeout,
  ].freeze

  @api_base = 'https://api.stripe.com'
  @connect_base = 'https://connect.stripe.com'
  @uploads_base = 'https://uploads.stripe.com'

  @max_network_retries = 0
  @max_network_retry_delay = 2
  @initial_network_retry_delay = 0.5

  @ca_bundle_path  = DEFAULT_CA_BUNDLE_PATH
  @ca_store = nil
  @verify_ssl_certs = true

  @open_timeout = 30
  @read_timeout = 80

  class << self
    attr_accessor :stripe_account, :api_key, :api_base, :verify_ssl_certs, :api_version, :connect_base, :uploads_base,
                  :open_timeout, :read_timeout

    attr_reader :max_network_retry_delay, :initial_network_retry_delay
  end

  def self.api_url(url='', api_base_url=nil)
    (api_base_url || @api_base) + url
  end

  def self.request(method, url, api_key, params={}, headers={}, api_base_url=nil)
    api_base_url = api_base_url || @api_base

    unless api_key ||= @api_key
      raise AuthenticationError.new('No API key provided. ' \
        'Set your API key using "Stripe.api_key = <API-KEY>". ' \
        'You can generate API keys from the Stripe web interface. ' \
        'See https://stripe.com/api for details, or email support@stripe.com ' \
        'if you have any questions.')
    end

    if api_key =~ /\s/
      raise AuthenticationError.new('Your API key is invalid, as it contains ' \
        'whitespace. (HINT: You can double-check your API key from the ' \
        'Stripe web interface. See https://stripe.com/api for details, or ' \
        'email support@stripe.com if you have any questions.)')
    end

    if verify_ssl_certs
      request_opts = {:verify_ssl => OpenSSL::SSL::VERIFY_PEER,
                      :ssl_cert_store => ca_store}
    else
      request_opts = {:verify_ssl => false}
      unless @verify_ssl_warned
        @verify_ssl_warned = true
        $stderr.puts("WARNING: Running without SSL cert verification. " \
          "You should never do this in production. " \
          "Execute 'Stripe.verify_ssl_certs = true' to enable verification.")
      end
    end

    params = Util.objects_to_ids(params)
    url = api_url(url, api_base_url)

    case method.to_s.downcase.to_sym
    when :get, :head, :delete
      # Make params into GET parameters
      url += "#{URI.parse(url).query ? '&' : '?'}#{Util.encode_parameters(params)}" if params && params.any?
      payload = nil
    else
      if headers[:content_type] && headers[:content_type] == "multipart/form-data"
        payload = params
      else
        payload = Util.encode_parameters(params)
      end
    end

    request_opts.update(:headers => request_headers(api_key, method).update(headers),
                        :method => method, :open_timeout => open_timeout,
                        :payload => payload, :url => url, :timeout => read_timeout)

    response = execute_request_with_rescues(request_opts, api_base_url)

    [parse(response), api_key]
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

  private

  def self.execute_request_with_rescues(request_opts, api_base_url, retry_count = 0)
    begin
      response = execute_request(request_opts)

    # We rescue all exceptions from a request so that we have an easy spot to
    # implement our retry logic across the board. We'll re-raise if it's a type
    # of exception that we didn't expect to handle.
    rescue => e
      if should_retry?(e, retry_count)
        retry_count = retry_count + 1
        sleep sleep_time(retry_count)
        retry
      end

      case e
      when SocketError
        response = handle_restclient_error(e, request_opts, retry_count, api_base_url)

      when RestClient::ExceptionWithResponse
        if e.response
          handle_api_error(e.response)
        else
          response = handle_restclient_error(e, request_opts, retry_count, api_base_url)
        end

      when RestClient::Exception, Errno::ECONNREFUSED, OpenSSL::SSL::SSLError
        response = handle_restclient_error(e, request_opts, retry_count, api_base_url)

      # Only handle errors when we know we can do so, and re-raise otherwise.
      # This should be pretty infrequent.
      else
        raise
      end
    end

    response
  end

  def self.user_agent
    @uname ||= get_uname
    lang_version = "#{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE})"

    {
      :bindings_version => Stripe::VERSION,
      :lang => 'ruby',
      :lang_version => lang_version,
      :platform => RUBY_PLATFORM,
      :engine => defined?(RUBY_ENGINE) ? RUBY_ENGINE : '',
      :publisher => 'stripe',
      :uname => @uname,
      :hostname => Socket.gethostname,
    }

  end

  def self.get_uname
    if File.exist?('/proc/version')
      File.read('/proc/version').strip
    else
      case RbConfig::CONFIG['host_os']
      when /linux|darwin|bsd|sunos|solaris|cygwin/i
        _uname_uname
      when /mswin|mingw/i
        _uname_ver
      else
        "unknown platform"
      end
    end
  end

  def self._uname_uname
    (`uname -a 2>/dev/null` || '').strip
  rescue Errno::ENOMEM # couldn't create subprocess
    "uname lookup failed"
  end

  def self._uname_ver
    (`ver` || '').strip
  rescue Errno::ENOMEM # couldn't create subprocess
    "uname lookup failed"
  end

  # DEPRECATED. Use `Util#encode_parameters` instead.
  def self.uri_encode(params)
    Util.encode_parameters(params)
  end
  class << self
    extend Gem::Deprecate
    deprecate :uri_encode, "Stripe::Util#encode_parameters", 2016, 01
  end

  def self.request_headers(api_key, method)
    headers = {
      :user_agent => "Stripe/v1 RubyBindings/#{Stripe::VERSION}",
      :authorization => "Bearer #{api_key}",
      :content_type => 'application/x-www-form-urlencoded'
    }

    # It is only safe to retry network failures on post and delete
    # requests if we add an Idempotency-Key header
    if [:post, :delete].include?(method) && self.max_network_retries > 0
      headers[:idempotency_key] ||= SecureRandom.uuid
    end

    headers[:stripe_version] = api_version if api_version
    headers[:stripe_account] = stripe_account if stripe_account

    begin
      headers.update(:x_stripe_client_user_agent => JSON.generate(user_agent))
    rescue => e
      headers.update(:x_stripe_client_raw_user_agent => user_agent.inspect,
                     :error => "#{e} (#{e.class})")
    end
  end

  def self.execute_request(opts)
    RestClient::Request.execute(opts)
  end

  def self.parse(response)
    begin
      # Would use :symbolize_names => true, but apparently there is
      # some library out there that makes symbolize_names not work.
      response = JSON.parse(response.body)
    rescue JSON::ParserError
      raise general_api_error(response.code, response.body)
    end

    Util.symbolize_names(response)
  end

  def self.general_api_error(rcode, rbody)
    APIError.new("Invalid response object from API: #{rbody.inspect} " +
                 "(HTTP response code was #{rcode})", rcode, rbody)
  end

  def self.handle_api_error(resp)
    begin
      error_obj = JSON.parse(resp.body)
      error_obj = Util.symbolize_names(error_obj)
      error = error_obj[:error]
      raise StripeError.new unless error && error.is_a?(Hash)

    rescue JSON::ParserError, StripeError
      raise general_api_error(resp.code, resp.body)
    end

    case resp.code
    when 400, 404
      raise invalid_request_error(error, resp, error_obj)
    when 401
      raise authentication_error(error, resp, error_obj)
    when 402
      raise card_error(error, resp, error_obj)
    when 429
      raise rate_limit_error(error, resp, error_obj)
    else
      raise api_error(error, resp, error_obj)
    end

  end

  def self.invalid_request_error(error, resp, error_obj)
    InvalidRequestError.new(error[:message], error[:param], resp.code,
                            resp.body, error_obj, resp.headers)
  end

  def self.authentication_error(error, resp, error_obj)
    AuthenticationError.new(error[:message], resp.code, resp.body, error_obj,
                            resp.headers)
  end

  def self.rate_limit_error(error, resp, error_obj)
    RateLimitError.new(error[:message], resp.code, resp.body, error_obj,
                       resp.headers)
  end

  def self.card_error(error, resp, error_obj)
    CardError.new(error[:message], error[:param], error[:code],
                  resp.code, resp.body, error_obj, resp.headers)
  end

  def self.api_error(error, resp, error_obj)
    APIError.new(error[:message], resp.code, resp.body, error_obj, resp.headers)
  end

  def self.handle_restclient_error(e, request_opts, retry_count, api_base_url=nil)

    api_base_url = @api_base unless api_base_url
    connection_message = "Please check your internet connection and try again. " \
        "If this problem persists, you should check Stripe's service status at " \
        "https://twitter.com/stripestatus, or let us know at support@stripe.com."

    case e
    when RestClient::RequestTimeout
      message = "Could not connect to Stripe (#{api_base_url}). #{connection_message}"

    when RestClient::ServerBrokeConnection
      message = "The connection to the server (#{api_base_url}) broke before the " \
        "request completed. #{connection_message}"

    when OpenSSL::SSL::SSLError
      message = "Could not establish a secure connection to Stripe, you may " \
                "need to upgrade your OpenSSL version. To check, try running " \
                "'openssl s_client -connect api.stripe.com:443' from the " \
                "command line."

    when RestClient::SSLCertificateNotVerified
      message = "Could not verify Stripe's SSL certificate. " \
        "Please make sure that your network is not intercepting certificates. " \
        "(Try going to https://api.stripe.com/v1 in your browser.) " \
        "If this problem persists, let us know at support@stripe.com."

    when SocketError
      message = "Unexpected error communicating when trying to connect to Stripe. " \
        "You may be seeing this message because your DNS is not working. " \
        "To check, try running 'host stripe.com' from the command line."

    else
      message = "Unexpected error communicating with Stripe. " \
        "If this problem persists, let us know at support@stripe.com."

    end

    if retry_count > 0
      message += " Request was retried #{retry_count} times."
    end

    raise APIConnectionError.new(message + "\n\n(Network error: #{e.message})")
  end

  def self.should_retry?(e, retry_count)
    return false if retry_count >= self.max_network_retries

    # Certificate validation problem: do not retry.
    return false if e.is_a?(RestClient::SSLCertificateNotVerified)

    # Generally don't retry when we got a successful response back from the
    # Stripe API server, but with some exceptions (for more details, see notes
    # on RETRY_HTTP_EXCEPTIONS).
    return false if e.is_a?(RestClient::ExceptionWithResponse) &&
      !RETRY_HTTP_EXCEPTIONS.any? { |klass| e.is_a?(klass) }

    return true
  end

  def self.sleep_time(retry_count)
    # Apply exponential backoff with initial_network_retry_delay on the number
    # of attempts so far as inputs. Do not allow the number to exceed
    # max_network_retry_delay.
    sleep_seconds = [initial_network_retry_delay * (2 ** (retry_count - 1)), max_network_retry_delay].min

    # Apply some jitter by randomizing the value in the range of (sleep_seconds
    # / 2) to (sleep_seconds).
    sleep_seconds = sleep_seconds * (0.5 * (1 + rand()))

    # But never sleep less than the base sleep seconds.
    sleep_seconds = [initial_network_retry_delay, sleep_seconds].max

    sleep_seconds
  end
end
