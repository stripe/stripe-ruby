# Stripe Ruby bindings
# API spec at http://stripe.com/api/spec
require 'cgi'
require 'set'

require 'rubygems'
require 'openssl'

gem 'rest-client', '~> 1.4'
require 'rest_client'

begin
  require 'json'
rescue LoadError
  raise if defined?(JSON)
  require File.join(File.dirname(__FILE__), '../vendor/stripe-json/lib/json/pure')

  # moderately ugly hack to deal with the clobbering that
  # ActiveSupport's JSON subjects us to
  class JSON::Pure::Generator::State
    attr_reader :encoder, :only, :except
  end
end

require File.join(File.dirname(__FILE__), 'stripe/version')

module Stripe
  @@ssl_bundle_path = File.join(File.dirname(__FILE__), 'data/ca-certificates.crt')
  @@api_key = nil
  @@api_base = 'https://api.stripe.com/v1'
  @@verify_ssl_certs = true

  module Util
    def self.objects_to_ids(h)
      case h
      when APIResource
        h.id
      when Hash
        res = {}
        h.each { |k, v| res[k] = objects_to_ids(v) unless v.nil? }
        res
      when Array
        h.map { |v| objects_to_ids(v) }
      else
        h
      end
    end

    def self.convert_to_stripe_object(resp, api_key)
      types = {
        'charge' => Charge,
        'customer' => Customer,
        'invoiceitem' => InvoiceItem,
        'invoice' => Invoice,
        'plan' => Plan,
        'coupon' => Coupon,
        'event' => Event
      }
      case resp
      when Array
        resp.map { |i| convert_to_stripe_object(i, api_key) }
      when Hash
        # Try converting to a known object class.  If none available, fall back to generic APIResource
        if klass_name = resp[:object]
          klass = types[klass_name]
        end
        klass ||= StripeObject
        klass.construct_from(resp, api_key)
      else
        resp
      end
    end

    def self.file_readable(file)
      begin
        File.open(file) { |f| }
      rescue
        false
      else
        true
      end
    end

    def self.symbolize_names(object)
      case object
      when Hash
        new = {}
        object.each do |key, value|
          key = (key.to_sym rescue key) || key
          new[key] = symbolize_names(value)
        end
        new
      when Array
        object.map { |value| symbolize_names(value) }
      else
        object
      end
    end

    def self.encode_key(key)
      URI.escape(key.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    end

    def self.flatten_params(params, parent_key = nil)
      result = []
      params.each do |key, value|
        calculated_key = parent_key ? "#{parent_key}[#{encode_key(key)}]" : encode_key(key)
        if value.is_a? Hash
          result += flatten_params(value, calculated_key)
        elsif value.is_a? Array
          result += flatten_params_array(value, calculated_key)
        else
          result << [calculated_key, value]
        end
      end
      result
    end

    def self.flatten_params_array value, calculated_key
      result = []
      value.each do |elem|
        if elem.is_a? Hash
          result += flatten_params(elem, calculated_key)
        elsif elem.is_a? Array
          result += flatten_params_array(elem, calculated_key)
        else
          result << ["#{calculated_key}[]", elem]
        end
      end
      result
    end
  end

  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, api_key=nil)
          response, api_key = Stripe.request(:post, self.url, api_key, params)
          Util.convert_to_stripe_object(response, api_key)
        end
      end
      def self.included(base)
        base.extend(ClassMethods)
      end
    end

    module Update
      def save
        if @unsaved_values.length > 0
          values = {}
          @unsaved_values.each { |k| values[k] = @values[k] }
          response, api_key = Stripe.request(:post, url, @api_key, values)
          refresh_from(response, api_key)
        end
        self
      end
    end

    module Delete
      def delete
        response, api_key = Stripe.request(:delete, url, @api_key)
        refresh_from(response, api_key)
        self
      end
    end

    module List
      module ClassMethods
        def all(filters={}, api_key=nil)
          response, api_key = Stripe.request(:get, url, api_key, filters)
          Util.convert_to_stripe_object(response, api_key)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end

  class StripeObject
    include Enumerable

    attr_accessor :api_key
    @@permanent_attributes = Set.new([:api_key])

    # The default :id method is deprecated and isn't useful to us
    if method_defined?(:id)
      undef :id
    end

    def initialize(id=nil, api_key=nil)
      @api_key = api_key
      @values = {}
      # This really belongs in APIResource, but not putting it there allows us
      # to have a unified inspect method
      @unsaved_values = Set.new
      @transient_values = Set.new
      self.id = id if id
    end

    def self.construct_from(values, api_key=nil)
      obj = self.new(values[:id], api_key)
      obj.refresh_from(values, api_key)
      obj
    end

    def to_s(*args); JSON.pretty_generate(@values); end

    def inspect()
      id_string = (self.respond_to?(:id) && !self.id.nil?) ? " id=#{self.id}" : ""
      "#<#{self.class}:0x#{self.object_id.to_s(16)}#{id_string}> JSON: " + JSON.pretty_generate(@values)
    end

    def refresh_from(values, api_key, partial=false)
      @api_key = api_key

      removed = partial ? Set.new : Set.new(@values.keys - values.keys)
      added = Set.new(values.keys - @values.keys)
      # Wipe old state before setting new.  This is useful for e.g. updating a
      # customer, where there is no persistent card parameter.  Mark those values
      # which don't persist as transient

      instance_eval do
        remove_accessors(removed)
        add_accessors(added)
      end
      removed.each do |k|
        @values.delete(k)
        @transient_values.add(k)
        @unsaved_values.delete(k)
      end
      values.each do |k, v|
        @values[k] = Util.convert_to_stripe_object(v, api_key)
        @transient_values.delete(k)
        @unsaved_values.delete(k)
      end
    end

    def [](k)
      k = k.to_sym if k.kind_of?(String)
      @values[k]
    end
    def []=(k, v)
      send(:"#{k}=", v)
    end
    def keys; @values.keys; end
    def values; @values.values; end
    def to_json(*a); @values.to_json(*a); end
    def as_json(*a); @values.as_json(*a); end
    def to_hash; @values; end
    def each(&blk); @values.each(&blk); end

    protected

    def metaclass
      class << self; self; end
    end

    def remove_accessors(keys)
      metaclass.instance_eval do
        keys.each do |k|
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          remove_method(k) if method_defined?(k)
          remove_method(k_eq) if method_defined?(k_eq)
        end
      end
    end

    def add_accessors(keys)
      metaclass.instance_eval do
        keys.each do |k|
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          define_method(k) { @values[k] }
          define_method(k_eq) do |v|
            @values[k] = v
            @unsaved_values.add(k)
          end
        end
      end
    end

    def method_missing(name, *args)
      # TODO: only allow setting in updateable classes.
      if name.to_s.end_with?('=')
        attr = name.to_s[0...-1].to_sym
        @values[attr] = args[0]
        @unsaved_values.add(attr)
        add_accessors([attr])
        return
      else
        return @values[name] if @values.has_key?(name)
      end

      begin
        super
      rescue NoMethodError => e
        if @transient_values.include?(name)
          raise NoMethodError.new(e.message + ".  HINT: The '#{name}' attribute was set in the past, however.  It was then wiped when refreshing the object with the result returned by Stripe's API, probably as a result of a save().  The attributes currently available on this object are: #{@values.keys.join(', ')}")
        else
          raise
        end
      end
    end
  end

  class APIResource < StripeObject
    def self.url
      if self == APIResource
        raise NotImplementedError.new("APIResource is an abstract class.  You should perform actions on its subclasses (Charge, Customer, etc.)")
      end
      shortname = self.name.split('::')[-1]
      "/#{CGI.escape(shortname.downcase)}s"
    end
    def url
      id = self['id']
      raise InvalidRequestError.new("Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}", 'id') unless id
      "#{self.class.url}/#{CGI.escape(id)}"
    end

    def refresh
      response, api_key = Stripe.request(:get, url, @api_key)
      refresh_from(response, api_key)
      self
    end

    def self.retrieve(id, api_key=nil)
      instance = self.new(id, api_key)
      instance.refresh
      instance
    end

    protected
  end

  class Customer < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def add_invoice_item(params)
      InvoiceItem.create(params.merge(:customer => id), @api_key)
    end

    def invoices
      Invoice.all({ :customer => id }, @api_key)
    end

    def invoice_items
      InvoiceItem.all({ :customer => id }, @api_key)
    end

    def charges
      Charge.all({ :customer => id }, @api_key)
    end

    def cancel_subscription(params={})
      response, api_key = Stripe.request(:delete, subscription_url, @api_key, params)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def update_subscription(params)
      response, api_key = Stripe.request(:post, subscription_url, @api_key, params)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    private

    def subscription_url
      url + '/subscription'
    end
  end

  class Invoice < APIResource
    include Stripe::APIOperations::List

    def self.upcoming(params)
      response, api_key = Stripe.request(:get, upcoming_url, @api_key, params)
      Util.convert_to_stripe_object(response, api_key)
    end

    private

    def self.upcoming_url
      url + '/upcoming'
    end
  end

  class InvoiceItem < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
  end

  class Charge < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def refund(params={})
      response, api_key = Stripe.request(:post, refund_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    def capture(params={})
      response, api_key = Stripe.request(:post, capture_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    private

    def refund_url
      url + '/refund'
    end

    def capture_url
      url + '/capture'
    end
  end

  class Plan < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
  end

  class Coupon < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List
  end

  class Token < APIResource
    include Stripe::APIOperations::Create
  end

  class Event < APIResource
    include Stripe::APIOperations::List
  end

  class StripeError < StandardError
    attr_reader :message
    attr_reader :http_status
    attr_reader :http_body
    attr_reader :json_body

    def initialize(message=nil, http_status=nil, http_body=nil, json_body=nil)
      @message = message
      @http_status = http_status
      @http_body = http_body
      @json_body = json_body
    end

    def to_s
      status_string = @http_status.nil? ? "" : "(Status #{@http_status}) "
      "#{status_string}#{@message}"
    end
  end

  class APIError < StripeError; end
  class APIConnectionError < StripeError; end
  class CardError < StripeError
    attr_reader :param, :code

    def initialize(message, param, code, http_status=nil, http_body=nil, json_body=nil)
      super(message, http_status, http_body, json_body)
      @param = param
      @code = code
    end
  end
  class InvalidRequestError < StripeError
    attr_accessor :param

    def initialize(message, param, http_status=nil, http_body=nil, json_body=nil)
      super(message, http_status, http_body, json_body)
      @param = param
    end
  end
  class AuthenticationError < StripeError; end

  def self.api_url(url=''); @@api_base + url; end
  def self.api_key=(api_key); @@api_key = api_key; end
  def self.api_key; @@api_key; end
  def self.api_base=(api_base); @@api_base = api_base; end
  def self.api_base; @@api_base; end
  def self.verify_ssl_certs=(verify); @@verify_ssl_certs = verify; end
  def self.verify_ssl_certs; @@verify_ssl_certs; end

  def self.request(method, url, api_key, params=nil, headers={})
    api_key ||= @@api_key
    raise AuthenticationError.new('No API key provided.  (HINT: set your API key using "Stripe.api_key = <API-KEY>".  You can generate API keys from the Stripe web interface.  See https://stripe.com/api for details, or email support@stripe.com if you have any questions.)') unless api_key

    if !verify_ssl_certs
      unless @no_verify
        $stderr.puts "WARNING: Running without SSL cert verification.  Execute 'Stripe.verify_ssl_certs = true' to enable verification."
        @no_verify = true
      end
      ssl_opts = { :verify_ssl => false }
    elsif !Util.file_readable(@@ssl_bundle_path)
      unless @no_bundle
        $stderr.puts "WARNING: Running without SSL cert verification because #{@@ssl_bundle_path} isn't readable"
        @no_bundle = true
      end
      ssl_opts = { :verify_ssl => false }
    else
      ssl_opts = {
        :verify_ssl => OpenSSL::SSL::VERIFY_PEER,
        :ssl_ca_file => @@ssl_bundle_path
      }
    end
    uname = (@@uname ||= RUBY_PLATFORM =~ /linux|darwin/i ? `uname -a 2>/dev/null`.strip : nil)
    lang_version = "#{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE})"
    ua = {
      :bindings_version => Stripe::VERSION,
      :lang => 'ruby',
      :lang_version => lang_version,
      :platform => RUBY_PLATFORM,
      :publisher => 'stripe',
      :uname => uname
    }

    params = Util.objects_to_ids(params)
    url = self.api_url(url)
    case method.to_s.downcase.to_sym
    when :get, :head, :delete
      # Make params into GET parameters
      if params && params.count
        query_string = Util.flatten_params(params).collect{|p| "#{p[0]}=#{p[1]}"}.join('&')
        url += "?#{query_string}"
      end
      payload = nil
    else
      payload = params
    end

    # There's a bug in some version of activesupport where JSON.dump
    # stops working
    begin
      headers = { :x_stripe_client_user_agent => JSON.dump(ua) }.merge(headers)
    rescue => e
      headers = {
        :x_stripe_client_raw_user_agent => ua.inspect,
        :error => "#{e} (#{e.class})"
      }.merge(headers)
    end

    headers = {
      :user_agent => "Stripe/v1 RubyBindings/#{Stripe::VERSION}"
    }.merge(headers)
    opts = {
      :method => method,
      :url => url,
      :user => api_key,
      :headers => headers,
      :open_timeout => 30,
      :payload => payload,
      :timeout => 80
    }.merge(ssl_opts)

    begin
      response = execute_request(opts)
    rescue SocketError => e
      self.handle_restclient_error(e)
    rescue NoMethodError => e
      # Work around RestClient bug
      if e.message =~ /\WRequestFailed\W/
        e = APIConnectionError.new('Unexpected HTTP response code')
        self.handle_restclient_error(e)
      else
        raise
      end
    rescue RestClient::ExceptionWithResponse => e
      if rcode = e.http_code and rbody = e.http_body
        self.handle_api_error(rcode, rbody)
      else
        self.handle_restclient_error(e)
      end
    rescue RestClient::Exception, Errno::ECONNREFUSED => e
      self.handle_restclient_error(e)
    end

    rbody = response.body
    rcode = response.code
    begin
      # Would use :symbolize_names => true, but apparently there is
      # some library out there that makes symbolize_names not work.
      resp = JSON.parse(rbody)
    rescue JSON::ParserError
      raise APIError.new("Invalid response object from API: #{rbody.inspect} (HTTP response code was #{rcode})", rcode, rbody)
    end

    resp = Util.symbolize_names(resp)
    [resp, api_key]
  end

  private

  def self.execute_request(opts)
    RestClient::Request.execute(opts)
  end

  def self.handle_api_error(rcode, rbody)
    begin
      error_obj = JSON.parse(rbody)
      error_obj = Util.symbolize_names(error_obj)
      error = error_obj[:error] or raise StripeError.new # escape from parsing
    rescue JSON::ParserError, StripeError
      raise APIError.new("Invalid response object from API: #{rbody.inspect} (HTTP response code was #{rcode})", rcode, rbody)
    end

    case rcode
    when 400, 404 then
      raise invalid_request_error(error, rcode, rbody, error_obj)
    when 401
      raise authentication_error(error, rcode, rbody, error_obj)
    when 402
      raise card_error(error, rcode, rbody, error_obj)
    else
      raise api_error(error, rcode, rbody, error_obj)
    end
  end

  def self.invalid_request_error(error, rcode, rbody, error_obj); InvalidRequestError.new(error[:message], error[:param], rcode, rbody, error_obj); end
  def self.authentication_error(error, rcode, rbody, error_obj); AuthenticationError.new(error[:message], rcode, rbody, error_obj); end
  def self.card_error(error, rcode, rbody, error_obj); CardError.new(error[:message], error[:param], error[:code], rcode, rbody, error_obj); end
  def self.api_error(error, rcode, rbody, error_obj); APIError.new(error[:message], rcode, rbody, error_obj); end

  def self.handle_restclient_error(e)
    case e
    when RestClient::ServerBrokeConnection, RestClient::RequestTimeout
      message = "Could not connect to Stripe (#{@@api_base}).  Please check your internet connection and try again.  If this problem persists, you should check Stripe's service status at https://twitter.com/stripestatus, or let us know at support@stripe.com."
    when RestClient::SSLCertificateNotVerified
      message = "Could not verify Stripe's SSL certificate.  Please make sure that your network is not intercepting certificates.  (Try going to https://api.stripe.com/v1 in your browser.)  If this problem persists, let us know at support@stripe.com."
    when SocketError
      message = "Unexpected error communicating when trying to connect to Stripe.  HINT: You may be seeing this message because your DNS is not working.  To check, try running 'host stripe.com' from the command line."
    else
      message = "Unexpected error communicating with Stripe.  If this problem persists, let us know at support@stripe.com."
    end
    message += "\n\n(Network error: #{e.message})"
    raise APIConnectionError.new(message)
  end
end
