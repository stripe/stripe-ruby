# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    sig { returns(T::Boolean) }
    def active; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # Name of the margin that's displayed on, for example, invoices.
    sig { returns(T.nilable(String)) }
    def name; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    sig { returns(Float) }
    def percent_off; end
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def updated; end
    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    sig {
      params(params: T.any(::Stripe::MarginCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Margin)
     }
    def self.create(params = {}, opts = {}); end

    # Retrieve a list of your margins.
    sig {
      params(params: T.any(::Stripe::MarginListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    sig {
      params(margin: String, params: T.any(::Stripe::MarginUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Margin)
     }
    def self.update(margin, params = {}, opts = {}); end
  end
end