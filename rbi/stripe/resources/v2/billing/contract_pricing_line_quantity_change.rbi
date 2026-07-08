# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A quantity change object for a pricing line, returned by ListContractPricingLineQuantityChanges.
      class ContractPricingLineQuantityChange < APIResource
        class Pricing < ::Stripe::StripeObject
          # The ID of the V1 price. Present when `type` is `price`.
          sig { returns(T.nilable(String)) }
          def price; end
          # The type of pricing.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The timestamp when this quantity change object was created.
        sig { returns(String) }
        def created; end
        # The timestamp when this quantity change takes effect.
        sig { returns(String) }
        def effective_at; end
        # The id of the quantity change object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The pricing configuration for the associated pricing line.
        sig { returns(Pricing) }
        def pricing; end
        # The id of the pricing line associated with this quantity change.
        sig { returns(String) }
        def pricing_line; end
        # The quantity at the effective time.
        sig { returns(BigDecimal) }
        def quantity; end
      end
    end
  end
end