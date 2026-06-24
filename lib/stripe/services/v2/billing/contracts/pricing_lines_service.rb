# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        class PricingLinesService < StripeService
          attr_reader :quantity_changes

          def initialize(requestor)
            super
            @quantity_changes = Stripe::V2::Billing::Contracts::PricingLines::QuantityChangeService
                                .new(@requestor)
          end
        end
      end
    end
  end
end
