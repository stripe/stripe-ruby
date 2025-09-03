# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.v2_event_types_to_classes
      {
        # v2 event types: The beginning of the section generated from our OpenAPI spec
        V1BillingMeterErrorReportTriggeredEvent.lookup_type => V1BillingMeterErrorReportTriggeredEvent,
        V1BillingMeterNoMeterFoundEvent.lookup_type => V1BillingMeterNoMeterFoundEvent,
        V2CoreEventDestinationPingEvent.lookup_type => V2CoreEventDestinationPingEvent,
        # v2 event types: The end of the section generated from our OpenAPI spec
      }
    end

    def self.event_notification_types_to_classes
      {
        # event notification types: The beginning of the section generated from our OpenAPI spec
        V1BillingMeterErrorReportTriggeredEventNotification.lookup_type =>
        V1BillingMeterErrorReportTriggeredEventNotification,
        V1BillingMeterNoMeterFoundEventNotification.lookup_type =>
        V1BillingMeterNoMeterFoundEventNotification,
        V2CoreEventDestinationPingEventNotification.lookup_type =>
        V2CoreEventDestinationPingEventNotification,
        # event notification types: The end of the section generated from our OpenAPI spec
      }
    end
  end
end
