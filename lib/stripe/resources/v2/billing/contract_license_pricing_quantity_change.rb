# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A license pricing quantity change object returned by ListContractLicenseQuantityChanges.
      class ContractLicensePricingQuantityChange < APIResource
        OBJECT_NAME = "v2.billing.contract_license_pricing_quantity_change"
        def self.object_name
          "v2.billing.contract_license_pricing_quantity_change"
        end

        # The timestamp when this quantity change object was created.
        attr_reader :created
        # The timestamp when this quantity change takes effect.
        attr_reader :effective_at
        # The ID of the quantity change object.
        attr_reader :id
        # The ID of the license pricing.
        attr_reader :license_pricing_id
        # The type of the license pricing.
        attr_reader :license_pricing_type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the pricing line associated with this quantity change.
        attr_reader :pricing_line
        # The quantity at the effective time.
        attr_reader :quantity

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
