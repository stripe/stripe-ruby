# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A License Fee represents a versioned recurring charge for a Licensed Item, typically used for seat-based or quantity-based
      # pricing. Each License Fee defines the pricing structure (flat unit amount or tiered pricing) and service interval. After
      # creating a License Fee, you can subscribe customers to it by creating a License Fee Subscription.
      class LicenseFee < APIResource
        class ServiceCycle < ::Stripe::StripeObject
          # The interval for assessing service.
          sig { returns(String) }
          def interval; end
          # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
          # order to specify quarterly service.
          sig { returns(Integer) }
          def interval_count; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tier < ::Stripe::StripeObject
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def flat_amount; end
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def unit_amount; end
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          sig { returns(T.nilable(BigDecimal)) }
          def up_to_decimal; end
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          sig { returns(T.nilable(String)) }
          def up_to_inf; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {up_to_decimal: :decimal_string}
          end
        end
        class TransformQuantity < ::Stripe::StripeObject
          # Divide usage by this number.
          sig { returns(Integer) }
          def divide_by; end
          # After division, round the result up or down.
          sig { returns(String) }
          def round; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {divide_by: :int64_string}
          end
        end
        # Whether this License Fee is active. Inactive License Fees cannot be used in new activations or be modified.
        sig { returns(T::Boolean) }
        def active; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        # A customer-facing name for the license fee.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(String) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # A Licensed Item represents a billable item whose pricing is based on license fees. You can use license fees
        # to specify the pricing and create subscriptions to these items.
        sig { returns(::Stripe::V2::Billing::LicensedItem) }
        def licensed_item; end
        # The ID of the License Fee Version that will be used by all subscriptions when no specific version is specified.
        sig { returns(String) }
        def live_version; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # An internal key you can use to search for a particular License Fee. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The service cycle configuration for this License Fee.
        sig { returns(ServiceCycle) }
        def service_cycle; end
        # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
        sig { returns(String) }
        def tax_behavior; end
        # Defines whether the tiering price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        sig { returns(T.nilable(String)) }
        def tiering_mode; end
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        sig { returns(T::Array[Tier]) }
        def tiers; end
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        sig { returns(T.nilable(TransformQuantity)) }
        def transform_quantity; end
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        sig { returns(T.nilable(String)) }
        def unit_amount; end
      end
    end
  end
end