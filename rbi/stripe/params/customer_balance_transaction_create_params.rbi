# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerBalanceTransactionCreateParams < ::Stripe::RequestParams
    class AppliedToInvoice < ::Stripe::RequestParams
      # The ID of the open invoice to apply the customer's balance credit to.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      sig { params(invoice: String).void }
      def initialize(invoice: nil); end
    end
    # The integer amount in **cents (or local equivalent)** to apply to the customer's credit balance.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # Required when `type` is `applied_to_invoice`. Identifies the open invoice to apply the customer's balance credit to.
    sig { returns(T.nilable(::Stripe::CustomerBalanceTransactionCreateParams::AppliedToInvoice)) }
    def applied_to_invoice; end
    sig {
      params(_applied_to_invoice: T.nilable(::Stripe::CustomerBalanceTransactionCreateParams::AppliedToInvoice)).returns(T.nilable(::Stripe::CustomerBalanceTransactionCreateParams::AppliedToInvoice))
     }
    def applied_to_invoice=(_applied_to_invoice); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Specifies the [`invoice_credit_balance`](https://docs.stripe.com/api/customers/object#customer_object-invoice_credit_balance) that this transaction will apply to. If the customer's `currency` is not set, it will be updated to this value.
    sig { returns(String) }
    def currency; end
    sig { params(_currency: String).returns(String) }
    def currency=(_currency); end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
    def description=(_description); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # The type of customer balance transaction. Defaults to `adjustment`, which updates the customer's credit balance directly. Set to `applied_to_invoice` to apply the customer's existing credit balance to a specific open invoice.
    sig { returns(T.nilable(String)) }
    def type; end
    sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
    def type=(_type); end
    sig {
      params(amount: Integer, applied_to_invoice: T.nilable(::Stripe::CustomerBalanceTransactionCreateParams::AppliedToInvoice), currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), type: T.nilable(String)).void
     }
    def initialize(
      amount: nil,
      applied_to_invoice: nil,
      currency: nil,
      description: nil,
      expand: nil,
      metadata: nil,
      type: nil
    ); end
  end
end