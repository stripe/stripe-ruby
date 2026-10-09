# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged&mdash;where X is determined by your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). Note: The received `Invoice` object will not have an invoice ID.
    class V1InvoiceUpcomingEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.invoice.upcoming"
      end

      class V1InvoiceUpcomingEventData < ::Stripe::StripeObject
        # The ID of the customer this upcoming invoice is associated with.
        attr_reader :customer
        # The ID of the subscription, if any.
        attr_reader :subscription

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V1InvoiceUpcomingEventData }
      end
      attr_reader :data
    end

    # Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged&mdash;where X is determined by your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). Note: The received `Invoice` object will not have an invoice ID.
    class V1InvoiceUpcomingEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.invoice.upcoming"
      end
    end
  end
end
