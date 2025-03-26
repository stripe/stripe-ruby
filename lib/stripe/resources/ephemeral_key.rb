# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class EphemeralKey < APIResource
    OBJECT_NAME = "ephemeral_key"
    def self.object_name
      "ephemeral_key"
    end

    # Invalidates a short-lived API key for a given resource.
    def self.delete(key, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/ephemeral_keys/%<key>s", { key: CGI.escape(key) }),
        params: params,
        opts: opts
      )
    end

    # Invalidates a short-lived API key for a given resource.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/ephemeral_keys/%<key>s", { key: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.create(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      unless opts[:stripe_version]
        raise ArgumentError,
              "stripe_version must be specified to create an ephemeral key"
      end
      request_stripe_object(
        method: :post,
        path: "/v1/ephemeral_keys",
        params: params,
        opts: opts
      )
    end
  end
end
