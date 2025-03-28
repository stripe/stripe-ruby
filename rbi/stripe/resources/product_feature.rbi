# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A product_feature represents an attachment between a feature and a product.
  # When a product is purchased that has a feature attached, Stripe will create an entitlement to the feature for the purchasing customer.
  class ProductFeature < APIResource
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    sig { returns(Stripe::Entitlements::Feature) }
    attr_reader :entitlement_feature
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end