# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      # A ManualRule holds tax rates for a BillableItem. It can hold at most 5 distinct tax rates.
      class ManualRule < APIResource
        OBJECT_NAME = "v2.tax.manual_rule"
        def self.object_name
          "v2.tax.manual_rule"
        end

        class Location < ::Stripe::StripeObject
          # Country ISO-3166.
          attr_reader :country
          # State ISO-3166.
          attr_reader :state

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Product < ::Stripe::StripeObject
          # The type of the product.
          attr_reader :type
          # The licensed item identifier.
          attr_reader :licensed_item
          # The metered item identifier.
          attr_reader :metered_item
          # The tax code for the product.
          attr_reader :tax_code

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ScheduledTaxRate < ::Stripe::StripeObject
          class Rate < ::Stripe::StripeObject
            # Country of the tax rate.
            attr_reader :country
            # Description of the tax rate.
            attr_reader :description
            # Display name of the tax rate as it will be shown on the invoice.
            attr_reader :display_name
            # Jurisdiction of the tax rate should apply as it will be shown on the invoice.
            attr_reader :jurisdiction
            # Percentage of the tax rate. Must be positive and maximum of 4 decimal points.
            attr_reader :percentage
            # State of the tax rate.
            attr_reader :state

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The tax rates to be applied.
          attr_reader :rates
          # The start time for the tax rate.
          attr_reader :starts_at

          def self.inner_class_types
            @inner_class_types = { rates: Rate }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time at which the ManualRule object was created.
        attr_reader :created
        # The ID of the ManualRule object.
        attr_reader :id
        # Location where the rule applies.
        attr_reader :location
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Products associated with the rule.
        attr_reader :products
        # Tax rates to be applied.
        attr_reader :scheduled_tax_rates
        # The status of the ManualRule object.
        attr_reader :status
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            location: Location,
            products: Product,
            scheduled_tax_rates: ScheduledTaxRate,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
