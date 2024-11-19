# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    class Feature < APIResource
      sig { returns(T::Boolean) }
      # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
      attr_reader :active
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      attr_reader :lookup_key
      sig { returns(T::Hash[String, String]) }
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The feature's name, for your own purpose, not meant to be displayable to the customer.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end