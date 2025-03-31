# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Domains registered for Apple Pay on the Web
  class ApplePayDomain < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = "apple_pay_domain"
    def self.object_name
      "apple_pay_domain"
    end

    class DeleteParams < Stripe::RequestParams
    end

    class ListParams < Stripe::RequestParams
      # Attribute for param field domain_name
      attr_accessor :domain_name
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        domain_name: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @domain_name = domain_name
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Attribute for param field domain_name
      attr_accessor :domain_name
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(domain_name: nil, expand: nil)
        @domain_name = domain_name
        @expand = expand
      end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Attribute for field domain_name
    attr_reader :domain_name
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Always true for a deleted object
    attr_reader :deleted

    # Create an apple pay domain.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/apple_pay/domains",
        params: params,
        opts: opts
      )
    end

    # Delete an apple pay domain.
    def self.delete(domain, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/apple_pay/domains/%<domain>s", { domain: CGI.escape(domain) }),
        params: params,
        opts: opts
      )
    end

    # Delete an apple pay domain.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/apple_pay/domains/%<domain>s", { domain: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # List apple pay domains.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/apple_pay/domains", params: params, opts: opts)
    end

    def self.resource_url
      "/v1/apple_pay/domains"
    end
  end
end
