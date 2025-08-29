# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class Profile < APIResource
        OBJECT_NAME = "v2.billing.profile"
        def self.object_name
          "v2.billing.profile"
        end

        # Timestamp of when the object was created.
        attr_reader :created
        # The ID of the customer object.
        attr_reader :customer
        # The ID of the payment method object.
        attr_reader :default_payment_method
        # A customer-facing name for the billing profile.
        # Maximum length of 250 characters.
        attr_reader :display_name
        # The ID of the billing profile object.
        attr_reader :id
        # An internal key you can use to search for a particular billing profile.
        # Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current status of the billing profile.
        attr_reader :status
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

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
