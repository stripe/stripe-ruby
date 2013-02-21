# Stripe Ruby bindings
# API spec at https://stripe.com/docs/api
require 'cgi'
require 'set'
require 'rubygems'
require 'openssl'

gem 'rest-client', '~> 1.4'
require 'rest_client'
require 'multi_json'

# Version
require 'stripe/version'

# API operations
require 'stripe/api_operations/create'
require 'stripe/api_operations/update'
require 'stripe/api_operations/delete'
require 'stripe/api_operations/list'

# Resources
require 'stripe/util'
require 'stripe/json'
require 'stripe/stripe_object'
require 'stripe/api_resource'
require 'stripe/singleton_api_resource'
require 'stripe/list_object'
require 'stripe/account'
require 'stripe/customer'
require 'stripe/invoice'
require 'stripe/invoice_item'
require 'stripe/charge'
require 'stripe/plan'
require 'stripe/coupon'
require 'stripe/token'
require 'stripe/event'
require 'stripe/transfer'

# Errors
require 'stripe/errors/stripe_error'
require 'stripe/errors/api_error'
require 'stripe/errors/api_connection_error'
require 'stripe/errors/card_error'
require 'stripe/errors/invalid_request_error'
require 'stripe/errors/authentication_error'

module Stripe
  @api_base = 'https://api.stripe.com'

  @ssl_bundle_path  = File.dirname(__FILE__) + '/data/ca-certificates.crt'
  @verify_ssl_certs = true

  def api_url(url='')
    @api_base + url
  end

  attr_accessor :api_key, :api_base, :verify_ssl_certs, :api_version

  def request(method, url, api_key, params={}, headers={})
    unless api_key ||= @api_key
      raise AuthenticationError.new('No API key provided.' +
        'Set your API key using "Stripe.api_key = <API-KEY>". ' +
        'You can generate API keys from the Stripe web interface. ' +
        'See https://stripe.com/api for details, or email support@stripe.com ' +
        'if you have any questions.')
    end

    request_opts = { :verify_ssl => false }

    if ssl_preflight_passed?
      request_opts.update(:verify_ssl  => OpenSSL::SSL::VERIFY_PEER,
                          :ssl_ca_file => @ssl_bundle_path)
    end

    params = Util.objects_to_ids(params)
    url = api_url(url)

    case method.to_s.downcase.to_sym
    when :get, :head, :delete
      url += "?#{uri_encode params}" if params && params.any?
      payload = nil
    else
      payload = uri_encode(params)
    end

    request_opts.update(:headers => request_headers.update(headers),
                        :method => method, :open_timeout => 30,
                        :payload => payload, :url => url, :timeout => 80)

    begin
      response = execute_request(request_opts)
    rescue SocketError => e
      handle_restclient_error(e)
    rescue NoMethodError => e
      # Work around RestClient bug
      if e.message =~ /\WRequestFailed\W/
        e = APIConnectionError.new('Unexpected HTTP response code')
        handle_restclient_error(e)
      else
        raise
      end
    rescue RestClient::ExceptionWithResponse => e
      if rcode = e.http_code and rbody = e.http_body
        handle_api_error(rcode, rbody)
      else
        handle_restclient_error(e)
      end
    rescue RestClient::Exception, Errno::ECONNREFUSED => e
      handle_restclient_error(e)
    end

    parse(response)
  end

  private

  def ssl_preflight_passed?
    if not verify_ssl_certs and not @no_verify
      $stderr.puts "WARNING: Running without SSL cert verification. " +
        "Execute 'Stripe.verify_ssl_certs = true' to enable verification."

      @no_verify = true

    elsif not Util.file_readable(@ssl_bundle_path) and not @no_bundle
      $stderr.puts "WARNING: Running without SSL cert verification " +
        "because #{@ssl_bundle_path} isn't readable"

      @no_bundle = true
    end

    !(@no_verify || @no_nobundle)
  end

  def user_agent
    @uname ||= `uname -a 2>/dev/null`.strip if RUBY_PLATFORM =~ /linux|darwin/i
    lang_version = "#{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE})"

    {
      :bindings_version => Stripe::VERSION,
      :lang => 'ruby',
      :lang_version => lang_version,
      :platform => RUBY_PLATFORM,
      :publisher => 'stripe',
      :uname => @uname
    }

  end

  def uri_encode(params)
    Util.flatten_params(params).
      map { |k,v| "#{k}=#{Util.url_encode(v)}" }.join('&')
  end

  def request_headers
    headers = {
      :user_agent => "Stripe/v1 RubyBindings/#{Stripe::VERSION}",
      :authorization => "Bearer #{api_key}",
      :content_type => 'application/x-www-form-urlencoded'
    }

    headers[:stripe_version] = api_version if api_version

    begin
      headers.update(:x_stripe_client_user_agent => Stripe::JSON.dump(user_agent))
    rescue => e
      headers.update(:x_stripe_client_raw_user_agent => user_agent.inspect,
                     :error => "#{e} (#{e.class})")
    end
  end

  def execute_request(opts)
    RestClient::Request.execute(opts)
  end

  def parse(response)
    begin
      # Would use :symbolize_names => true, but apparently there is
      # some library out there that makes symbolize_names not work.
      response = Stripe::JSON.load(response.body)
    rescue MultiJson::DecodeError
      raise general_api_error(response.code, response.body)
    end

    [Util.symbolize_names(response), api_key]
  end

  def general_api_error(rcode, rbody)
    APIError.new("Invalid response object from API: #{rbody.inspect} " +
                 "(HTTP response code was #{rcode})", rcode, rbody)
  end

  def handle_api_error(rcode, rbody)
    begin
      error_obj = Stripe::JSON.load(rbody)
      error_obj = Util.symbolize_names(error_obj)
      error = error_obj[:error] or raise StripeError.new # escape from parsing

    rescue MultiJson::DecodeError, StripeError
      raise general_api_error(rcode, rbody)
    end

    exception = case rcode
    when 400, 404
      invalid_request_error error, rcode, rbody, error_obj
    when 401
      authentication_error error, rcode, rbody, error_obj
    when 402
      card_error error, rcode, rbody, error_obj
    else
      api_error error, rcode, rbody, error_obj
    end

    raise exception
  end

  def invalid_request_error(error, rcode, rbody, error_obj)
    InvalidRequestError.new(error[:message], error[:param], rcode,
                            rbody, error_obj)
  end

  def authentication_error(error, rcode, rbody, error_obj)
    AuthenticationError.new(error[:message], rcode, rbody, error_obj)
  end

  def card_error(error, rcode, rbody, error_obj)
    CardError.new(error[:message], error[:param], error[:code],
                  rcode, rbody, error_obj)
  end

  def api_error(error, rcode, rbody, error_obj)
    APIError.new(error[:message], rcode, rbody, error_obj)
  end

  def handle_restclient_error(e)
    message = case e
    when RestClient::ServerBrokeConnection, RestClient::RequestTimeout
      "Could not connect to Stripe (#{@api_base}). " +
      "Please check your internet connection and try again. " +
      "If this problem persists, you should check Stripe's service status at " +
      "https://twitter.com/stripestatus, or let us know at support@stripe.com."

    when RestClient::SSLCertificateNotVerified
      "Could not verify Stripe's SSL certificate. " +
      "Please make sure that your network is not intercepting certificates. " +
      "(Try going to https://api.stripe.com/v1 in your browser.) " +
      "If this problem persists, let us know at support@stripe.com."

    when SocketError
      "Unexpected error communicating when trying to connect to Stripe. " +
      "You may be seeing this message because your DNS is not working. " +
      "To check, try running 'host stripe.com' from the command line."

    else
      "Unexpected error communicating with Stripe. " +
      "If this problem persists, let us know at support@stripe.com."

    end

    raise APIConnectionError.new(message + "\n\n(Network error: #{e.message})")
  end

  extend self
end
