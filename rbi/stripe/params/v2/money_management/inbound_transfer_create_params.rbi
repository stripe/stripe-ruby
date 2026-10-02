# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # An optional currency field used to specify which currency is debited from the Payment Method.
          # Since many Payment Methods support only one currency, this field is optional.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # ID of the Payment Method using which IBT will be made.
          sig { returns(String) }
          def payment_method; end
          sig { params(_payment_method: String).returns(String) }
          def payment_method=(_payment_method); end
          sig { params(currency: T.nilable(String), payment_method: String).void }
          def initialize(currency: nil, payment_method: nil); end
        end
        class NetworkDetails < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # Optional freeform payment-related information written into the type-7 ACH
            # addenda record of the NACHA submission. Max 80 characters.
            sig { returns(T.nilable(String)) }
            def addenda; end
            sig { params(_addenda: T.nilable(String)).returns(T.nilable(String)) }
            def addenda=(_addenda); end
            sig { params(addenda: T.nilable(String)).void }
            def initialize(addenda: nil); end
          end
          # ACH-specific network details. Only applied when the transfer routes over ACH.
          sig {
            returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails::Ach)
           }
          def ach; end
          sig {
            params(_ach: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails::Ach).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails::Ach)
           }
          def ach=(_ach); end
          sig {
            params(ach: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails::Ach).void
           }
          def initialize(ach: nil); end
        end
        class To < ::Stripe::RequestParams
          # The currency in which funds will land in.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The FinancialAccount that funds will land in.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
        end
        # The amount, in specified currency, by which the FinancialAccount balance will increase due to the InboundTransfer.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # An optional, freeform description field intended to store metadata.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Object containing details about where the funds will originate from.
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From)
         }
        def from=(_from); end
        # Network-specific details for the InboundTransfer.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails))
         }
        def network_details; end
        sig {
          params(_network_details: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails)).returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails))
         }
        def network_details=(_network_details); end
        # An optional statement descriptor surfaced on the payer's bank statement. Max 10 characters.
        # When omitted, Stripe sends its default descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # Object containing details about where the funds will land.
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::Amount, description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From, network_details: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::NetworkDetails), statement_descriptor: T.nilable(String), to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).void
         }
        def initialize(
          amount: nil,
          description: nil,
          from: nil,
          network_details: nil,
          statement_descriptor: nil,
          to: nil
        ); end
      end
    end
  end
end