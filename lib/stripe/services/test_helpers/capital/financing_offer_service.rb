# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Capital
      class FinancingOfferService < StripeService
        class CreateTestmodeFinancingOfferParams < Stripe::RequestParams
          # Attribute for param field advance_amount
          attr_accessor :advance_amount
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Attribute for param field fee_amount
          attr_accessor :fee_amount
          # Attribute for param field financing_type
          attr_accessor :financing_type
          # Attribute for param field state
          attr_accessor :state
          # Attribute for param field withhold_rate
          attr_accessor :withhold_rate

          def initialize(
            advance_amount: nil,
            expand: nil,
            fee_amount: nil,
            financing_type: nil,
            state: nil,
            withhold_rate: nil
          )
            @advance_amount = advance_amount
            @expand = expand
            @fee_amount = fee_amount
            @financing_type = financing_type
            @state = state
            @withhold_rate = withhold_rate
          end
        end

        class RefillTestmodeFinancingOfferParams < Stripe::RequestParams
          # Attribute for param field advance_amount
          attr_accessor :advance_amount
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Attribute for param field fee_amount
          attr_accessor :fee_amount
          # Attribute for param field financing_type
          attr_accessor :financing_type
          # Attribute for param field state
          attr_accessor :state
          # Attribute for param field withhold_rate
          attr_accessor :withhold_rate

          def initialize(
            advance_amount: nil,
            expand: nil,
            fee_amount: nil,
            financing_type: nil,
            state: nil,
            withhold_rate: nil
          )
            @advance_amount = advance_amount
            @expand = expand
            @fee_amount = fee_amount
            @financing_type = financing_type
            @state = state
            @withhold_rate = withhold_rate
          end
        end

        # Creates a testmode financing offer for a connected account.
        def create_testmode_financing_offer(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/capital/financing_offers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Refills a testmode financing offer for a connected account.
        def refill_testmode_financing_offer(financing_offer, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/capital/financing_offers/%<financing_offer>s/refill", { financing_offer: CGI.escape(financing_offer) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
