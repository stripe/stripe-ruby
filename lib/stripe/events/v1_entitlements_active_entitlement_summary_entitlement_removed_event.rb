# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an entitlement is removed from a customer's active entitlement summary.
    class V1EntitlementsActiveEntitlementSummaryEntitlementRemovedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.entitlements.active_entitlement_summary.entitlement_removed"
      end
    end

    # Occurs when an entitlement is removed from a customer's active entitlement summary.
    class V1EntitlementsActiveEntitlementSummaryEntitlementRemovedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.entitlements.active_entitlement_summary.entitlement_removed"
      end
    end
  end
end
