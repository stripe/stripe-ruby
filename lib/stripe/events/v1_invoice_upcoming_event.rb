# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged&mdash;where X is determined by your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). Note: The received `Invoice` object will not have an invoice ID.
    class V1InvoiceUpcomingEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.invoice.upcoming"
      end
    end

    # Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged&mdash;where X is determined by your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). Note: The received `Invoice` object will not have an invoice ID.
    class V1InvoiceUpcomingEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.invoice.upcoming"
      end
    end
  end
end
