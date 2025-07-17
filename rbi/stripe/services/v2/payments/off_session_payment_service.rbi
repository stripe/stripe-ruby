# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size limit. If not provided, the default is 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class RetryDetails < Stripe::RequestParams
            # Indicates the strategy for how you want Stripe to retry the payment.
            sig { returns(String) }
            attr_accessor :retry_strategy
            sig { params(retry_strategy: String).void }
            def initialize(retry_strategy: nil); end
          end
          class TransferData < Stripe::RequestParams
            # The amount transferred to the destination account. This transfer will occur
            # automatically after the payment succeeds. If no amount is specified, by default
            # the entire payment amount is transferred to the destination account. The amount
            # must be less than or equal to the
            # [amount_requested](https://docs.corp.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
            # and must be a positive integer representing how much to transfer in the smallest
            # currency unit (e.g., 100 cents to charge $1.00).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # The account (if any) that the payment is attributed to for tax reporting, and
            # where funds from the payment are transferred to after payment success.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The “presentment amount” to be collected from the customer.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # The frequency of the underlying payment.
          sig { returns(String) }
          attr_accessor :cadence
          # ID of the Customer to which this OffSessionPayment belongs.
          sig { returns(String) }
          attr_accessor :customer
          # Set of [key-value pairs](https://docs.corp.stripe.com/api/metadata) that you can
          # attach to an object. This can be useful for storing additional information about
          # the object in a structured format. Learn more about
          # [storing information in metadata](https://docs.corp.stripe.com/payments/payment-intents#storing-information-in-metadata).
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The account (if any) for which the funds of the OffSessionPayment are intended.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          # ID of the payment method used in this OffSessionPayment.
          sig { returns(String) }
          attr_accessor :payment_method
          # Details about the OffSessionPayment retries.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams::RetryDetails))
           }
          attr_accessor :retry_details
          # Text that appears on the customer’s statement as the statement descriptor for a
          # non-card charge. This value overrides the account’s default statement descriptor.
          # For information about requirements, including the 22-character limit, see the
          # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          # Provides information about a card charge. Concatenated to the account’s
          # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
          # to form the complete statement descriptor that appears on the customer’s statement.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix
          # Test clock that can be used to advance the retry attempts in a sandbox.
          sig { returns(T.nilable(String)) }
          attr_accessor :test_clock
          # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.corp.stripe.com/payments/connected-accounts).
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams::TransferData))
           }
          attr_accessor :transfer_data
          sig {
            params(amount: Stripe::V2::Amount, cadence: String, customer: String, metadata: T::Hash[String, String], on_behalf_of: T.nilable(String), payment_method: String, retry_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams::RetryDetails), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), test_clock: T.nilable(String), transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams::TransferData)).void
           }
          def initialize(
            amount: nil,
            cadence: nil,
            customer: nil,
            metadata: nil,
            on_behalf_of: nil,
            payment_method: nil,
            retry_details: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            test_clock: nil,
            transfer_data: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end
        # Cancel an OffSessionPayment that has previously been created.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates an OffSessionPayment object.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OffSessionPayments matching a filter.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an OffSessionPayment that has previously been created.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end