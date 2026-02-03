# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class ManualRuleCreateParams < ::Stripe::RequestParams
        class Location < ::Stripe::RequestParams
          # Country ISO-3166.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          # State ISO-3166.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig { params(country: String, state: T.nilable(String)).void }
          def initialize(country: nil, state: nil); end
        end
        class Product < ::Stripe::RequestParams
          # The type of the product.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The licensed item identifier.
          sig { returns(T.nilable(String)) }
          def licensed_item; end
          sig { params(_licensed_item: T.nilable(String)).returns(T.nilable(String)) }
          def licensed_item=(_licensed_item); end
          # The metered item identifier.
          sig { returns(T.nilable(String)) }
          def metered_item; end
          sig { params(_metered_item: T.nilable(String)).returns(T.nilable(String)) }
          def metered_item=(_metered_item); end
          # The tax code for the product.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          sig {
            params(type: String, licensed_item: T.nilable(String), metered_item: T.nilable(String), tax_code: T.nilable(String)).void
           }
          def initialize(type: nil, licensed_item: nil, metered_item: nil, tax_code: nil); end
        end
        class ScheduledTaxRate < ::Stripe::RequestParams
          class Rate < ::Stripe::RequestParams
            # Country of the tax rate.
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Description of the tax rate.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # Display name of the tax rate as it will be shown on the invoice.
            sig { returns(String) }
            def display_name; end
            sig { params(_display_name: String).returns(String) }
            def display_name=(_display_name); end
            # Jurisdiction of the tax rate should apply as it will be shown on the invoice.
            sig { returns(T.nilable(String)) }
            def jurisdiction; end
            sig { params(_jurisdiction: T.nilable(String)).returns(T.nilable(String)) }
            def jurisdiction=(_jurisdiction); end
            # Percentage of the tax rate. Must be positive and maximum of 4 decimal points.
            sig { returns(String) }
            def percentage; end
            sig { params(_percentage: String).returns(String) }
            def percentage=(_percentage); end
            # State of the tax rate.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(country: T.nilable(String), description: T.nilable(String), display_name: String, jurisdiction: T.nilable(String), percentage: String, state: T.nilable(String)).void
             }
            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              jurisdiction: nil,
              percentage: nil,
              state: nil
            ); end
          end
          # The tax rates to be applied.
          sig {
            returns(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate::Rate])
           }
          def rates; end
          sig {
            params(_rates: T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate::Rate]).returns(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate::Rate])
           }
          def rates=(_rates); end
          # The start time for the tax rate.
          sig { returns(T.nilable(String)) }
          def starts_at; end
          sig { params(_starts_at: T.nilable(String)).returns(T.nilable(String)) }
          def starts_at=(_starts_at); end
          sig {
            params(rates: T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate::Rate], starts_at: T.nilable(String)).void
           }
          def initialize(rates: nil, starts_at: nil); end
        end
        # Location where the rule applies.
        sig { returns(T.nilable(::Stripe::V2::Tax::ManualRuleCreateParams::Location)) }
        def location; end
        sig {
          params(_location: T.nilable(::Stripe::V2::Tax::ManualRuleCreateParams::Location)).returns(T.nilable(::Stripe::V2::Tax::ManualRuleCreateParams::Location))
         }
        def location=(_location); end
        # Products associated with the rule.
        sig { returns(T.nilable(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::Product])) }
        def products; end
        sig {
          params(_products: T.nilable(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::Product])).returns(T.nilable(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::Product]))
         }
        def products=(_products); end
        # Tax rates to be applied.
        sig { returns(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate]) }
        def scheduled_tax_rates; end
        sig {
          params(_scheduled_tax_rates: T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate]).returns(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate])
         }
        def scheduled_tax_rates=(_scheduled_tax_rates); end
        sig {
          params(location: T.nilable(::Stripe::V2::Tax::ManualRuleCreateParams::Location), products: T.nilable(T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::Product]), scheduled_tax_rates: T::Array[::Stripe::V2::Tax::ManualRuleCreateParams::ScheduledTaxRate]).void
         }
        def initialize(location: nil, products: nil, scheduled_tax_rates: nil); end
      end
    end
  end
end