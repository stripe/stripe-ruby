# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    class Feature < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "entitlements.feature"
      def self.object_name
        "entitlements.feature"
      end

      # Creates a feature
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/entitlements/features",
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of features
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/entitlements/features",
          params: params,
          opts: opts
        )
      end

      # Update a feature's metadata or permanently deactivate it.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/entitlements/features/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
