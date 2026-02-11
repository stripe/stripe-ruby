# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class CustomPricingUnitOverageRateCreateParams < ::Stripe::RequestParams
          # The ID of the custom pricing unit this overage rate applies to.
          sig { returns(String) }
          def custom_pricing_unit; end
          sig { params(_custom_pricing_unit: String).returns(String) }
          def custom_pricing_unit=(_custom_pricing_unit); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The ID of the one-time item to use for overage line items.
          sig { returns(String) }
          def one_time_item; end
          sig { params(_one_time_item: String).returns(String) }
          def one_time_item=(_one_time_item); end
          # The per-unit amount to charge for overages, represented as a decimal string in minor currency units with at most 12 decimal places.
          sig { returns(String) }
          def unit_amount; end
          sig { params(_unit_amount: String).returns(String) }
          def unit_amount=(_unit_amount); end
          sig {
            params(custom_pricing_unit: String, metadata: T.nilable(T::Hash[String, String]), one_time_item: String, unit_amount: String).void
           }
          def initialize(
            custom_pricing_unit: nil,
            metadata: nil,
            one_time_item: nil,
            unit_amount: nil
          ); end
        end
      end
    end
  end
end