# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A RateCard represents a versioned set of usage-based prices (Rates). Each Rate is associated with one MeteredItem and
      # defines how much to charge for usage of that item. After you've set up a RateCard, you can subscribe customers to it
      # by creating a RateCardSubscription.
      class RateCard < APIResource
        # Whether this RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
        sig { returns(T::Boolean) }
        attr_reader :active
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # The currency of this RateCard.
        sig { returns(String) }
        attr_reader :currency
        # A customer-facing name for the RateCard.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(String) }
        attr_reader :display_name
        # The ID of the RateCard.
        sig { returns(String) }
        attr_reader :id
        # The ID of this RateCard's most recently created version.
        sig { returns(String) }
        attr_reader :latest_version
        # The ID of the version that will be used by all Subscriptions when no specific version is specified.
        sig { returns(String) }
        attr_reader :live_version
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The interval for assessing service. For example, a monthly RateCard with a rate of $1 for the first 10 "workloads"
        # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
        # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
        # while the billing interval in Cadence deals with the rate the customer is billed.
        sig { returns(String) }
        attr_reader :service_interval
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        sig { returns(Integer) }
        attr_reader :service_interval_count
        # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
        sig { returns(String) }
        attr_reader :tax_behavior
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end