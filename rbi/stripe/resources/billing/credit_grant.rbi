# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A credit grant is an API resource that documents the allocation of some billing credits to a customer.
    #
    # Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
    class CreditGrant < APIResource
      class Amount < Stripe::StripeObject
        class Monetary < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :currency
          sig { returns(Integer) }
          attr_reader :value
        end
        sig { returns(T.nilable(Monetary)) }
        attr_reader :monetary
        sig { returns(String) }
        attr_reader :type
      end
      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :price_type
        end
        sig { returns(Scope) }
        attr_reader :scope
      end
      sig { returns(Amount) }
      # Attribute for field amount
      attr_reader :amount
      sig { returns(ApplicabilityConfig) }
      # Attribute for field applicability_config
      attr_reader :applicability_config
      sig { returns(String) }
      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      attr_reader :category
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.any(String, Stripe::Customer)) }
      # ID of the customer receiving the billing credits.
      attr_reader :customer
      sig { returns(T.nilable(Integer)) }
      # The time when the billing credits become effective-when they're eligible for use.
      attr_reader :effective_at
      sig { returns(T.nilable(Integer)) }
      # The time when the billing credits expire. If not present, the billing credits don't expire.
      attr_reader :expires_at
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(T.nilable(String)) }
      # A descriptive name shown in dashboard.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      # ID of the test clock this credit grant belongs to.
      attr_reader :test_clock
      sig { returns(Integer) }
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
      sig { returns(T.nilable(Integer)) }
      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      attr_reader :voided_at
    end
  end
end