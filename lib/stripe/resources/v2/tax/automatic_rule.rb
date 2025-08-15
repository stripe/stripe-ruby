# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      # An AutomaticRule holds automatic Tax configuration for a BillableItem.
      class AutomaticRule < APIResource
        OBJECT_NAME = "v2.tax.automatic_rule"
        def self.object_name
          "v2.tax.automatic_rule"
        end

        # The ID of the BillableItem.
        attr_reader :billable_item
        # The time at which the AutomaticRule object was created.
        attr_reader :created
        # The ID of the AutomaticRule object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The status of the AutomaticRule object.
        attr_reader :status
        # A TaxCode object that will be used for automatic tax calculations.
        attr_reader :tax_code
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
