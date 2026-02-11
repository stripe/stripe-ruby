# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardService < StripeService
        attr_reader :custom_pricing_unit_overage_rates
        attr_reader :rates
        attr_reader :versions
        # Create a Rate Card object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::RateCard)
         }
        def create(params = {}, opts = {}); end

        # List all Rate Card objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve the latest version of a Rate Card object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::RateCard)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Rate Card object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::RateCard)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end