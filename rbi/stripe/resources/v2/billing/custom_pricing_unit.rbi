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
        def active; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Description that customers will see in the invoice line item.
        # Maximum length of 10 characters.
        sig { returns(String) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # An internal key you can use to search for a particular Custom Pricing Unit.
        # Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end