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
          # ID of the verified bank account credential to debit for this InboundTransfer (for example, `usba_`), not a Payments API `pm_` PaymentMethod.
          sig { returns(String) }
          def payment_method; end
          sig { params(_payment_method: String).returns(String) }
          def payment_method=(_payment_method); end
          sig { params(currency: T.nilable(String), payment_method: String).void }
          def initialize(currency: nil, payment_method: nil); end
        end
        class To < ::Stripe::RequestParams
          # The currency to credit to the FinancialAccount.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The FinancialAccount that receives the funds.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
        end
        # The amount and currency to credit to the FinancialAccount.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # An optional, freeform description field intended to store metadata.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The verified bank account credential to debit for this InboundTransfer.
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From)
         }
        def from=(_from); end
        # The FinancialAccount and currency to credit with the transferred funds.
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::Amount, description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From, to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).void
         }
        def initialize(amount: nil, description: nil, from: nil, to: nil); end
      end
    end
  end
end