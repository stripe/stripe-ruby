# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Billing Group Invoice references an empty invoice created with the billing group's settings.
      class GroupInvoice < APIResource
        OBJECT_NAME = "v2.billing.group_invoice"
        def self.object_name
          "v2.billing.group_invoice"
        end

        # Timestamp of when the BillingGroupInvoice object was created.
        attr_reader :created
        # The ID of the BillingGroupInvoice object.
        attr_reader :id
        # The ID of the created Invoice object.
        attr_reader :invoice_id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object

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
