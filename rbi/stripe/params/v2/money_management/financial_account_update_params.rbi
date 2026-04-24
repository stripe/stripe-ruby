# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountUpdateParams < ::Stripe::RequestParams
        class Storage < ::Stripe::RequestParams
          # The currencies that this storage FinancialAccount can hold a balance in. Three-letter ISO currency code, in lowercase.
          # Adding currencies requires the corresponding holds_currencies storer capabilities to be enabled.
          # Removing currencies is not supported as of March 2026.
          sig { returns(T.nilable(T::Array[String])) }
          def holds_currencies; end
          sig {
            params(_holds_currencies: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def holds_currencies=(_holds_currencies); end
          sig { params(holds_currencies: T.nilable(T::Array[String])).void }
          def initialize(holds_currencies: nil); end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Metadata associated with the FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        # Parameters for updating storage-specific fields on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage))
         }
        def storage; end
        sig {
          params(_storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage))
         }
        def storage=(_storage); end
        sig {
          params(display_name: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage)).void
         }
        def initialize(display_name: nil, metadata: nil, storage: nil); end
      end
    end
  end
end