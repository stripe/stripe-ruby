# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class IntegrationConfigurationService < StripeService
        # Retrieve the tax integration configuration for this account.
        sig {
          params(params: T.any(::Stripe::V2::Tax::IntegrationConfigurationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::IntegrationConfiguration)
         }
        def retrieve(params = {}, opts = {}); end

        # Update the tax integration configuration for this account.
        sig {
          params(params: T.any(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::IntegrationConfiguration)
         }
        def update(params = {}, opts = {}); end
      end
    end
  end
end