# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class ReceivedCreditService < StripeService
        class CreateParams < Stripe::RequestParams
          class InitiatingPaymentMethodDetails < Stripe::RequestParams
            class UsBankAccount < Stripe::RequestParams
              # The bank account holder's name.
              sig { returns(T.nilable(String)) }
              def account_holder_name; end
              sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
              def account_holder_name=(_account_holder_name); end
              # The bank account number.
              sig { returns(T.nilable(String)) }
              def account_number; end
              sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
              def account_number=(_account_number); end
              # The bank account's routing number.
              sig { returns(T.nilable(String)) }
              def routing_number; end
              sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
              def routing_number=(_routing_number); end
              sig {
                params(account_holder_name: T.nilable(String), account_number: T.nilable(String), routing_number: T.nilable(String)).void
               }
              def initialize(
                account_holder_name: nil,
                account_number: nil,
                routing_number: nil
              ); end
            end
            # The source type.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Optional fields for `us_bank_account`.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
             }
            def us_bank_account; end
            sig {
              params(_us_bank_account: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
             }
            def us_bank_account=(_us_bank_account); end
            sig {
              params(type: String, us_bank_account: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).void
             }
            def initialize(type: nil, us_bank_account: nil); end
          end
          class NetworkDetails < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # ACH Addenda record
              sig { returns(T.nilable(String)) }
              def addenda; end
              sig { params(_addenda: T.nilable(String)).returns(T.nilable(String)) }
              def addenda=(_addenda); end
              sig { params(addenda: T.nilable(String)).void }
              def initialize(addenda: nil); end
            end
            # Optional fields for `ach`.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails::Ach)).returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails::Ach))
             }
            def ach=(_ach); end
            # The type of flow that originated the ReceivedCredit.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(ach: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails::Ach), type: String).void
             }
            def initialize(ach: nil, type: nil); end
          end
          # Amount (in cents) to be transferred.
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
          # The FinancialAccount to send funds to.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          # Initiating payment method details for the object.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails))
           }
          def initiating_payment_method_details; end
          sig {
            params(_initiating_payment_method_details: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails)).returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails))
           }
          def initiating_payment_method_details=(_initiating_payment_method_details); end
          # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          def network; end
          sig { params(_network: String).returns(String) }
          def network=(_network); end
          # Details about the network used for the ReceivedCredit.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails))
           }
          def network_details; end
          sig {
            params(_network_details: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails)).returns(T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails))
           }
          def network_details=(_network_details); end
          sig {
            params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, initiating_payment_method_details: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::InitiatingPaymentMethodDetails), network: String, network_details: T.nilable(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams::NetworkDetails)).void
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
        # Use this endpoint to simulate a test mode ReceivedCredit initiated by a third party. In live mode, you can't directly create ReceivedCredits initiated by third parties.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Treasury::ReceivedCreditService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::ReceivedCredit)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end