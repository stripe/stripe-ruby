# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentIncrementAuthorizationParams < Stripe::RequestParams
    class TransferData < Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      sig { params(amount: T.nilable(Integer)).void }
      def initialize(amount: nil); end
    end
    # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def application_fee_amount=(_application_fee_amount); end
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
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
    def statement_descriptor=(_statement_descriptor); end
    # The parameters used to automatically create a transfer after the payment is captured.
    # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)) }
    def transfer_data; end
    sig {
      params(_transfer_data: T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData))
     }
    def transfer_data=(_transfer_data); end
    sig {
      params(amount: Integer, application_fee_amount: T.nilable(Integer), description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String), transfer_data: T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)).void
     }
    def initialize(
      amount: nil,
      application_fee_amount: nil,
      description: nil,
      expand: nil,
      metadata: nil,
      statement_descriptor: nil,
      transfer_data: nil
    ); end
  end
end