# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class CustomPricingUnitOverageRateService < StripeService
          # Create a Rate Card Custom Pricing Unit Overage Rate on a Rate Card.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::CustomPricingUnitOverageRateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::RateCardCustomPricingUnitOverageRate)
           }
          def create(rate_card_id, params = {}, opts = {}); end

          # Delete a Rate Card Custom Pricing Unit Overage Rate from a Rate Card.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::CustomPricingUnitOverageRateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::DeletedObject)
           }
          def delete(rate_card_id, id, params = {}, opts = {}); end

          # List all Rate Card Custom Pricing Unit Overage Rates on a Rate Card.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::CustomPricingUnitOverageRateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(rate_card_id, params = {}, opts = {}); end

          # Retrieve a Rate Card Custom Pricing Unit Overage Rate from a Rate Card.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::CustomPricingUnitOverageRateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::RateCardCustomPricingUnitOverageRate)
           }
          def retrieve(rate_card_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end