# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    sig { returns(T::Boolean) }
    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    attr_reader :active
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # Name of the margin that's displayed on, for example, invoices.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Float) }
    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    attr_reader :percent_off
    sig { returns(Integer) }
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    attr_reader :updated
  end
end