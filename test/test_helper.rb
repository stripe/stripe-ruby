require 'stripe'
require 'committee'
require 'json_schema'
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

    # Enables legacy stubs. They can still be disabled on an individual basis
    # using the `without_legacy_stubs` helper.
    def enable_legacy_stubs!
      @execute_request_stub = true
    end

    def execute_request(opts)
      if @execute_request_stub
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

  private

  # A descendant of the standard `Sinatra::Base` with some added helpers to
  # make working with generated responses more convenient.
  class OverrideSinatra < Sinatra::Base
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
  end

  # Finds the latest schema in ROOT/schema/ and parses it for use with
  # Committee.
  def self.initialize_schema
    path = File.expand_path("../../schema/", __FILE__)
    file = Dir["#{path}/*.yaml"].last
    schema_str = ::YAML.load(File.read(file))
    schema = JsonSchema.parse!(schema_str)
    schema.expand_references!
    schema
  end

  # Creates a new Rack app with Committee middleware wrapping an internal app.
  def new_api_stub(override_app)
    Rack::Builder.new {
      use Committee::Middleware::RequestValidation, :schema => @@schema
      use Committee::Middleware::Stub, :call => true, :schema => @@schema
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
  end

  teardown do
    Stripe.mock_rest_client = nil
    Stripe.api_key = nil
  end

  # Helper that disables the monkey patching on `Stripe.execute_request` for
  # the duration of the given block. Useful for the move over from
  # manually-generated responses to those generated from a hyper-schema.
  def without_legacy_stubs
    old = $execute_request_stub
    $execute_request_stub = false
    yield
  ensure
    $execute_request_stub = old
  end
end

Stripe.enable_legacy_stubs!
