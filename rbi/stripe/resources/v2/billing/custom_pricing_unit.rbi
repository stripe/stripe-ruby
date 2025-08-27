# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # The Custom Pricing Unit object.
      class CustomPricingUnit < APIResource
        # Whether the custom pricing unit is active.
        sig { returns(T::Boolean) }
        attr_reader :active
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # Description that customers will see in the invoice line item.
        # Maximum length of 10 characters.
        sig { returns(String) }
        attr_reader :display_name
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # An internal key you can use to search for a particular Custom Pricing Unit.
        # Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end