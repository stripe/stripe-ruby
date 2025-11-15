# frozen_string_literal: true
# typed: true

module Stripe
  class StripeEventHandler
    sig do
      params(client: ::Stripe::StripeClient, webhook_secret: String)
        .void
    end
    def initialize(client, webhook_secret); end
    end

    sig do
      params(
        webhook_body: String,
        sig_header: String
      )
        .void
    end
    def handle(webhook_body, sig_header); end

    sig do
      overridable.params(event_notification: ::Stripe::V2::Core::EventNotification, client: ::Stripe::StripeClient).void
    end
    def on_unhandled_event_notification(event_notification, client); end

    sig do
      overridable.params(event_notification: ::Stripe::Events::UnknownEventNotification, client: ::Stripe::StripeClient).void
    end
    def on_UnknownEventNotification(event_notification, client); end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    sig do
      overridable.params(event_notification: ::Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, client: ::Stripe::StripeClient).void
    end
    def on_V1BillingMeterErrorReportTriggeredEventNotification(event_notification, client);
    end

    sig do
      overridable.params(event_notification: ::Stripe::Events::V1BillingMeterNoMeterFoundEventNotification, client: ::Stripe::StripeClient).void
    end
    def on_V1BillingMeterNoMeterFoundEventNotification(event_notification, client);
    end

    sig do
      overridable.params(event_notification: ::Stripe::Events::V2CoreEventDestinationPingEventNotification, client: ::Stripe::StripeClient).void
    end
    def on_V2CoreEventDestinationPingEventNotification(event_notification, client);
    end


    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
