# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # List the versions of a RateCard object. Results are sorted in reverse chronological order (most recent first).
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::VersionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(rate_card_id, params = {}, opts = {}); end

          # Retrieve a specific version of a RateCard object.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::VersionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardVersion)
           }
          def retrieve(rate_card_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end