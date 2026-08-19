# frozen_string_literal: true

module Stripe
  class UnhandledNotificationDetails
    attr_reader :is_known_event_type

    def initialize(is_known_event_type)
      @is_known_event_type = is_known_event_type
    end
  end

  # Shared internal registration and dispatch machinery for the two user-facing event handlers.
  class StripeEventNotificationHandlerBase
    def initialize(client, &fallback_callback)
      raise ArgumentError, "You must pass a block to act as a fallback" if fallback_callback.nil?

      @client = client
      @fallback_callback = fallback_callback

      @registered_handlers = {}
      @has_handled_events = false
    end

    def registered_event_types
      @registered_handlers.keys.sort
    end

    private def register(event_type, &handler)
      raise "Cannot register new event handlers after handling events" if @has_handled_events
      if @registered_handlers.key?(event_type)
        raise ArgumentError, "Handler already registered for event type: #{event_type}"
      end

      @registered_handlers[event_type] = handler
    end

    private def dispatch(notif)
      event_client = @client.with_stripe_context(notif.context)

      handler = @registered_handlers[notif.type]
      if handler
        handler.call(notif, event_client)
      else
        @fallback_callback.call(notif, event_client,
                                UnhandledNotificationDetails.new(!notif.is_a?(Stripe::Events::UnknownEventNotification)))
      end
    end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    def on_v1_billing_meter_error_report_triggered(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.error_report_triggered", &handler)
    end

    def on_v1_billing_meter_no_meter_found(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.no_meter_found", &handler)
    end

    def on_v2_commerce_product_catalog_imports_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.commerce.product_catalog.imports.failed", &handler)
    end

    def on_v2_commerce_product_catalog_imports_processing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.commerce.product_catalog.imports.processing", &handler)
    end

    def on_v2_commerce_product_catalog_imports_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.commerce.product_catalog.imports.succeeded", &handler)
    end

    def on_v2_commerce_product_catalog_imports_succeeded_with_errors(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.commerce.product_catalog.imports.succeeded_with_errors", &handler)
    end

    def on_v2_core_account_closed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.closed", &handler)
    end

    def on_v2_core_account_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.created", &handler)
    end

    def on_v2_core_account_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.updated", &handler)
    end

    def on_v2_core_account_including_configuration_customer_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.customer].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_customer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.customer].updated", &handler)
    end

    def on_v2_core_account_including_configuration_merchant_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.merchant].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_merchant_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.merchant].updated", &handler)
    end

    def on_v2_core_account_including_configuration_recipient_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.recipient].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_recipient_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.recipient].updated", &handler)
    end

    def on_v2_core_account_including_defaults_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[defaults].updated", &handler)
    end

    def on_v2_core_account_including_future_requirements_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[future_requirements].updated", &handler)
    end

    def on_v2_core_account_including_identity_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[identity].updated", &handler)
    end

    def on_v2_core_account_including_requirements_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[requirements].updated", &handler)
    end

    def on_v2_core_account_link_returned(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_link.returned", &handler)
    end

    def on_v2_core_account_person_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.created", &handler)
    end

    def on_v2_core_account_person_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.deleted", &handler)
    end

    def on_v2_core_account_person_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.updated", &handler)
    end

    def on_v2_core_event_destination_ping(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.event_destination.ping", &handler)
    end
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end

  # Verifies incoming webhook signatures before routing events to the callbacks
  # registered on it. This is the handler you want unless events reach you
  # through a channel that has already authenticated them.
  class StripeEventNotificationHandler < StripeEventNotificationHandlerBase
    def initialize(client, webhook_secret, &fallback_callback)
      super(client, &fallback_callback)

      raise ArgumentError, "webhook_secret must be a non-empty string" if webhook_secret.nil? || webhook_secret.empty?

      @webhook_secret = webhook_secret
    end

    def self.without_verification(client, &fallback_callback)
      StripeEventNotificationHandlerWithoutVerification.send(:new, client, &fallback_callback)
    end

    def handle(webhook_body, sig_header)
      # set before parsing, so that even a failed parse locks out registration.
      # we're ok with this not being a thread-safe write since registering
      # handlers should happen synchronously on startup before any multi-threaded reads happen
      @has_handled_events = true

      dispatch(@client.parse_event_notification(
                 webhook_body,
                 sig_header,
                 @webhook_secret
               ))
    end
  end

  # A variant of StripeEventNotificationHandler that parses events without verifying webhook signatures. Intended for pre-authenticated channels like AWS EventBridge, Azure Event Grid, or your own pre-authenticated queuing system.
  #
  # Prefer `StripeEventNotificationHandler#without_verification()` or `client.notification_handler_without_verification()` instead of constructing it directly.
  class StripeEventNotificationHandlerWithoutVerification < StripeEventNotificationHandlerBase
    # Construct through the factories so that skipping signature verification is
    # always an explicit choice.
    private_class_method :new

    def handle(webhook_body)
      @has_handled_events = true

      dispatch(@client.parse_event_notification_without_verification(webhook_body))
    end
  end
end
