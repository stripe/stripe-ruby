# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentDecrementAuthorizationParams < Stripe::RequestParams
    class Hooks < Stripe::RequestParams
      class Inputs < Stripe::RequestParams
        class Tax < Stripe::RequestParams
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          sig { returns(String) }
          def calculation; end
          sig { params(_calculation: String).returns(String) }
          def calculation=(_calculation); end
          sig { params(calculation: String).void }
          def initialize(calculation: nil); end
        end
        # Tax arguments for automations
        sig { returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs::Tax)) }
        def tax; end
        sig {
          params(_tax: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs::Tax)).returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs::Tax))
         }
        def tax=(_tax); end
        sig {
          params(tax: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs::Tax)).void
         }
        def initialize(tax: nil); end
      end
      # Arguments passed in automations
      sig { returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs)) }
      def inputs; end
      sig {
        params(_inputs: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs)).returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs))
       }
      def inputs=(_inputs); end
      sig {
        params(inputs: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks::Inputs)).void
       }
      def initialize(inputs: nil); end
    end
    class TransferData < Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      sig { params(amount: T.nilable(Integer)).void }
      def initialize(amount: nil); end
    end
    # The updated total amount that you intend to collect from the cardholder. This amount must be smaller than the currently authorized amount and greater than the already captured amount.
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
    # Automations to be run during the PaymentIntent lifecycle
    sig { returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks)) }
    def hooks; end
    sig {
      params(_hooks: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks)).returns(T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks))
     }
    def hooks=(_hooks); end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # The parameters used to automatically create a transfer after the payment is captured.
    # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(PaymentIntentDecrementAuthorizationParams::TransferData)) }
    def transfer_data; end
    sig {
      params(_transfer_data: T.nilable(PaymentIntentDecrementAuthorizationParams::TransferData)).returns(T.nilable(PaymentIntentDecrementAuthorizationParams::TransferData))
     }
    def transfer_data=(_transfer_data); end
    sig {
      params(amount: Integer, application_fee_amount: T.nilable(Integer), description: T.nilable(String), expand: T.nilable(T::Array[String]), hooks: T.nilable(PaymentIntentDecrementAuthorizationParams::Hooks), metadata: T.nilable(T::Hash[String, String]), transfer_data: T.nilable(PaymentIntentDecrementAuthorizationParams::TransferData)).void
     }
    def initialize(
      amount: nil,
      application_fee_amount: nil,
      description: nil,
      expand: nil,
      hooks: nil,
      metadata: nil,
      transfer_data: nil
    ); end
  end
end