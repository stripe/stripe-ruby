# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardCreateParams < ::Stripe::RequestParams
        # The currency of this RateCard.
        attr_accessor :currency
        # A customer-facing name for the RateCard.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The interval for assessing service. For example, a monthly RateCard with a rate of $1 for the first 10 "workloads"
        # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
        # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
        # while the billing interval in Cadence deals with the rate the customer is billed.
        attr_accessor :service_interval
        # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
        # order to specify quarterly service.
        attr_accessor :service_interval_count
        # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
        attr_accessor :tax_behavior

        def initialize(
          currency: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil,
          service_interval: nil,
          service_interval_count: nil,
          tax_behavior: nil
        )
          @currency = currency
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
          @service_interval = service_interval
          @service_interval_count = service_interval_count
          @tax_behavior = tax_behavior
        end
      end
    end
  end
end
