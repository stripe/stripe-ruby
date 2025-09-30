# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        # Closes a FinancialAccount with or without forwarding settings.
        #
        # ** raises NonZeroBalanceError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountCloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def close(id, params = {}, opts = {}); end

        # Creates a new FinancialAccount.
        #
        # ** raises AlreadyExistsError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def create(params = {}, opts = {}); end

        # Lists FinancialAccounts in this compartment.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing FinancialAccount.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end