# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      # A ManualRule holds tax rates for a BillableItem. It can hold at most 5 distinct tax rates.
      class ManualRule < APIResource
        class Location < ::Stripe::StripeObject
          # Country ISO-3166.
          sig { returns(String) }
          def country; end
          # State ISO-3166.
          sig { returns(T.nilable(String)) }
          def state; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Product < ::Stripe::StripeObject
          # The type of the product.
          sig { returns(String) }
          def type; end
          # The licensed item identifier.
          sig { returns(T.nilable(String)) }
          def licensed_item; end
          # The metered item identifier.
          sig { returns(T.nilable(String)) }
          def metered_item; end
          # The tax code for the product.
          sig { returns(T.nilable(String)) }
          def tax_code; end
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
            sig { returns(T.nilable(String)) }
            def country; end
            # Description of the tax rate.
            sig { returns(T.nilable(String)) }
            def description; end
            # Display name of the tax rate as it will be shown on the invoice.
            sig { returns(String) }
            def display_name; end
            # Jurisdiction of the tax rate should apply as it will be shown on the invoice.
            sig { returns(T.nilable(String)) }
            def jurisdiction; end
            # Percentage of the tax rate. Must be positive and maximum of 4 decimal points.
            sig { returns(String) }
            def percentage; end
            # State of the tax rate.
            sig { returns(T.nilable(String)) }
            def state; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The tax rates to be applied.
          sig { returns(T::Array[Rate]) }
          def rates; end
          # The start time for the tax rate.
          sig { returns(T.nilable(String)) }
          def starts_at; end
          def self.inner_class_types
            @inner_class_types = {rates: Rate}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time at which the ManualRule object was created.
        sig { returns(String) }
        def created; end
        # The ID of the ManualRule object.
        sig { returns(String) }
        def id; end
        # Location where the rule applies.
        sig { returns(T.nilable(Location)) }
        def location; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Products associated with the rule.
        sig { returns(T::Array[Product]) }
        def products; end
        # Tax rates to be applied.
        sig { returns(T::Array[ScheduledTaxRate]) }
        def scheduled_tax_rates; end
        # The status of the ManualRule object.
        sig { returns(String) }
        def status; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end