# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        class CancelParams < Stripe::RequestParams; end
        class CreateParams < Stripe::RequestParams
          class RetryDetails < Stripe::RequestParams
            # How you want Stripe to retry the payment.
            sig { returns(String) }
            attr_accessor :retry_strategy
            sig { params(retry_strategy: String).void }
            def initialize(retry_strategy: nil); end
          end
          class TransferData < Stripe::RequestParams
            # Amount in minor units that you want to transfer.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # ID of the connected account where you want money to go.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # Amount you want to collect.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # The frequency of the OSP.
          sig { returns(String) }
          attr_accessor :cadence
          # Customer that owns the provided payment method.
          sig { returns(String) }
          attr_accessor :customer
          # Any of your internal data you want to track here.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The OBO merchant you want to use.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          # Payment method you want to debit. Must be attached to a customer and set up for off-session usage.
          sig { returns(String) }
          attr_accessor :payment_method
          # How you want stripe to retry the OSP.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams::RetryDetails))
           }
          attr_accessor :retry_details
          # String you want to appear on your customer's statement.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          # Suffix appended to your account level descriptor.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix
          # Test clock to be used for testing your retry handling. Only usable in a sandbox.
          sig { returns(T.nilable(String)) }
          attr_accessor :test_clock
          # How you want to transfer the funds to your connected accounts.
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
        class ListParams < Stripe::RequestParams
          # The page size limit, if not provided the default is 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Cancel OSP.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create OSP.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def create(params = {}, opts = {}); end

        # List OSPs matching filter.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve OSP by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Payments::OffSessionPayment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end