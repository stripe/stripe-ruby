# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionService < StripeService
        # Create a new Currency Conversion in a Financial Account or the payments balance.
        #
        # ** raises FxQuoteExpiredError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::CurrencyConversion)
         }
        def create(params = {}, opts = {}); end

        # Lists all Currency Conversions that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Currency Conversion by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::CurrencyConversionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::CurrencyConversion)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end