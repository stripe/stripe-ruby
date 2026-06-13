# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A license pricing quantity change object returned by ListContractLicenseQuantityChanges.
      class ContractLicensePricingQuantityChange < APIResource
        # The timestamp when this quantity change object was created.
        sig { returns(String) }
        def created; end
        # The timestamp when this quantity change takes effect.
        sig { returns(String) }
        def effective_at; end
        # The ID of the quantity change object.
        sig { returns(String) }
        def id; end
        # The ID of the license pricing.
        sig { returns(String) }
        def license_pricing_id; end
        # The type of the license pricing.
        sig { returns(String) }
        def license_pricing_type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the pricing line associated with this quantity change.
        sig { returns(String) }
        def pricing_line; end
        # The quantity at the effective time.
        sig { returns(Integer) }
        def quantity; end
      end
    end
  end
end