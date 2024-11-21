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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_reader :currency
          # A positive integer representing the amount.
          sig { returns(Integer) }
          attr_reader :value
        end
        # The monetary amount.
        sig { returns(T.nilable(Monetary)) }
        attr_reader :monetary
        # The type of this amount. We currently only support `monetary` billing credits.
        sig { returns(String) }
        attr_reader :type
      end
      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          # The price type for which credit grants can apply. We currently only support the `metered` price type. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
          sig { returns(String) }
          attr_reader :price_type
        end
        # Attribute for field scope
        sig { returns(Scope) }
        attr_reader :scope
      end
      # Attribute for field amount
      sig { returns(Amount) }
      attr_reader :amount

      # Attribute for field applicability_config
      sig { returns(ApplicabilityConfig) }
      attr_reader :applicability_config

      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      sig { returns(String) }
      attr_reader :category

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # ID of the customer receiving the billing credits.
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer

      # The time when the billing credits become effective—when they're eligible for use.
      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_at

      # The time when the billing credits expire. If not present, the billing credits don't expire.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # A descriptive name shown in dashboard.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # ID of the test clock this credit grant belongs to.
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      attr_reader :test_clock

      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated

      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      sig { returns(T.nilable(Integer)) }
      attr_reader :voided_at
    end
  end
end