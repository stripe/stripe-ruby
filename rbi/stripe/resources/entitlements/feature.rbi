# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    class Feature < APIResource
      # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
      sig { returns(T::Boolean) }
      attr_reader :active

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      sig { returns(String) }
      attr_reader :lookup_key

      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # The feature's name, for your own purpose, not meant to be displayable to the customer.
      sig { returns(String) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end