# frozen_string_literal: true
# typed: true

module Stripe
  class UnhandledNotificationDetails
    sig { returns(T::Boolean) }
    def is_known_event_type; end
  end

  # Shared internal registration and dispatch machinery for the two handlers below.
  class StripeEventNotificationHandlerBase
    sig do
      params(
        client: ::Stripe::StripeClient,
        on_unhandled_handler: T.proc.params(
          event_notification: ::Stripe::V2::Core::EventNotification,
          client: ::Stripe::StripeClient,
          details: ::Stripe::UnhandledNotificationDetails).void)
        .void
    end
    def initialize(client, &on_unhandled_handler); end

    sig { returns(T::Array[String]) }
    def registered_event_types; end

    sig { params(hook: T.proc.params(event_notification: ::Stripe::V2::Core::EventNotification, client: ::Stripe::StripeClient).returns(T::Boolean)).void }
    def pre_handle(&hook); end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end

  # Verifies incoming webhook signatures before routing events to the callbacks
  # registered on it.
  class StripeEventNotificationHandler < StripeEventNotificationHandlerBase
    sig do
      params(
        client: ::Stripe::StripeClient,
        webhook_secret: String,
        on_unhandled_handler: T.proc.params(
          event_notification: ::Stripe::V2::Core::EventNotification,
          client: ::Stripe::StripeClient,
          details: ::Stripe::UnhandledNotificationDetails).void)
        .void
    end
    def initialize(client, webhook_secret, &on_unhandled_handler); end

    sig do
      params(
        client: ::Stripe::StripeClient,
        on_unhandled_handler: T.proc.params(
          event_notification: ::Stripe::V2::Core::EventNotification,
          client: ::Stripe::StripeClient,
          details: ::Stripe::UnhandledNotificationDetails).void)
        .returns(::Stripe::StripeEventNotificationHandlerWithoutVerification)
    end
    def self.without_verification(client, &on_unhandled_handler); end

    sig do
      params(
        webhook_body: String,
        sig_header: String
      )
        .void
    end
    def handle(webhook_body, sig_header); end
  end

  # A variant of StripeEventNotificationHandler that parses events without verifying webhook signatures. Intended for pre-authenticated channels like AWS EventBridge, Azure Event Grid, or your own pre-authenticated queuing system.
  #
  # Prefer `StripeEventNotificationHandler#without_verification()` or `client.notification_handler_without_verification()` instead of constructing it directly.
  class StripeEventNotificationHandlerWithoutVerification < StripeEventNotificationHandlerBase
    sig do
      params(
        webhook_body: String
      )
        .void
    end
    def handle(webhook_body); end
  end
end
