# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TopupCreateParams < ::Stripe::RequestParams
    class PaymentMethodOptions < ::Stripe::RequestParams
      class UsBankAccount < ::Stripe::RequestParams
        # Attribute for param field network
        sig { returns(String) }
        def network; end
        sig { params(_network: String).returns(String) }
        def network=(_network); end
        sig { params(network: String).void }
        def initialize(network: nil); end
      end
      # Attribute for param field us_bank_account
      sig { returns(T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions::UsBankAccount)) }
      def us_bank_account; end
      sig {
        params(_us_bank_account: T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions::UsBankAccount))
       }
      def us_bank_account=(_us_bank_account); end
      sig {
        params(us_bank_account: T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions::UsBankAccount)).void
       }
      def initialize(us_bank_account: nil); end
    end
    # A positive integer representing how much to transfer.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
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
    # The ID of a PaymentMethod representing the payment method to be used for the top-up. A PaymentMethod of type `us_bank_account` can be used.
    sig { returns(T.nilable(String)) }
    def payment_method; end
    sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
    def payment_method=(_payment_method); end
    # Payment method-specific configuration for this top-up.
    sig { returns(T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions)) }
    def payment_method_options; end
    sig {
      params(_payment_method_options: T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions))
     }
    def payment_method_options=(_payment_method_options); end
    # The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https://docs.stripe.com/connect/testing#testing-top-ups)).
    sig { returns(T.nilable(String)) }
    def source; end
    sig { params(_source: T.nilable(String)).returns(T.nilable(String)) }
    def source=(_source); end
    # Extra information about a top-up for the source's bank statement. Limited to 15 ASCII characters.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
    def statement_descriptor=(_statement_descriptor); end
    # A string that identifies this top-up as part of a group.
    sig { returns(T.nilable(String)) }
    def transfer_group; end
    sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
    def transfer_group=(_transfer_group); end
    sig {
      params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_options: T.nilable(::Stripe::TopupCreateParams::PaymentMethodOptions), source: T.nilable(String), statement_descriptor: T.nilable(String), transfer_group: T.nilable(String)).void
     }
    def initialize(
      amount: nil,
      currency: nil,
      description: nil,
      expand: nil,
      metadata: nil,
      payment_method: nil,
      payment_method_options: nil,
      source: nil,
      statement_descriptor: nil,
      transfer_group: nil
    ); end
  end
end