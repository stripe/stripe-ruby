# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class RateService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            attr_accessor :limit
            # Optionally filter by a Metered Item.
            attr_accessor :metered_item
            # Optionally filter by a RateCard version. If not specified, defaults to the latest version.
            attr_accessor :rate_card_version

            def initialize(limit: nil, metered_item: nil, rate_card_version: nil)
              @limit = limit
              @metered_item = metered_item
              @rate_card_version = rate_card_version
            end
          end

          class CreateParams < Stripe::RequestParams
            class CustomPricingUnitAmount < Stripe::RequestParams
              # The id of the custom pricing unit.
              attr_accessor :id
              # The unit value for the custom pricing unit, as a string.
              attr_accessor :value

              def initialize(id: nil, value: nil)
                @id = id
                @value = value
              end
            end

            class Tier < Stripe::RequestParams
              # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
              attr_accessor :flat_amount
              # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
              # most 12 decimal places.
              attr_accessor :unit_amount
              # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
              # be set.
              attr_accessor :up_to_decimal
              # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
              attr_accessor :up_to_inf

              def initialize(flat_amount: nil, unit_amount: nil, up_to_decimal: nil, up_to_inf: nil)
                @flat_amount = flat_amount
                @unit_amount = unit_amount
                @up_to_decimal = up_to_decimal
                @up_to_inf = up_to_inf
              end
            end

            class TransformQuantity < Stripe::RequestParams
              # Divide usage by this number.
              attr_accessor :divide_by
              # After division, round the result up or down.
              attr_accessor :round

              def initialize(divide_by: nil, round: nil)
                @divide_by = divide_by
                @round = round
              end
            end
            # The custom pricing unit that this rate binds to.
            attr_accessor :custom_pricing_unit_amount
            # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            attr_accessor :metadata
            # The Metered Item that this rate binds to.
            attr_accessor :metered_item
            # The ID of the price object to take price information from. The price must have the same interval as the rate card.
            # Updates to the Price will not be reflected in the Rate Card or its rates.
            attr_accessor :price
            # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
            # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
            # grows into new tiers. Can only be set if `tiers` is set.
            attr_accessor :tiering_mode
            # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
            attr_accessor :tiers
            # Apply a transformation to the reported usage or set quantity before computing the amount billed.
            attr_accessor :transform_quantity
            # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
            # places. Cannot be set if `tiers` is provided.
            attr_accessor :unit_amount

            def initialize(
              custom_pricing_unit_amount: nil,
              metadata: nil,
              metered_item: nil,
              price: nil,
              tiering_mode: nil,
              tiers: nil,
              transform_quantity: nil,
              unit_amount: nil
            )
              @custom_pricing_unit_amount = custom_pricing_unit_amount
              @metadata = metadata
              @metered_item = metered_item
              @price = price
              @tiering_mode = tiering_mode
              @tiers = tiers
              @transform_quantity = transform_quantity
              @unit_amount = unit_amount
            end
          end

          class DeleteParams < Stripe::RequestParams; end
          class RetrieveParams < Stripe::RequestParams; end

          # Set the Rate for a Metered Item on the latest version of a Rate Card object. This will create a new Rate Card version
          # if the Metered Item already has a rate on the Rate Card.
          def create(rate_card_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Remove an existing Rate from a Rate Card. This will create a new Rate Card Version without that Rate.
          def delete(rate_card_id, id, params = {}, opts = {})
            request(
              method: :delete,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List all Rates associated with a Rate Card for a specific version (defaults to latest). Rates remain active for all subsequent versions until a new rate is created for the same Metered Item.
          def list(rate_card_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Rate object.
          def retrieve(rate_card_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
