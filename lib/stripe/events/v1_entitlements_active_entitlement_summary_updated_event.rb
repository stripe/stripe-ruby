# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever a customer's entitlements change.
    class V1EntitlementsActiveEntitlementSummaryUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.entitlements.active_entitlement_summary.updated"
      end
    end

    # Occurs whenever a customer's entitlements change.
    class V1EntitlementsActiveEntitlementSummaryUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.entitlements.active_entitlement_summary.updated"
      end
    end
  end
end
