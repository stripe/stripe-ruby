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
        def billable_item; end
        # The time at which the AutomaticRule object was created.
        sig { returns(String) }
        def created; end
        # The ID of the AutomaticRule object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The status of the AutomaticRule object.
        sig { returns(String) }
        def status; end
        # A TaxCode object that will be used for automatic tax calculations.
        sig { returns(String) }
        def tax_code; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end