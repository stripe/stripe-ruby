# frozen_string_literal: true

module Stripe
  class UnhandledNotificationDetails
    attr_reader :is_known_event_type

    def initialize(is_known_event_type)
      @is_known_event_type = is_known_event_type
    end
  end

  class StripeEventNotificationHandler
    def initialize(client, webhook_secret, &fallback_callback)
      raise ArgumentError, "You must pass a block to act as a fallback" if fallback_callback.nil?

      @client = client
      @webhook_secret = webhook_secret
      @fallback_callback = fallback_callback

      @registered_handlers = {}
      @has_handled_events = false
    end

    def handle(webhook_body, sig_header)
      # we're ok with this not being a thread-safe write since registering
      # handlers should happen synchronously on startup before any multi-threaded reads happen
      @has_handled_events = true

      notif = @client.parse_event_notification(
        webhook_body,
        sig_header,
        @webhook_secret
      )

      # Create a new client with the event's context to ensure thread-safety
      event_client = new_client_with_context(notif.context)

      handler = @registered_handlers[notif.type]
      if handler
        handler.call(notif, event_client)
      else
        @fallback_callback.call(notif, event_client,
                                   UnhandledNotificationDetails.new(!notif.is_a?(Stripe::Events::UnknownEventNotification)))
      end
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

    private def new_client_with_context(context)
      config = @client.requestor.config
      StripeClient.new(
        config.api_key,
        stripe_account: config.stripe_account,
        stripe_context: context,
        stripe_version: config.api_version,
        api_base: config.api_base,
        uploads_base: config.uploads_base,
        connect_base: config.connect_base,
        meter_events_base: config.meter_events_base,
        client_id: config.client_id
      )
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

    def on_v2_core_account_including_configuration_storer_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.storer].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_storer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.storer].updated", &handler)
    end

    def on_v2_core_account_including_defaults_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[defaults].updated", &handler)
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

    def on_v2_core_health_event_generation_failure_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.event_generation_failure.resolved", &handler)
    end

    def on_v2_money_management_adjustment_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.adjustment.created", &handler)
    end

    def on_v2_money_management_financial_account_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.created", &handler)
    end

    def on_v2_money_management_financial_account_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.updated", &handler)
    end

    def on_v2_money_management_financial_address_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_address.activated", &handler)
    end

    def on_v2_money_management_financial_address_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_address.failed", &handler)
    end

    def on_v2_money_management_inbound_transfer_available(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.available", &handler)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_failed", &handler)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_processing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_processing", &handler)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_queued(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_queued", &handler)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_returned(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_returned", &handler)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_succeeded", &handler)
    end

    def on_v2_money_management_outbound_payment_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.canceled", &handler)
    end

    def on_v2_money_management_outbound_payment_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.created", &handler)
    end

    def on_v2_money_management_outbound_payment_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.failed", &handler)
    end

    def on_v2_money_management_outbound_payment_posted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.posted", &handler)
    end

    def on_v2_money_management_outbound_payment_returned(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.returned", &handler)
    end

    def on_v2_money_management_outbound_payment_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.updated", &handler)
    end

    def on_v2_money_management_outbound_transfer_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.canceled", &handler)
    end

    def on_v2_money_management_outbound_transfer_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.created", &handler)
    end

    def on_v2_money_management_outbound_transfer_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.failed", &handler)
    end

    def on_v2_money_management_outbound_transfer_posted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.posted", &handler)
    end

    def on_v2_money_management_outbound_transfer_returned(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.returned", &handler)
    end

    def on_v2_money_management_outbound_transfer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.updated", &handler)
    end

    def on_v2_money_management_payout_method_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.payout_method.updated", &handler)
    end

    def on_v2_money_management_received_credit_available(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.available", &handler)
    end

    def on_v2_money_management_received_credit_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.failed", &handler)
    end

    def on_v2_money_management_received_credit_returned(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.returned", &handler)
    end

    def on_v2_money_management_received_credit_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.succeeded", &handler)
    end

    def on_v2_money_management_received_debit_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.canceled", &handler)
    end

    def on_v2_money_management_received_debit_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.failed", &handler)
    end

    def on_v2_money_management_received_debit_pending(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.pending", &handler)
    end

    def on_v2_money_management_received_debit_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.succeeded", &handler)
    end

    def on_v2_money_management_received_debit_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.updated", &handler)
    end

    def on_v2_money_management_transaction_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.created", &handler)
    end

    def on_v2_money_management_transaction_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.updated", &handler)
    end
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
end
