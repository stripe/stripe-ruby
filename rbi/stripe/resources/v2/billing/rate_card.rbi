# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Rate Card represents a versioned set of usage-based prices (rates). Each rate is associated with one Metered Item and
      # defines how much to charge for usage of that item. After you've set up a RateCard, you can subscribe customers to it
      # by creating a Rate Card Subscription.
      class RateCard < APIResource
        # Whether this RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
        sig { returns(T::Boolean) }
        def active; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        # A customer-facing name for the Rate Card.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(String) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The ID of this rate card's most recently created version.
        sig { returns(String) }
        def latest_version; end
        # The ID of the Rate Card Version that will be used by all subscriptions when no specific version is specified.
        sig { returns(String) }
        def live_version; end
        # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The interval for assessing service. For example, a monthly Rate Card with a rate of $1 for the first 10 "workloads"
        # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
        # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
        # while the billing interval in Cadence deals with the rate the customer is billed.
        sig { returns(String) }
        def service_interval; end
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        sig { returns(Integer) }
        def service_interval_count; end
        # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
        sig { returns(String) }
        def tax_behavior; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end