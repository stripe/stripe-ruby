# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCreateParams < ::Stripe::RequestParams
        class Storage < ::Stripe::RequestParams
          # The usage type for funds in this FinancialAccount. Can be used to specify that the funds are for Consumer activity.
          sig { returns(T.nilable(String)) }
          def funds_usage_type; end
          sig { params(_funds_usage_type: T.nilable(String)).returns(T.nilable(String)) }
          def funds_usage_type=(_funds_usage_type); end
          # The currencies that this FinancialAccount can hold.
          sig { returns(T::Array[String]) }
          def holds_currencies; end
          sig { params(_holds_currencies: T::Array[String]).returns(T::Array[String]) }
          def holds_currencies=(_holds_currencies); end
          sig {
            params(funds_usage_type: T.nilable(String), holds_currencies: T::Array[String]).void
           }
          def initialize(funds_usage_type: nil, holds_currencies: nil); end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Metadata associated with the FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Parameters specific to creating `storage` type FinancialAccounts.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage))
         }
        def storage; end
        sig {
          params(_storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage))
         }
        def storage=(_storage); end
        # The type of FinancialAccount to create.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(display_name: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage), type: String).void
         }
        def initialize(display_name: nil, metadata: nil, storage: nil, type: nil); end
      end
    end
  end
end