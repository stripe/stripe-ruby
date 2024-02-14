# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    class Feature < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/entitlements/features",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
