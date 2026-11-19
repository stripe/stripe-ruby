# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Billing Group Invoice references an empty invoice created with the billing group's settings.
      class GroupInvoice < APIResource
        # Timestamp of when the BillingGroupInvoice object was created.
        sig { returns(String) }
        def created; end
        # The ID of the BillingGroupInvoice object.
        sig { returns(String) }
        def id; end
        # The ID of the created Invoice object.
        sig { returns(String) }
        def invoice_id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
      end
    end
  end
end