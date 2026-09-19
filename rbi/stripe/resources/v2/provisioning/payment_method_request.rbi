# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The result of an in-progress request for a customer to authorize a new payment method.
      class PaymentMethodRequest < APIResource
        # URL for the customer to complete payment method authorization.
        sig { returns(String) }
        def checkout_session_url; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Status of the payment method request.
        sig { returns(String) }
        def status; end
      end
    end
  end
end