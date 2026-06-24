# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        module PricingLines
          class QuantityChangeListContractPricingLineQuantityChangesParams < ::Stripe::RequestParams
            # The limit for the number of results per page.
            attr_accessor :limit

            def initialize(limit: nil)
              @limit = limit
            end
          end
        end
      end
    end
  end
end
