# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Rate Card represents a versioned set of usage-based prices (rates). Each rate is associated with one Metered Item and
      # defines how much to charge for usage of that item. After you've set up a RateCard, you can subscribe customers to it
      # by creating a Rate Card Subscription.
      class RateCard < APIResource
        OBJECT_NAME = "v2.billing.rate_card"
        def self.object_name
          "v2.billing.rate_card"
        end

        # Whether this RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
        attr_reader :active
        # Timestamp of when the object was created.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_reader :currency
        # A customer-facing name for the Rate Card.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # The ID of this rate card's most recently created version.
        attr_reader :latest_version
        # The ID of the Rate Card Version that will be used by all subscriptions when no specific version is specified.
        attr_reader :live_version
        # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The interval for assessing service. For example, a monthly Rate Card with a rate of $1 for the first 10 "workloads"
        # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
        # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
        # while the billing interval in Cadence deals with the rate the customer is billed.
        attr_reader :service_interval
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        attr_reader :service_interval_count
        # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
        attr_reader :tax_behavior
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
