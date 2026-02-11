# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class CustomPricingUnitOverageRateListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Optionally filter by a RateCard version. If not specified, defaults to the latest version.
          attr_accessor :rate_card_version

          def initialize(limit: nil, rate_card_version: nil)
            @limit = limit
            @rate_card_version = rate_card_version
          end
        end
      end
    end
  end
end
