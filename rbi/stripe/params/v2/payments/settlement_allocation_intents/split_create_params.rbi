# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitCreateParams < ::Stripe::RequestParams
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
          # The account to target for this credit/debit.
          sig { returns(String) }
          def account; end
          sig { params(_account: String).returns(String) }
          def account=(_account); end
          # The amount and currency of the SettlementAllocationIntentSplit.
          sig { returns(V2::Payments::SettlementAllocationIntents::SplitCreateParams::Amount) }
          def amount; end
          sig {
            params(_amount: V2::Payments::SettlementAllocationIntents::SplitCreateParams::Amount).returns(V2::Payments::SettlementAllocationIntents::SplitCreateParams::Amount)
           }
          def amount=(_amount); end
          # Metadata associated with the SettlementAllocationIntentSplit.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The type of the fund transfer.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(account: String, amount: V2::Payments::SettlementAllocationIntents::SplitCreateParams::Amount, metadata: T.nilable(T::Hash[String, String]), type: String).void
           }
          def initialize(account: nil, amount: nil, metadata: nil, type: nil); end
        end
      end
    end
  end
end