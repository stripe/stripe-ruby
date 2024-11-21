# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # Name of the margin that's displayed on, for example, invoices.
    sig { returns(T.nilable(String)) }
    attr_reader :name

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    sig { returns(Float) }
    attr_reader :percent_off

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :updated
  end
end