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
      @pre_handle_callback = nil
    end

    def registered_event_types
      @registered_handlers.keys.sort
    end

    # Registers a function that will be run before any event-specific callbacks. A useful
    # place to store event-agnostic logic, such as logging or checking for
    # [duplicate event deliveries](https://docs.stripe.com/webhooks#handle-duplicate-events).
    #
    # Returning `true` causes handling to continue as normal; returning `false` returns from
    # `.handle()` immediately, so neither the registered callback nor the fallback callback
    # are called.
    def pre_handle(&hook)
      assert_callback_given(hook)
      assert_hasnt_handled_events

      raise ArgumentError, "A pre_handle callback is already registered" if @pre_handle_callback

      @pre_handle_callback = hook
    end

    # callbacks are expected to be registered once on startup, so registering anything
    # after handling has begun indicates a bug
    private def assert_hasnt_handled_events
      return unless @has_handled_events

      raise "Cannot register new callbacks after an event has been handled. This is indicative of a bug."
    end

    # every registration path funnels its block through here so the error stays
    # consistent across all of them
    private def assert_callback_given(callback)
      raise ArgumentError, "Block required to register a callback" if callback.nil?
    end

    private def register(event_type, &handler)
      # checked before assert_can_register so a missing block reports as such even
      # once handling has started
      assert_callback_given(handler)
      assert_hasnt_handled_events
      if @registered_handlers.key?(event_type)
        raise ArgumentError, "Callback for event type \"#{event_type}\" is already registered"
      end

      @registered_handlers[event_type] = handler
    end

    private def dispatch(notif)
      event_client = @client.with_stripe_context(notif.context)

      return if @pre_handle_callback && !@pre_handle_callback.call(notif, event_client)

      handler = @registered_handlers[notif.type]
      if handler
        handler.call(notif, event_client)
      else
        @fallback_callback.call(notif, event_client,
                                UnhandledNotificationDetails.new(!notif.is_a?(Stripe::Events::UnknownEventNotification)))
      end
    end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end

  # Verifies incoming webhook signatures before routing events to the callbacks
  # registered on it. This is the handler you want unless events reach you
  # through a channel that has already authenticated them.
  class StripeEventNotificationHandler < StripeEventNotificationHandlerBase
    def initialize(client, webhook_secret, &fallback_callback)
      super(client, &fallback_callback)

      raise ArgumentError, "webhook_secret must be a non-empty string" if Util.webhook_secret_blank?(webhook_secret)

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
