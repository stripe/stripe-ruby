# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        class LicensePricingService < StripeService
          attr_reader :quantity_changes

          def initialize(requestor)
            super
            @quantity_changes = Stripe::V2::Billing::Contracts::LicensePricing::QuantityChangeService
                                .new(@requestor)
          end
        end
      end
    end
  end
end
