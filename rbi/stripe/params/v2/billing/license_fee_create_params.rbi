# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeCreateParams < ::Stripe::RequestParams
        class Tier < ::Stripe::RequestParams
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def flat_amount; end
          sig { params(_flat_amount: T.nilable(String)).returns(T.nilable(String)) }
          def flat_amount=(_flat_amount); end
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount=(_unit_amount); end
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          sig { returns(T.nilable(String)) }
          def up_to_decimal; end
          sig { params(_up_to_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def up_to_decimal=(_up_to_decimal); end
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          sig { returns(T.nilable(String)) }
          def up_to_inf; end
          sig { params(_up_to_inf: T.nilable(String)).returns(T.nilable(String)) }
          def up_to_inf=(_up_to_inf); end
          sig {
            params(flat_amount: T.nilable(String), unit_amount: T.nilable(String), up_to_decimal: T.nilable(String), up_to_inf: T.nilable(String)).void
           }
          def initialize(
            flat_amount: nil,
            unit_amount: nil,
            up_to_decimal: nil,
            up_to_inf: nil
          ); end
        end
        class TransformQuantity < ::Stripe::RequestParams
          # Divide usage by this number.
          sig { returns(Integer) }
          def divide_by; end
          sig { params(_divide_by: Integer).returns(Integer) }
          def divide_by=(_divide_by); end
          # After division, round the result up or down.
          sig { returns(String) }
          def round; end
          sig { params(_round: String).returns(String) }
          def round=(_round); end
          sig { params(divide_by: Integer, round: String).void }
          def initialize(divide_by: nil, round: nil); end
        end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # A customer-facing name for the License Fee.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(String) }
        def display_name; end
        sig { params(_display_name: String).returns(String) }
        def display_name=(_display_name); end
        # The Licensed Item that this License Fee binds to.
        sig { returns(String) }
        def licensed_item; end
        sig { params(_licensed_item: String).returns(String) }
        def licensed_item=(_licensed_item); end
        # An internal key you can use to search for a particular license fee. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The interval for assessing service. For example, a monthly license fee with a rate of $1 for the first 10 "workloads"
        # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
        # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
        # while the billing interval in Cadence deals with the rate the customer is billed.
        sig { returns(String) }
        def service_interval; end
        sig { params(_service_interval: String).returns(String) }
        def service_interval=(_service_interval); end
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        sig { returns(Integer) }
        def service_interval_count; end
        sig { params(_service_interval_count: Integer).returns(Integer) }
        def service_interval_count=(_service_interval_count); end
        # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
        sig { returns(String) }
        def tax_behavior; end
        sig { params(_tax_behavior: String).returns(String) }
        def tax_behavior=(_tax_behavior); end
        # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        sig { returns(T.nilable(String)) }
        def tiering_mode; end
        sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
        def tiering_mode=(_tiering_mode); end
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        sig { returns(T.nilable(T::Array[V2::Billing::LicenseFeeCreateParams::Tier])) }
        def tiers; end
        sig {
          params(_tiers: T.nilable(T::Array[V2::Billing::LicenseFeeCreateParams::Tier])).returns(T.nilable(T::Array[V2::Billing::LicenseFeeCreateParams::Tier]))
         }
        def tiers=(_tiers); end
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        sig { returns(T.nilable(V2::Billing::LicenseFeeCreateParams::TransformQuantity)) }
        def transform_quantity; end
        sig {
          params(_transform_quantity: T.nilable(V2::Billing::LicenseFeeCreateParams::TransformQuantity)).returns(T.nilable(V2::Billing::LicenseFeeCreateParams::TransformQuantity))
         }
        def transform_quantity=(_transform_quantity); end
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        sig { returns(T.nilable(String)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount=(_unit_amount); end
        sig {
          params(currency: String, display_name: String, licensed_item: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), service_interval: String, service_interval_count: Integer, tax_behavior: String, tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[V2::Billing::LicenseFeeCreateParams::Tier]), transform_quantity: T.nilable(V2::Billing::LicenseFeeCreateParams::TransformQuantity), unit_amount: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          display_name: nil,
          licensed_item: nil,
          lookup_key: nil,
          metadata: nil,
          service_interval: nil,
          service_interval_count: nil,
          tax_behavior: nil,
          tiering_mode: nil,
          tiers: nil,
          transform_quantity: nil,
          unit_amount: nil
        ); end
      end
    end
  end
end