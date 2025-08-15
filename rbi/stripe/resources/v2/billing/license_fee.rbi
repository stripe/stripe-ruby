# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFee < APIResource
        class Tier < Stripe::StripeObject
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_reader :flat_amount
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_reader :unit_amount
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          sig { returns(T.nilable(String)) }
          attr_reader :up_to_decimal
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          sig { returns(T.nilable(String)) }
          attr_reader :up_to_inf
        end
        class TransformQuantity < Stripe::StripeObject
          # Divide usage by this number.
          sig { returns(Integer) }
          attr_reader :divide_by
          # After division, round the result up or down.
          sig { returns(String) }
          attr_reader :round
        end
        # Whether this LicenseFee is active. Inactive LicenseFees cannot be used in new activations or be modified.
        sig { returns(T::Boolean) }
        attr_reader :active
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # The currency of this LicenseFee.
        sig { returns(String) }
        attr_reader :currency
        # A customer-facing name for the LicenseFee.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(String) }
        attr_reader :display_name
        # The ID of the LicenseFee.
        sig { returns(String) }
        attr_reader :id
        # The ID of the LicenseFee's most recently created version.
        sig { returns(String) }
        attr_reader :latest_version
        # The LicensedItem that this license fee binds to.
        sig { returns(Stripe::V2::Billing::LicensedItem) }
        attr_reader :licensed_item
        # The ID of the version that will be used by all Subscriptions when no specific version is specified.
        sig { returns(String) }
        attr_reader :live_version
        # An internal key you can use to search for a particular LicenseFee. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The interval for assessing service.
        sig { returns(String) }
        attr_reader :service_interval
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        sig { returns(Integer) }
        attr_reader :service_interval_count
        # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
        sig { returns(String) }
        attr_reader :tax_behavior
        # Defines whether the tiering price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        sig { returns(T.nilable(String)) }
        attr_reader :tiering_mode
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        sig { returns(T::Array[Tier]) }
        attr_reader :tiers
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        sig { returns(T.nilable(TransformQuantity)) }
        attr_reader :transform_quantity
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end