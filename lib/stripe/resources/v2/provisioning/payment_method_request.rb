# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The result of an in-progress request for a customer to authorize a new payment method.
      class PaymentMethodRequest < APIResource
        OBJECT_NAME = "v2.provisioning.payment_method_request"
        def self.object_name
          "v2.provisioning.payment_method_request"
        end

        # URL for the customer to complete payment method authorization.
        attr_reader :checkout_session_url
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Status of the payment method request.
        attr_reader :status

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
