# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeService < StripeService
        attr_reader :versions
        class ListParams < Stripe::RequestParams
          # Filter by licensed item.
          sig { returns(T.nilable(String)) }
          attr_accessor :licensed_item
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Filter by lookup keys.
          # You can specify up to 10 lookup keys.
          sig { returns(T::Array[String]) }
          attr_accessor :lookup_keys
          sig {
            params(licensed_item: T.nilable(String), limit: T.nilable(Integer), lookup_keys: T::Array[String]).void
           }
          def initialize(licensed_item: nil, limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :flat_amount
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :up_to_decimal
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :up_to_inf
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
          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            sig { returns(Integer) }
            attr_accessor :divide_by
            # After division, round the result up or down.
            sig { returns(String) }
            attr_accessor :round
            sig { params(divide_by: Integer, round: String).void }
            def initialize(divide_by: nil, round: nil); end
          end
          # The currency of this LicenseFee.
          sig { returns(String) }
          attr_accessor :currency
          # A customer-facing name for the LicenseFee.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          sig { returns(String) }
          attr_accessor :display_name
          # The LicensedItem that this rate binds to.
          sig { returns(String) }
          attr_accessor :licensed_item
          # An internal key you can use to search for a particular LicenseFee. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The interval for assessing service. For example, a monthly LicenseFee with a rate of $1 for the first 10 "workloads"
          # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
          # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
          # while the billing interval in Cadence deals with the rate the customer is billed.
          sig { returns(String) }
          attr_accessor :service_interval
          # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
          # order to specify quarterly service.
          sig { returns(Integer) }
          attr_accessor :service_interval_count
          # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          sig { returns(T.nilable(String)) }
          attr_accessor :tiering_mode
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Billing::LicenseFeeService::CreateParams::Tier]))
           }
          attr_accessor :tiers
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicenseFeeService::CreateParams::TransformQuantity))
           }
          attr_accessor :transform_quantity
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount
          sig {
            params(currency: String, display_name: String, licensed_item: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), service_interval: String, service_interval_count: Integer, tax_behavior: String, tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::LicenseFeeService::CreateParams::Tier]), transform_quantity: T.nilable(::Stripe::V2::Billing::LicenseFeeService::CreateParams::TransformQuantity), unit_amount: T.nilable(String)).void
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
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :flat_amount
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :up_to_decimal
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :up_to_inf
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
          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            sig { returns(Integer) }
            attr_accessor :divide_by
            # After division, round the result up or down.
            sig { returns(String) }
            attr_accessor :round
            sig { params(divide_by: Integer, round: String).void }
            def initialize(divide_by: nil, round: nil); end
          end
          # A customer-facing name for the LicenseFee.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          sig { returns(String) }
          attr_accessor :display_name
          # Changes the version that new LicenseFee will use. Providing `live_version = "latest"` will set the
          # LicenseFee's `live_version` to its latest version.
          sig { returns(T.nilable(String)) }
          attr_accessor :live_version
          # An internal key you can use to search for a particular LicenseFee. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          sig { returns(T.nilable(String)) }
          attr_accessor :tiering_mode
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Billing::LicenseFeeService::UpdateParams::Tier]))
           }
          attr_accessor :tiers
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicenseFeeService::UpdateParams::TransformQuantity))
           }
          attr_accessor :transform_quantity
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount
          sig {
            params(display_name: String, live_version: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::LicenseFeeService::UpdateParams::Tier]), transform_quantity: T.nilable(::Stripe::V2::Billing::LicenseFeeService::UpdateParams::TransformQuantity), unit_amount: T.nilable(String)).void
           }
          def initialize(
            display_name: nil,
            live_version: nil,
            lookup_key: nil,
            metadata: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          ); end
        end
        # Create a LicenseFee object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicenseFeeService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicenseFee)
         }
        def create(params = {}, opts = {}); end

        # List all LicenseFee objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicenseFeeService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a LicenseFee object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicenseFeeService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicenseFee)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a LicenseFee object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicenseFeeService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicenseFee)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end