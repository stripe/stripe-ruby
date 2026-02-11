# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A rate card custom pricing unit overage rate defines the conversion rate from a custom pricing unit
      # to fiat currency when credits are exhausted. This enables automatic overage charges
      # at a configurable per-unit rate.
      class RateCardCustomPricingUnitOverageRate < APIResource
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # The ID of the custom pricing unit this overage rate applies to.
        sig { returns(String) }
        def custom_pricing_unit; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A one-time item represents a product that can be charged as a one-time line item,
        # used for overage charges when custom pricing unit credits are exhausted.
        sig { returns(::Stripe::V2::Billing::OneTimeItem) }
        def one_time_item; end
        # The ID of the Rate Card this overage rate belongs to.
        sig { returns(String) }
        def rate_card; end
        # The ID of the Rate Card Version this overage rate was created on.
        sig { returns(String) }
        def rate_card_version; end
        # The per-unit amount to charge for overages, represented as a decimal string in minor currency units with at most 12 decimal places.
        sig { returns(String) }
        def unit_amount; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end