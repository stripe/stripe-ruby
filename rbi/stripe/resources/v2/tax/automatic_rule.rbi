# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      # An AutomaticRule holds automatic Tax configuration for a BillableItem.
      class AutomaticRule < APIResource
        # The ID of the BillableItem.
        sig { returns(String) }
        attr_reader :billable_item
        # The time at which the AutomaticRule object was created.
        sig { returns(String) }
        attr_reader :created
        # The ID of the AutomaticRule object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The status of the AutomaticRule object.
        sig { returns(String) }
        attr_reader :status
        # A TaxCode object that will be used for automatic tax calculations.
        sig { returns(String) }
        attr_reader :tax_code
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end