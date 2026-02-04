# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferCreateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          sig { params(_value: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def value=(_value); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(value: T.nilable(Integer), currency: T.nilable(String)).void }
          def initialize(value: nil, currency: nil); end
        end
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
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::Amount) }
        def amount; end
        sig {
          params(_amount: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::Amount).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::Amount)
         }
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
        # Object containing details about where the funds will land.
        sig { returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).returns(::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::Amount, description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::From, to: ::Stripe::V2::MoneyManagement::InboundTransferCreateParams::To).void
         }
        def initialize(amount: nil, description: nil, from: nil, to: nil); end
      end
    end
  end
end