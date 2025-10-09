# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        # Create a new FinancialAddress for a FinancialAccount.
        #
        # ** raises FinancialAccountNotOpenError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def create(params = {}, opts = {}); end

        # List all FinancialAddresses for a FinancialAccount.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in its unexpanded state, revealing only the last 4 digits of the account number.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end