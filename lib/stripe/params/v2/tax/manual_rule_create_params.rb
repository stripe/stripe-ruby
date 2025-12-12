# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class ManualRuleCreateParams < ::Stripe::RequestParams
        class Location < ::Stripe::RequestParams
          # Country ISO-3166.
          attr_accessor :country
          # State ISO-3166.
          attr_accessor :state

          def initialize(country: nil, state: nil)
            @country = country
            @state = state
          end
        end

        class Product < ::Stripe::RequestParams
          # The type of the product.
          attr_accessor :type
          # The licensed item identifier.
          attr_accessor :licensed_item
          # The metered item identifier.
          attr_accessor :metered_item
          # The tax code for the product.
          attr_accessor :tax_code

          def initialize(type: nil, licensed_item: nil, metered_item: nil, tax_code: nil)
            @type = type
            @licensed_item = licensed_item
            @metered_item = metered_item
            @tax_code = tax_code
          end
        end

        class ScheduledTaxRate < ::Stripe::RequestParams
          class Rate < ::Stripe::RequestParams
            # Country of the tax rate.
            attr_accessor :country
            # Description of the tax rate.
            attr_accessor :description
            # Display name of the tax rate as it will be shown on the invoice.
            attr_accessor :display_name
            # Jurisdiction of the tax rate should apply as it will be shown on the invoice.
            attr_accessor :jurisdiction
            # Percentage of the tax rate. Must be positive and maximum of 4 decimal points.
            attr_accessor :percentage
            # State of the tax rate.
            attr_accessor :state

            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              jurisdiction: nil,
              percentage: nil,
              state: nil
            )
              @country = country
              @description = description
              @display_name = display_name
              @jurisdiction = jurisdiction
              @percentage = percentage
              @state = state
            end
          end
          # The tax rates to be applied.
          attr_accessor :rates
          # The start time for the tax rate.
          attr_accessor :starts_at

          def initialize(rates: nil, starts_at: nil)
            @rates = rates
            @starts_at = starts_at
          end
        end
        # Location where the rule applies.
        attr_accessor :location
        # Products associated with the rule.
        attr_accessor :products
        # Tax rates to be applied.
        attr_accessor :scheduled_tax_rates

        def initialize(location: nil, products: nil, scheduled_tax_rates: nil)
          @location = location
          @products = products
          @scheduled_tax_rates = scheduled_tax_rates
        end
      end
    end
  end
end
