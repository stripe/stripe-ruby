# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        class ListParams < Stripe::RequestParams
          # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
          sig { returns(T.nilable(String)) }
          def financial_account; end
          sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
          def financial_account=(_financial_account); end
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig {
            params(financial_account: T.nilable(String), include: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
           }
          def initialize(financial_account: nil, include: nil, limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          # The ID of the FinancialAccount the new FinancialAddress should be associated with.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          # The type of FinancialAddress details to provision.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(financial_account: String, type: String).void }
          def initialize(financial_account: nil, type: nil); end
        end
        class RetrieveParams < Stripe::RequestParams
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        # Create a new FinancialAddress for a FinancialAccount.
        #
        # ** raises FinancialAccountNotOpenError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def create(params = {}, opts = {}); end

        # List all FinancialAddresses for a FinancialAccount.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in its unexpanded state, revealing only the last 4 digits of the account number.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end