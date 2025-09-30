# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class RateService < StripeService
          # Set the Rate for a Metered Item on the latest version of a Rate Card object. This will create a new Rate Card version
          # if the Metered Item already has a rate on the Rate Card.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardRate)
           }
          def create(rate_card_id, params = {}, opts = {}); end

          # Remove an existing Rate from a Rate Card. This will create a new Rate Card Version without that Rate.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::DeletedObject)
           }
          def delete(rate_card_id, id, params = {}, opts = {}); end

          # List all Rates associated with a Rate Card for a specific version (defaults to latest). Rates remain active for all subsequent versions until a new rate is created for the same Metered Item.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(rate_card_id, params = {}, opts = {}); end

          # Retrieve a Rate object.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardRate)
           }
          def retrieve(rate_card_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end