# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Billing Profile is a representation of how a bill is paid, separating payment behavior from customer identity.
      class Profile < APIResource
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # The ID of the customer object.
        sig { returns(T.nilable(String)) }
        def customer; end
        # The ID of the payment method object.
        sig { returns(T.nilable(String)) }
        def default_payment_method; end
        # A customer-facing name for the billing profile.
        # Maximum length of 250 characters.
        sig { returns(T.nilable(String)) }
        def display_name; end
        # The ID of the billing profile object.
        sig { returns(String) }
        def id; end
        # An internal key you can use to search for a particular billing profile.
        # Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current status of the billing profile.
        sig { returns(String) }
        def status; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end