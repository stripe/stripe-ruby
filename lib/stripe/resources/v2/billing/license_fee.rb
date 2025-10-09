# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFee < APIResource
        OBJECT_NAME = "v2.billing.license_fee"
        def self.object_name
          "v2.billing.license_fee"
        end

        class Tier < ::Stripe::StripeObject
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          attr_reader :flat_amount
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          attr_reader :unit_amount
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          attr_reader :up_to_decimal
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          attr_reader :up_to_inf

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class TransformQuantity < ::Stripe::StripeObject
          # Divide usage by this number.
          attr_reader :divide_by
          # After division, round the result up or down.
          attr_reader :round

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether this License Fee is active. Inactive License Fees cannot be used in new activations or be modified.
        attr_reader :active
        # Timestamp of when the object was created.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_reader :currency
        # A customer-facing name for the license fee.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # The ID of the license fee's most recently created version.
        attr_reader :latest_version
        # A Licensed Item represents a billable item whose pricing is based on license fees. You can use license fees
        # to specify the pricing and create subscriptions to these items.
        attr_reader :licensed_item
        # The ID of the License Fee Version that will be used by all subscriptions when no specific version is specified.
        attr_reader :live_version
        # An internal key you can use to search for a particular License Fee. Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The interval for assessing service.
        attr_reader :service_interval
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        attr_reader :service_interval_count
        # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
        attr_reader :tax_behavior
        # Defines whether the tiering price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        attr_reader :tiering_mode
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        attr_reader :tiers
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        attr_reader :transform_quantity
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        attr_reader :unit_amount
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { tiers: Tier, transform_quantity: TransformQuantity }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
