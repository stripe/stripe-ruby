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
