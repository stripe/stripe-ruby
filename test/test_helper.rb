require 'stripe'
require 'committee'
require 'test/unit'
require 'mocha/setup'
require 'stringio'
require 'shoulda/context'
require 'sinatra'
require 'stringio'
require 'webmock/test_unit'

require File.expand_path('../test_data', __FILE__)

# monkeypatch request methods
module Stripe
  @mock_rest_client = nil

  def self.mock_rest_client=(mock_client)
    @mock_rest_client = mock_client
  end

  # A little context here: the Stripe tests work traditionally by defining a
  # single method that all HTTP requests go through (`Stripe.execute_request`)
  # and then monkey patching so that no HTTP requests were made.
  #
  # For our next generation we want to test with some slightly more
  # sophisticated techniques so we don't want these monkey patches applied.
  # This introduces some testing infrastructure that allows them to be disabled
  # conditionally using a helper that takes a block. Unfortunately the mechanic
  # uses a pseudo-global variable to work, but should be a short-lived measure.
  class << self
    alias :execute_request_regular :execute_request

    # Enables or disables legacy stubs. They can still be disabled on an
    # individual basis using the `without_legacy_stubs` helper.
    attr_accessor :enable_legacy_stubs

    def execute_request(opts)
      if self.enable_legacy_stubs
        execute_request_stub(opts)
      else
        execute_request_regular(opts)
      end
    end

    def execute_request_stub(opts)
      get_params = (opts[:headers] || {})[:params]
      post_params = opts[:payload]
      case opts[:method]
      when :get then @mock_rest_client.get opts[:url], get_params, post_params
      when :post then @mock_rest_client.post opts[:url], get_params, post_params
      when :delete then @mock_rest_client.delete opts[:url], get_params, post_params
      end
    end
  end
end

# Provides a set of helpers for a test suite that help to mock out the Stripe
# API.
module StubHelpers
  protected

  # Uses Webmock to stub out the Stripe API for testing purposes. The stub will
  # by default respond on any routes that are defined in the bundled
  # hyper-schema with generated response data.
  #
  # An `override_app` can be specified to get finer grain control over how a
  # stubbed endpoint responds. It can be used to modify generated responses,
  # mock expectations, or even to override the default stub completely.
  def stub_api(override_app = nil, &block)
    if block
      override_app = Sinatra.new(OverrideSinatra, &block)
    elsif !override_app
      override_app = @@default_override_app
    end

    stub_request(:any, /^#{Stripe.api_url}/).to_rack(new_api_stub(override_app))
  end

  def stub_connect
    stub_request(:any, /^#{Stripe.connect_base}/).to_return(:body => "{}")
  end

  private

  # A descendant of the standard `Sinatra::Base` with some added helpers to
  # make working with generated responses more convenient.
  class OverrideSinatra < Sinatra::Base
    # A simple hash-like class that doesn't allow any keys to be accessed or
    # defined that were not present on its initialization.
    #
    # Its secondary function is allowing indifferent access regardless of
    # whether a stirng or symbol is used as a key.
    #
    # The purpose of the class is to make modifying API responses safer by
    # disallowing the setting of keys that were not in the original response.
    class TempermentalHash
      # Initializes a TempermentalHash from a standard Hash. Note that
      # initialization is performed recursively so any hashes included as
      # values of the top-level hash will also be concerted.
      def initialize(hash)
        @hash = hash.dup
        @hash.each do |k, v|
          @hash[k] = TempermentalHash.new(v) if v.is_a?(Hash)
        end
      end

      def [](key)
        key = key.to_s
        check_key!(key)
        @hash[key]
      end

      def []=(key, val)
        key = key.to_s
        check_key!(key)
        @hash[key] = val
      end

      def deep_merge!(hash)
        hash.each do |k, v|
          if v.is_a?(Hash)
            if !@hash[k].is_a?(Hash)
              raise ArgumentError, "'#{key}' in stub response is not a hash " +
                "and cannot be deep merged"
            end
            self[k].deep_merge!(v)
          else
            self[k] = v
          end
        end
      end

      def to_h
        h = {}
        @hash.each do |k, v|
          h[k] = v.is_a?(TempermentalHash) ? v.to_h : v
        end
        h
      end

      private

      def check_key!(key)
        unless @hash.key?(key)
require "pry" ; binding.pry
          raise ArgumentError, "'#{key}' is not defined in stub response"
        end
      end
    end

    def modify_generated_response
      safe_hash = TempermentalHash.new(env["committee.response"])
      yield(safe_hash)
      env["committee.response"] = safe_hash.to_h
    end

    # The hash of data generated based on hyper-schema information for the
    # requested route of the API.
    #
    # It's also worth nothing that this could be `nil` in the event of the
    # schema not knowing how to respond to the requested route.
    def generated_response
      env["committee.response"]
    end

    # This instructs the response stubbing framework that it should *not*
    # respond with a generated response on this request. Instead, control is
    # wholly given over to the override method.
    def override_response!
      env["committee.suppress"] = true
    end

    not_found do
      "endpoint not found in API stub: #{request.request_method} #{request.path_info}"
    end
  end

  # Finds the latest OpenAPI specification in ROOT/schema/ and parses it for
  # use with Committee.
  def self.initialize_schema
    path = File.expand_path("../../schema/", __FILE__)
    file = Dir["#{path}/*.yaml"].last
    schema_data = ::YAML.load(File.read(file))

    driver = Committee::Drivers::OpenAPI2.new
    driver.parse(schema_data)
  end

  # Creates a new Rack app with Committee middleware wrapping an internal app.
  def new_api_stub(override_app)
    Rack::Builder.new {
      use Committee::Middleware::RequestValidation, schema: @@schema
      use Committee::Middleware::Stub, :call => true, schema: @@schema
      run override_app
    }
  end

  # Parse and initialize the hyper-schema only once for the entire test suite.
  @@schema = initialize_schema

  # The default override app. Doesn't respond on any route so generated
  # responses will always take precedence.
  @@default_override_app = Sinatra.new
end

class Test::Unit::TestCase
  include Stripe::TestData
  include StubHelpers
  include Mocha

  setup do
    @mock = mock
    Stripe.mock_rest_client = @mock
    Stripe.api_key = "foo"

    # Stub the Stripe API with a default stub. Note that this method can be
    # called again in test bodies in order to override responses on particular
    # endpoints.
    stub_api

    stub_connect
  end

  teardown do
    Stripe.mock_rest_client = nil
    Stripe.api_key = nil
  end

  # Helper that disables the monkey patching on `Stripe.execute_request` for
  # the duration of the given block. Useful for the move over from
  # manually-generated responses to those generated from a hyper-schema.
  def without_legacy_stubs
    old = Stripe.enable_legacy_stubs
    Stripe.enable_legacy_stubs = false
    yield
  ensure
    Stripe.enable_legacy_stubs = old
  end

  def with_legacy_stubs
    old = Stripe.enable_legacy_stubs
    Stripe.enable_legacy_stubs = true
    yield
  ensure
    Stripe.enable_legacy_stubs = old
  end
end

# A mix-in to include on a test class that will force all test cases to use
# modern stubs (i.e. without monkey patches).
module WithoutLegacyStubs
  def self.included(suite)
    suite.setup do
      @old_execute_request_stub = Stripe.enable_legacy_stubs
      Stripe.enable_legacy_stubs = false
    end

    suite.teardown do
      Stripe.enable_legacy_stubs = @old_execute_request_stub
    end
  end
end

Stripe.enable_legacy_stubs = true
