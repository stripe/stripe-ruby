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
    def on_v1_billing_meter_error_report_triggered(&callback)
      register("v1.billing.meter.error_report_triggered", &callback)
    end

    def on_v1_billing_meter_no_meter_found(&callback)
      register("v1.billing.meter.no_meter_found", &callback)
    end

    def on_v2_commerce_product_catalog_imports_failed(&callback)
      register("v2.commerce.product_catalog.imports.failed", &callback)
    end

    def on_v2_commerce_product_catalog_imports_processing(&callback)
      register("v2.commerce.product_catalog.imports.processing", &callback)
    end

    def on_v2_commerce_product_catalog_imports_succeeded(&callback)
      register("v2.commerce.product_catalog.imports.succeeded", &callback)
    end

    def on_v2_commerce_product_catalog_imports_succeeded_with_errors(&callback)
      register("v2.commerce.product_catalog.imports.succeeded_with_errors", &callback)
    end

    def on_v2_core_account_closed(&callback)
      register("v2.core.account.closed", &callback)
    end

    def on_v2_core_account_created(&callback)
      register("v2.core.account.created", &callback)
    end

    def on_v2_core_account_updated(&callback)
      register("v2.core.account.updated", &callback)
    end

    def on_v2_core_account_including_configuration_customer_capability_status_updated(&callback)
      register("v2.core.account[configuration.customer].capability_status_updated", &callback)
    end

    def on_v2_core_account_including_configuration_customer_updated(&callback)
      register("v2.core.account[configuration.customer].updated", &callback)
    end

    def on_v2_core_account_including_configuration_merchant_capability_status_updated(&callback)
      register("v2.core.account[configuration.merchant].capability_status_updated", &callback)
    end

    def on_v2_core_account_including_configuration_merchant_updated(&callback)
      register("v2.core.account[configuration.merchant].updated", &callback)
    end

    def on_v2_core_account_including_configuration_money_manager_capability_status_updated(&callback)
      register("v2.core.account[configuration.money_manager].capability_status_updated", &callback)
    end

    def on_v2_core_account_including_configuration_money_manager_updated(&callback)
      register("v2.core.account[configuration.money_manager].updated", &callback)
    end

    def on_v2_core_account_including_configuration_recipient_capability_status_updated(&callback)
      register("v2.core.account[configuration.recipient].capability_status_updated", &callback)
    end

    def on_v2_core_account_including_configuration_recipient_updated(&callback)
      register("v2.core.account[configuration.recipient].updated", &callback)
    end

    def on_v2_core_account_including_defaults_updated(&callback)
      register("v2.core.account[defaults].updated", &callback)
    end

    def on_v2_core_account_including_future_requirements_updated(&callback)
      register("v2.core.account[future_requirements].updated", &callback)
    end

    def on_v2_core_account_including_identity_updated(&callback)
      register("v2.core.account[identity].updated", &callback)
    end

    def on_v2_core_account_including_requirements_updated(&callback)
      register("v2.core.account[requirements].updated", &callback)
    end

    def on_v2_core_account_link_returned(&callback)
      register("v2.core.account_link.returned", &callback)
    end

    def on_v2_core_account_person_created(&callback)
      register("v2.core.account_person.created", &callback)
    end

    def on_v2_core_account_person_deleted(&callback)
      register("v2.core.account_person.deleted", &callback)
    end

    def on_v2_core_account_person_updated(&callback)
      register("v2.core.account_person.updated", &callback)
    end

    def on_v2_core_approval_request_approved(&callback)
      register("v2.core.approval_request.approved", &callback)
    end

    def on_v2_core_approval_request_canceled(&callback)
      register("v2.core.approval_request.canceled", &callback)
    end

    def on_v2_core_approval_request_created(&callback)
      register("v2.core.approval_request.created", &callback)
    end

    def on_v2_core_approval_request_expired(&callback)
      register("v2.core.approval_request.expired", &callback)
    end

    def on_v2_core_approval_request_failed(&callback)
      register("v2.core.approval_request.failed", &callback)
    end

    def on_v2_core_approval_request_rejected(&callback)
      register("v2.core.approval_request.rejected", &callback)
    end

    def on_v2_core_approval_request_succeeded(&callback)
      register("v2.core.approval_request.succeeded", &callback)
    end

    def on_v2_core_batch_job_batch_failed(&callback)
      register("v2.core.batch_job.batch_failed", &callback)
    end

    def on_v2_core_batch_job_canceled(&callback)
      register("v2.core.batch_job.canceled", &callback)
    end

    def on_v2_core_batch_job_completed(&callback)
      register("v2.core.batch_job.completed", &callback)
    end

    def on_v2_core_batch_job_created(&callback)
      register("v2.core.batch_job.created", &callback)
    end

    def on_v2_core_batch_job_ready_for_upload(&callback)
      register("v2.core.batch_job.ready_for_upload", &callback)
    end

    def on_v2_core_batch_job_timeout(&callback)
      register("v2.core.batch_job.timeout", &callback)
    end

    def on_v2_core_batch_job_updated(&callback)
      register("v2.core.batch_job.updated", &callback)
    end

    def on_v2_core_batch_job_upload_timeout(&callback)
      register("v2.core.batch_job.upload_timeout", &callback)
    end

    def on_v2_core_batch_job_validating(&callback)
      register("v2.core.batch_job.validating", &callback)
    end

    def on_v2_core_batch_job_validation_failed(&callback)
      register("v2.core.batch_job.validation_failed", &callback)
    end

    def on_v2_core_event_destination_ping(&callback)
      register("v2.core.event_destination.ping", &callback)
    end

    def on_v2_core_health_event_generation_failure_resolved(&callback)
      register("v2.core.health.event_generation_failure.resolved", &callback)
    end

    def on_v2_data_reporting_query_run_created(&callback)
      register("v2.data.reporting.query_run.created", &callback)
    end

    def on_v2_data_reporting_query_run_failed(&callback)
      register("v2.data.reporting.query_run.failed", &callback)
    end

    def on_v2_data_reporting_query_run_succeeded(&callback)
      register("v2.data.reporting.query_run.succeeded", &callback)
    end

    def on_v2_data_reporting_query_run_updated(&callback)
      register("v2.data.reporting.query_run.updated", &callback)
    end

    def on_v2_extend_workflow_run_failed(&callback)
      register("v2.extend.workflow_run.failed", &callback)
    end

    def on_v2_extend_workflow_run_started(&callback)
      register("v2.extend.workflow_run.started", &callback)
    end

    def on_v2_extend_workflow_run_succeeded(&callback)
      register("v2.extend.workflow_run.succeeded", &callback)
    end

    def on_v2_money_management_adjustment_created(&callback)
      register("v2.money_management.adjustment.created", &callback)
    end

    def on_v2_money_management_financial_account_created(&callback)
      register("v2.money_management.financial_account.created", &callback)
    end

    def on_v2_money_management_financial_account_updated(&callback)
      register("v2.money_management.financial_account.updated", &callback)
    end

    def on_v2_money_management_financial_address_activated(&callback)
      register("v2.money_management.financial_address.activated", &callback)
    end

    def on_v2_money_management_financial_address_failed(&callback)
      register("v2.money_management.financial_address.failed", &callback)
    end

    def on_v2_money_management_inbound_transfer_available(&callback)
      register("v2.money_management.inbound_transfer.available", &callback)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_failed(&callback)
      register("v2.money_management.inbound_transfer.bank_debit_failed", &callback)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_processing(&callback)
      register("v2.money_management.inbound_transfer.bank_debit_processing", &callback)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_queued(&callback)
      register("v2.money_management.inbound_transfer.bank_debit_queued", &callback)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_returned(&callback)
      register("v2.money_management.inbound_transfer.bank_debit_returned", &callback)
    end

    def on_v2_money_management_inbound_transfer_bank_debit_succeeded(&callback)
      register("v2.money_management.inbound_transfer.bank_debit_succeeded", &callback)
    end

    def on_v2_money_management_outbound_payment_canceled(&callback)
      register("v2.money_management.outbound_payment.canceled", &callback)
    end

    def on_v2_money_management_outbound_payment_created(&callback)
      register("v2.money_management.outbound_payment.created", &callback)
    end

    def on_v2_money_management_outbound_payment_failed(&callback)
      register("v2.money_management.outbound_payment.failed", &callback)
    end

    def on_v2_money_management_outbound_payment_posted(&callback)
      register("v2.money_management.outbound_payment.posted", &callback)
    end

    def on_v2_money_management_outbound_payment_returned(&callback)
      register("v2.money_management.outbound_payment.returned", &callback)
    end

    def on_v2_money_management_outbound_payment_under_review(&callback)
      register("v2.money_management.outbound_payment.under_review", &callback)
    end

    def on_v2_money_management_outbound_payment_updated(&callback)
      register("v2.money_management.outbound_payment.updated", &callback)
    end

    def on_v2_money_management_outbound_transfer_canceled(&callback)
      register("v2.money_management.outbound_transfer.canceled", &callback)
    end

    def on_v2_money_management_outbound_transfer_created(&callback)
      register("v2.money_management.outbound_transfer.created", &callback)
    end

    def on_v2_money_management_outbound_transfer_failed(&callback)
      register("v2.money_management.outbound_transfer.failed", &callback)
    end

    def on_v2_money_management_outbound_transfer_posted(&callback)
      register("v2.money_management.outbound_transfer.posted", &callback)
    end

    def on_v2_money_management_outbound_transfer_returned(&callback)
      register("v2.money_management.outbound_transfer.returned", &callback)
    end

    def on_v2_money_management_outbound_transfer_under_review(&callback)
      register("v2.money_management.outbound_transfer.under_review", &callback)
    end

    def on_v2_money_management_outbound_transfer_updated(&callback)
      register("v2.money_management.outbound_transfer.updated", &callback)
    end

    def on_v2_money_management_payout_method_created(&callback)
      register("v2.money_management.payout_method.created", &callback)
    end

    def on_v2_money_management_payout_method_updated(&callback)
      register("v2.money_management.payout_method.updated", &callback)
    end

    def on_v2_money_management_received_credit_available(&callback)
      register("v2.money_management.received_credit.available", &callback)
    end

    def on_v2_money_management_received_credit_failed(&callback)
      register("v2.money_management.received_credit.failed", &callback)
    end

    def on_v2_money_management_received_credit_returned(&callback)
      register("v2.money_management.received_credit.returned", &callback)
    end

    def on_v2_money_management_received_credit_succeeded(&callback)
      register("v2.money_management.received_credit.succeeded", &callback)
    end

    def on_v2_money_management_received_debit_canceled(&callback)
      register("v2.money_management.received_debit.canceled", &callback)
    end

    def on_v2_money_management_received_debit_failed(&callback)
      register("v2.money_management.received_debit.failed", &callback)
    end

    def on_v2_money_management_received_debit_pending(&callback)
      register("v2.money_management.received_debit.pending", &callback)
    end

    def on_v2_money_management_received_debit_succeeded(&callback)
      register("v2.money_management.received_debit.succeeded", &callback)
    end

    def on_v2_money_management_received_debit_updated(&callback)
      register("v2.money_management.received_debit.updated", &callback)
    end

    def on_v2_money_management_transaction_created(&callback)
      register("v2.money_management.transaction.created", &callback)
    end

    def on_v2_money_management_transaction_updated(&callback)
      register("v2.money_management.transaction.updated", &callback)
    end

    def on_v2_orchestrated_commerce_agreement_confirmed(&callback)
      register("v2.orchestrated_commerce.agreement.confirmed", &callback)
    end

    def on_v2_orchestrated_commerce_agreement_created(&callback)
      register("v2.orchestrated_commerce.agreement.created", &callback)
    end

    def on_v2_orchestrated_commerce_agreement_partially_confirmed(&callback)
      register("v2.orchestrated_commerce.agreement.partially_confirmed", &callback)
    end

    def on_v2_orchestrated_commerce_agreement_terminated(&callback)
      register("v2.orchestrated_commerce.agreement.terminated", &callback)
    end

    def on_v2_signals_account_evaluation_complete(&callback)
      register("v2.signals.account_evaluation.complete", &callback)
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
