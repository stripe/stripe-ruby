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
require 'stripe/order'
require 'stripe/order_return'
require 'stripe/plan'
require 'stripe/product'
require 'stripe/recipient'
require 'stripe/refund'
require 'stripe/reversal'
require 'stripe/sku'
require 'stripe/source'
require 'stripe/subscription'
require 'stripe/subscription_item'
require 'stripe/three_d_secure'
require 'stripe/token'
require 'stripe/transfer'

module Stripe
  DEFAULT_CA_BUNDLE_PATH = File.dirname(__FILE__) + '/data/ca-certificates.crt'

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

  # A default Faraday connection to be used when one isn't configured. This
  # object should never be mutated, and instead instantiating your own
  # connection and wrapping it in a StripeClient object should be preferred.
  def self.default_conn
    @default_conn ||= Faraday.new do |conn|
      conn.use Faraday::Request::UrlEncoded
      conn.use Faraday::Response::RaiseError
      conn.adapter Faraday.default_adapter
    end
  end

  # TODO: Fix parameters.
  def self.request(conn, method, url, api_key, params, headers, api_base_url)
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

    if verify_ssl_certs
      conn.ssl.verify = true
      conn.ssl.cert_store = ca_store
    else
      conn.ssl.verify = false

      unless @verify_ssl_warned
        @verify_ssl_warned = true
        $stderr.puts("WARNING: Running without SSL cert verification. " \
          "You should never do this in production. " \
          "Execute 'Stripe.verify_ssl_certs = true' to enable verification.")
      end
    end

    http_resp = execute_request_with_rescues(api_base_url, 0) do
      conn.run_request(
        method,
        url,
        payload,
        # TODO: Convert RestClient-style parameters.
        request_headers(api_key, method).update(headers)
      ) do |req|
        req.options.open_timeout = open_timeout
        req.options.timeout = read_timeout
      end
    end

    begin
      resp = StripeResponse.from_faraday_response(http_resp)
    rescue JSON::ParserError
      raise general_api_error(http_resp.code, http_resp.body)
    end

    # Allows StripeClient#request to return a response object to a caller.
    StripeClient.set_last_response(resp)

    [resp, api_key]
  end

  def self.max_network_retries
    @max_network_retries
  end

  def self.max_network_retries=(val)
    @max_network_retries = val.to_i
  end

  private

  def self.execute_request_with_rescues(api_base_url, retry_count, &block)
    begin
      resp = block.call

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
      when Faraday::ClientError
        if e.response
          handle_api_error(e.response)
        else
          handle_network_error(e, retry_count, api_base_url)
        end

      # Only handle errors when we know we can do so, and re-raise otherwise.
      # This should be pretty infrequent.
      else
        raise
      end
    end

    resp
  end

  def self.general_api_error(status, body)
    APIError.new("Invalid response object from API: #{body.inspect} " +
                 "(HTTP response code was #{status})", status, body)
  end

  def self.get_uname
    if File.exist?('/proc/version')
      File.read('/proc/version').strip
    else
      case RbConfig::CONFIG['host_os']
      when /linux|darwin|bsd|sunos|solaris|cygwin/i
        get_uname_from_system
      when /mswin|mingw/i
        get_uname_from_system_ver
      else
        "unknown platform"
      end
    end
  end

  def self.get_uname_from_system
    (`uname -a 2>/dev/null` || '').strip
  rescue Errno::ENOENT
    "uname executable not found"
  rescue Errno::ENOMEM # couldn't create subprocess
    "uname lookup failed"
  end

  def self.get_uname_from_system_ver
    (`ver` || '').strip
  rescue Errno::ENOENT
    "ver executable not found"
  rescue Errno::ENOMEM # couldn't create subprocess
    "uname lookup failed"
  end

  def self.handle_api_error(http_resp)
    begin
      resp = StripeResponse.from_faraday_hash(http_resp)
      error = resp.data[:error]
      raise StripeError.new unless error && error.is_a?(Hash)

    rescue JSON::ParserError, StripeError
      raise general_api_error(http_resp[:status], http_resp[:body])
    end

    case resp.http_status
    when 400, 404
      error = InvalidRequestError.new(
        error[:message], error[:param],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    when 401
      error = AuthenticationError.new(
        error[:message],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    when 402
      error = CardError.new(
        error[:message], error[:param], error[:code],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    when 403
      error = PermissionError.new(
        error[:message],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    when 429
      error = RateLimitError.new(
        error[:message],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    else
      error = APIError.new(
        error[:message],
        resp.http_status, resp.http_body, resp.data, resp.http_headers)
    end

    error.response = resp
    raise(error)
  end

  def self.handle_network_error(e, retry_count, api_base_url=nil)
    case e
    when Faraday::ConnectionFailed
      message = "Unexpected error communicating when trying to connect to Stripe. " \
        "You may be seeing this message because your DNS is not working. " \
        "To check, try running 'host stripe.com' from the command line."

    when Faraday::SSLError
      message = "Could not establish a secure connection to Stripe, you may " \
                "need to upgrade your OpenSSL version. To check, try running " \
                "'openssl s_client -connect api.stripe.com:443' from the " \
                "command line."

    when Faraday::TimeoutError
      api_base_url = @api_base unless api_base_url
      message = "Could not connect to Stripe (#{api_base_url}). " \
        "Please check your internet connection and try again. " \
        "If this problem persists, you should check Stripe's service status at " \
        "https://twitter.com/stripestatus, or let us know at support@stripe.com."

    else
      message = "Unexpected error communicating with Stripe. " \
        "If this problem persists, let us know at support@stripe.com."

    end

    if retry_count > 0
      message += " Request was retried #{retry_count} times."
    end

    raise APIConnectionError.new(message + "\n\n(Network error: #{e.message})")
  end

  def self.request_headers(api_key, method)
    headers = {
      'User-Agent' => "Stripe/v1 RubyBindings/#{Stripe::VERSION}",
      'Authorization' => "Bearer #{api_key}",
      'Content-Type' => 'application/x-www-form-urlencoded'
    }

    # It is only safe to retry network failures on post and delete
    # requests if we add an Idempotency-Key header
    if [:post, :delete].include?(method) && self.max_network_retries > 0
      headers['Idempotency-Key'] ||= SecureRandom.uuid
    end

    headers['Stripe-Version'] = api_version if api_version
    headers['Stripe-Account'] = stripe_account if stripe_account

    begin
      headers.update('X-Stripe-Client-User-Agent' => JSON.generate(user_agent))
    rescue => e
      headers.update('X-Stripe-Client-Raw-User-Agent' => user_agent.inspect,
                     :error => "#{e} (#{e.class})")
    end
  end

  # Checks if an error is a problem that we should retry on. This includes both
  # socket errors that may represent an intermittent problem and some special
  # HTTP statuses.
  def self.should_retry?(e, retry_count)
    return false if retry_count >= self.max_network_retries

    # Retry on timeout-related problems (either on open or read).
    return true if e.is_a?(Faraday::TimeoutError)

    # Destination refused the connection, the connection was reset, or a
    # variety of other connection failures. This could occur from a single
    # saturated server, so retry in case it's intermittent.
    return true if e.is_a?(Faraday::ConnectionFailed)

    if e.is_a?(Faraday::ClientError) && e.response
      # 409 conflict
      return true if e.response[:status] == 409
    end

    false
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

  # DEPRECATED. Use `Util#encode_parameters` instead.
  def self.uri_encode(params)
    Util.encode_parameters(params)
  end
  class << self
    extend Gem::Deprecate
    deprecate :uri_encode, "Stripe::Util#encode_parameters", 2016, 01
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
end
