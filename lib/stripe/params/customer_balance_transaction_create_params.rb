# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerBalanceTransactionCreateParams < ::Stripe::RequestParams
    class AppliedToInvoice < ::Stripe::RequestParams
      # The ID of the open invoice to apply the customer's balance credit to.
      attr_accessor :invoice

      def initialize(invoice: nil)
        @invoice = invoice
      end
    end
    # The integer amount in **cents (or local equivalent)** to apply to the customer's credit balance.
    attr_accessor :amount
    # Required when `type` is `applied_to_invoice`. Identifies the open invoice to apply the customer's balance credit to.
    attr_accessor :applied_to_invoice
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Specifies the [`invoice_credit_balance`](https://docs.stripe.com/api/customers/object#customer_object-invoice_credit_balance) that this transaction will apply to. If the customer's `currency` is not set, it will be updated to this value.
    attr_accessor :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_accessor :description
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The type of customer balance transaction. Defaults to `adjustment`, which updates the customer's credit balance directly. Set to `applied_to_invoice` to apply the customer's existing credit balance to a specific open invoice.
    attr_accessor :type

    def initialize(
      amount: nil,
      applied_to_invoice: nil,
      currency: nil,
      description: nil,
      expand: nil,
      metadata: nil,
      type: nil
    )
      @amount = amount
      @applied_to_invoice = applied_to_invoice
      @currency = currency
      @description = description
      @expand = expand
      @metadata = metadata
      @type = type
    end
  end
end
