# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ApplicationFee < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "application_fee"
    def self.object_name
      "application_fee"
    end

    nested_resource_class_methods :refund, operations: %i[create retrieve update list]

    class FeeSource < Stripe::StripeObject
      attr_reader :charge, :payout, :type
    end
    # ID of the Stripe account this fee was taken from.
    attr_reader :account
    # Amount earned, in cents (or local equivalent).
    attr_reader :amount
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
    attr_reader :amount_refunded
    # ID of the Connect application that earned the fee.
    attr_reader :application
    # Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
    attr_reader :balance_transaction
    # ID of the charge that the application fee was taken from.
    attr_reader :charge
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
    attr_reader :fee_source
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
    attr_reader :originating_transaction
    # Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
    attr_reader :refunded
    # A list of refunds that have been applied to the fee.
    attr_reader :refunds

    # Returns a list of application fees you've previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/application_fees", params: filters, opts: opts)
    end
  end
end
