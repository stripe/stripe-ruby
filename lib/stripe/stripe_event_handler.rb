# frozen_string_literal: true

module Stripe
  class StripeEventHandler
    def initialize(client, webhook_secret)
      @client = client
      @registered_handlers = {}
      @webhook_secret = webhook_secret
    end

    def handle(webhook_body, sig_header)
      @client.parse_event_notification(
        webhook_body,
        sig_header,
        @webhook_secret
      )

      # TODO: rebind stripe-context temporarily
      case event_notification.type
      # event-method-routing: The beginning of the section generated from our OpenAPI spec
      when
      "v1.billing.meter.error_report_triggered"
        on_V1BillingMeterErrorReportTriggeredEventNotification(event_notification, @client)
      when
      "v1.billing.meter.no_meter_found"
        on_V1BillingMeterNoMeterFoundEventNotification(event_notification, @client)
      when
      "v2.core.event_destination.ping"
        on_V2CoreEventDestinationPingEventNotification(event_notification, @client)
        # event-method-routing: The end of the section generated from our OpenAPI spec
      else
        # only used for types that the SDK has no class for
        on_UnknownEventNotification(
          event_notification,
          @client
        )
      end
    end

    # Overwrite this method to handle events that the SDK has types for, but you've chosen not to handle with their dedicated method.
    def on_unhandled_event_notification(event_notification, _client)
      raise "Received an event that the SDK has a corresponding class for, but for which you haven't written a corresponding handler: \"#{event_notification.type}\""
    end

    def on_UnknownEventNotification(event_notification, _client)
      raise "Received event type that the SDK doesn't have a corresponding class for: \"#{event_notification.type}\". Consider upgrading your SDK to handle this more gracefully."
    end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    def on_V1BillingMeterErrorReportTriggeredEventNotification(event_notification, client)
      on_unhandled_event_notification(event_notification, client)
    end

    def on_V1BillingMeterNoMeterFoundEventNotification(event_notification, client)
      on_unhandled_event_notification(event_notification, client)
    end

    def on_V2CoreEventDestinationPingEventNotification(event_notification, client)
      on_unhandled_event_notification(event_notification, client)
    end
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
end
