# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A product_feature represents an attachment between a feature and a product.
  # When a product is purchased that has a feature attached, Stripe will create an entitlement to the feature for the purchasing customer.
  class ProductFeature < APIResource
    sig { returns(Stripe::Entitlements::Feature) }
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    attr_reader :entitlement_feature
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end