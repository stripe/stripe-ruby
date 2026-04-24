# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever a portal session is created.
    class V1BillingPortalSessionCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.billing_portal.session.created"
      end
    end

    # Occurs whenever a portal session is created.
    class V1BillingPortalSessionCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.billing_portal.session.created"
      end
    end
  end
end
