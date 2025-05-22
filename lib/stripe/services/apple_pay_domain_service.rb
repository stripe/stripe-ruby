# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ApplePayDomainService < StripeService
    class DeleteParams < Stripe::RequestParams; end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
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

    # Create an apple pay domain.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/apple_pay/domains",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete an apple pay domain.
    def delete(domain, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/apple_pay/domains/%<domain>s", { domain: CGI.escape(domain) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List apple pay domains.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/apple_pay/domains",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve an apple pay domain.
    def retrieve(domain, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/apple_pay/domains/%<domain>s", { domain: CGI.escape(domain) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
