# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionService < StripeService
        # Create a CurrencyConversion.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::CurrencyConversion)
         }
        def create(params = {}, opts = {}); end

        # List all CurrencyConversion on an account with the option to filter by FinancialAccount.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve details of a CurrencyConversion by id.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::CurrencyConversion)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end