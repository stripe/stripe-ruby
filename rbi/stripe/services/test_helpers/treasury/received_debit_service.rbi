# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class ReceivedDebitService < StripeService
        class CreateParams < Stripe::RequestParams
          class InitiatingPaymentMethodDetails < Stripe::RequestParams
            class UsBankAccount < Stripe::RequestParams
              # The bank account holder's name.
              sig { returns(String) }
              attr_accessor :account_holder_name

              # The bank account number.
              sig { returns(String) }
              attr_accessor :account_number

              # The bank account's routing number.
              sig { returns(String) }
              attr_accessor :routing_number

              sig {
                params(account_holder_name: String, account_number: String, routing_number: String).void
               }
              def initialize(
                account_holder_name: nil,
                account_number: nil,
                routing_number: nil
              ); end
            end
            # The source type.
            sig { returns(String) }
            attr_accessor :type

            # Optional fields for `us_bank_account`.
            sig {
              returns(::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)
             }
            attr_accessor :us_bank_account

            sig {
              params(type: String, us_bank_account: ::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount).void
             }
            def initialize(type: nil, us_bank_account: nil); end
          end
          class NetworkDetails < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Addenda record data associated with this ReceivedDebit.
              sig { returns(String) }
              attr_accessor :addenda

              sig { params(addenda: String).void }
              def initialize(addenda: nil); end
            end
            # Optional fields for `ach`.
            sig {
              returns(::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::NetworkDetails::Ach)
             }
            attr_accessor :ach

            # The type of flow that originated the ReceivedDebit.
            sig { returns(String) }
            attr_accessor :type

            sig {
              params(ach: ::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::NetworkDetails::Ach, type: String).void
             }
            def initialize(ach: nil, type: nil); end
          end
          # Amount (in cents) to be transferred.
          sig { returns(Integer) }
          attr_accessor :amount

          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency

          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(String) }
          attr_accessor :description

          # Specifies which fields in the response should be expanded.
          sig { returns(T::Array[String]) }
          attr_accessor :expand

          # The FinancialAccount to pull funds from.
          sig { returns(String) }
          attr_accessor :financial_account

          # Initiating payment method details for the object.
          sig {
            returns(::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::InitiatingPaymentMethodDetails)
           }
          attr_accessor :initiating_payment_method_details

          # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          attr_accessor :network

          # Details about the network used for the ReceivedDebit.
          sig {
            returns(::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::NetworkDetails)
           }
          attr_accessor :network_details

          sig {
            params(amount: Integer, currency: String, description: String, expand: T::Array[String], financial_account: String, initiating_payment_method_details: ::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::InitiatingPaymentMethodDetails, network: String, network_details: ::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams::NetworkDetails).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            expand: nil,
            financial_account: nil,
            initiating_payment_method_details: nil,
            network: nil,
            network_details: nil
          ); end
        end
        # Use this endpoint to simulate a test mode ReceivedDebit initiated by a third party. In live mode, you can't directly create ReceivedDebits initiated by third parties.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Treasury::ReceivedDebitService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::ReceivedDebit)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end