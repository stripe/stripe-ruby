# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlan < APIResource
        # Whether the PricingPlan is active.
        sig { returns(T::Boolean) }
        def active; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # The currency of the PricingPlan.
        sig { returns(String) }
        def currency; end
        # A description for pricing plan subscription.
        # Maximum length of 500 characters.
        sig { returns(T.nilable(String)) }
        def description; end
        # Display name of the PricingPlan.
        sig { returns(String) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The ID of the latest version of the PricingPlan.
        sig { returns(String) }
        def latest_version; end
        # The ID of the live version of the PricingPlan.
        sig { returns(T.nilable(String)) }
        def live_version; end
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
        sig { returns(String) }
        def tax_behavior; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end