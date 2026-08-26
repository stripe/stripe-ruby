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
    def on_v1_account_application_authorized(&callback)
      register("v1.account.application.authorized", &callback)
    end

    def on_v1_account_application_deauthorized(&callback)
      register("v1.account.application.deauthorized", &callback)
    end

    def on_v1_account_external_account_created(&callback)
      register("v1.account.external_account.created", &callback)
    end

    def on_v1_account_external_account_deleted(&callback)
      register("v1.account.external_account.deleted", &callback)
    end

    def on_v1_account_external_account_updated(&callback)
      register("v1.account.external_account.updated", &callback)
    end

    def on_v1_account_updated(&callback)
      register("v1.account.updated", &callback)
    end

    def on_v1_account_signals_including_delinquency_created(&callback)
      register("v1.account_signals[delinquency].created", &callback)
    end

    def on_v1_application_fee_created(&callback)
      register("v1.application_fee.created", &callback)
    end

    def on_v1_application_fee_refund_updated(&callback)
      register("v1.application_fee.refund.updated", &callback)
    end

    def on_v1_application_fee_refunded(&callback)
      register("v1.application_fee.refunded", &callback)
    end

    def on_v1_balance_available(&callback)
      register("v1.balance.available", &callback)
    end

    def on_v1_balance_settings_updated(&callback)
      register("v1.balance_settings.updated", &callback)
    end

    def on_v1_billing_alert_triggered(&callback)
      register("v1.billing.alert.triggered", &callback)
    end

    def on_v1_billing_credit_balance_transaction_created(&callback)
      register("v1.billing.credit_balance_transaction.created", &callback)
    end

    def on_v1_billing_credit_grant_created(&callback)
      register("v1.billing.credit_grant.created", &callback)
    end

    def on_v1_billing_credit_grant_updated(&callback)
      register("v1.billing.credit_grant.updated", &callback)
    end

    def on_v1_billing_meter_created(&callback)
      register("v1.billing.meter.created", &callback)
    end

    def on_v1_billing_meter_deactivated(&callback)
      register("v1.billing.meter.deactivated", &callback)
    end

    def on_v1_billing_meter_error_report_triggered(&callback)
      register("v1.billing.meter.error_report_triggered", &callback)
    end

    def on_v1_billing_meter_no_meter_found(&callback)
      register("v1.billing.meter.no_meter_found", &callback)
    end

    def on_v1_billing_meter_reactivated(&callback)
      register("v1.billing.meter.reactivated", &callback)
    end

    def on_v1_billing_meter_updated(&callback)
      register("v1.billing.meter.updated", &callback)
    end

    def on_v1_billing_portal_configuration_created(&callback)
      register("v1.billing_portal.configuration.created", &callback)
    end

    def on_v1_billing_portal_configuration_updated(&callback)
      register("v1.billing_portal.configuration.updated", &callback)
    end

    def on_v1_billing_portal_session_created(&callback)
      register("v1.billing_portal.session.created", &callback)
    end

    def on_v1_capability_updated(&callback)
      register("v1.capability.updated", &callback)
    end

    def on_v1_cash_balance_funds_available(&callback)
      register("v1.cash_balance.funds_available", &callback)
    end

    def on_v1_charge_captured(&callback)
      register("v1.charge.captured", &callback)
    end

    def on_v1_charge_dispute_closed(&callback)
      register("v1.charge.dispute.closed", &callback)
    end

    def on_v1_charge_dispute_created(&callback)
      register("v1.charge.dispute.created", &callback)
    end

    def on_v1_charge_dispute_funds_reinstated(&callback)
      register("v1.charge.dispute.funds_reinstated", &callback)
    end

    def on_v1_charge_dispute_funds_withdrawn(&callback)
      register("v1.charge.dispute.funds_withdrawn", &callback)
    end

    def on_v1_charge_dispute_updated(&callback)
      register("v1.charge.dispute.updated", &callback)
    end

    def on_v1_charge_expired(&callback)
      register("v1.charge.expired", &callback)
    end

    def on_v1_charge_failed(&callback)
      register("v1.charge.failed", &callback)
    end

    def on_v1_charge_pending(&callback)
      register("v1.charge.pending", &callback)
    end

    def on_v1_charge_refund_updated(&callback)
      register("v1.charge.refund.updated", &callback)
    end

    def on_v1_charge_refunded(&callback)
      register("v1.charge.refunded", &callback)
    end

    def on_v1_charge_succeeded(&callback)
      register("v1.charge.succeeded", &callback)
    end

    def on_v1_charge_updated(&callback)
      register("v1.charge.updated", &callback)
    end

    def on_v1_checkout_session_async_payment_failed(&callback)
      register("v1.checkout.session.async_payment_failed", &callback)
    end

    def on_v1_checkout_session_async_payment_succeeded(&callback)
      register("v1.checkout.session.async_payment_succeeded", &callback)
    end

    def on_v1_checkout_session_completed(&callback)
      register("v1.checkout.session.completed", &callback)
    end

    def on_v1_checkout_session_expired(&callback)
      register("v1.checkout.session.expired", &callback)
    end

    def on_v1_climate_order_canceled(&callback)
      register("v1.climate.order.canceled", &callback)
    end

    def on_v1_climate_order_created(&callback)
      register("v1.climate.order.created", &callback)
    end

    def on_v1_climate_order_delayed(&callback)
      register("v1.climate.order.delayed", &callback)
    end

    def on_v1_climate_order_delivered(&callback)
      register("v1.climate.order.delivered", &callback)
    end

    def on_v1_climate_order_product_substituted(&callback)
      register("v1.climate.order.product_substituted", &callback)
    end

    def on_v1_climate_product_created(&callback)
      register("v1.climate.product.created", &callback)
    end

    def on_v1_climate_product_pricing_updated(&callback)
      register("v1.climate.product.pricing_updated", &callback)
    end

    def on_v1_coupon_created(&callback)
      register("v1.coupon.created", &callback)
    end

    def on_v1_coupon_deleted(&callback)
      register("v1.coupon.deleted", &callback)
    end

    def on_v1_coupon_updated(&callback)
      register("v1.coupon.updated", &callback)
    end

    def on_v1_credit_note_created(&callback)
      register("v1.credit_note.created", &callback)
    end

    def on_v1_credit_note_updated(&callback)
      register("v1.credit_note.updated", &callback)
    end

    def on_v1_credit_note_voided(&callback)
      register("v1.credit_note.voided", &callback)
    end

    def on_v1_customer_created(&callback)
      register("v1.customer.created", &callback)
    end

    def on_v1_customer_deleted(&callback)
      register("v1.customer.deleted", &callback)
    end

    def on_v1_customer_subscription_created(&callback)
      register("v1.customer.subscription.created", &callback)
    end

    def on_v1_customer_subscription_deleted(&callback)
      register("v1.customer.subscription.deleted", &callback)
    end

    def on_v1_customer_subscription_paused(&callback)
      register("v1.customer.subscription.paused", &callback)
    end

    def on_v1_customer_subscription_pending_update_applied(&callback)
      register("v1.customer.subscription.pending_update_applied", &callback)
    end

    def on_v1_customer_subscription_pending_update_expired(&callback)
      register("v1.customer.subscription.pending_update_expired", &callback)
    end

    def on_v1_customer_subscription_resumed(&callback)
      register("v1.customer.subscription.resumed", &callback)
    end

    def on_v1_customer_subscription_trial_will_end(&callback)
      register("v1.customer.subscription.trial_will_end", &callback)
    end

    def on_v1_customer_subscription_updated(&callback)
      register("v1.customer.subscription.updated", &callback)
    end

    def on_v1_customer_tax_id_created(&callback)
      register("v1.customer.tax_id.created", &callback)
    end

    def on_v1_customer_tax_id_deleted(&callback)
      register("v1.customer.tax_id.deleted", &callback)
    end

    def on_v1_customer_tax_id_updated(&callback)
      register("v1.customer.tax_id.updated", &callback)
    end

    def on_v1_customer_updated(&callback)
      register("v1.customer.updated", &callback)
    end

    def on_v1_customer_cash_balance_transaction_created(&callback)
      register("v1.customer_cash_balance_transaction.created", &callback)
    end

    def on_v1_entitlements_active_entitlement_summary_updated(&callback)
      register("v1.entitlements.active_entitlement_summary.updated", &callback)
    end

    def on_v1_file_created(&callback)
      register("v1.file.created", &callback)
    end

    def on_v1_financial_connections_account_account_numbers_updated(&callback)
      register("v1.financial_connections.account.account_numbers_updated", &callback)
    end

    def on_v1_financial_connections_account_created(&callback)
      register("v1.financial_connections.account.created", &callback)
    end

    def on_v1_financial_connections_account_deactivated(&callback)
      register("v1.financial_connections.account.deactivated", &callback)
    end

    def on_v1_financial_connections_account_disconnected(&callback)
      register("v1.financial_connections.account.disconnected", &callback)
    end

    def on_v1_financial_connections_account_expected_deactivation_date_updated(&callback)
      register("v1.financial_connections.account.expected_deactivation_date_updated", &callback)
    end

    def on_v1_financial_connections_account_reactivated(&callback)
      register("v1.financial_connections.account.reactivated", &callback)
    end

    def on_v1_financial_connections_account_refreshed_balance(&callback)
      register("v1.financial_connections.account.refreshed_balance", &callback)
    end

    def on_v1_financial_connections_account_refreshed_ownership(&callback)
      register("v1.financial_connections.account.refreshed_ownership", &callback)
    end

    def on_v1_financial_connections_account_refreshed_transactions(&callback)
      register("v1.financial_connections.account.refreshed_transactions", &callback)
    end

    def on_v1_financial_connections_account_supported_payment_method_types_updated(&callback)
      register("v1.financial_connections.account.supported_payment_method_types_updated", &callback)
    end

    def on_v1_financial_connections_account_upcoming_account_number_expiry(&callback)
      register("v1.financial_connections.account.upcoming_account_number_expiry", &callback)
    end

    def on_v1_financial_connections_account_upcoming_deactivation(&callback)
      register("v1.financial_connections.account.upcoming_deactivation", &callback)
    end

    def on_v1_identity_verification_session_canceled(&callback)
      register("v1.identity.verification_session.canceled", &callback)
    end

    def on_v1_identity_verification_session_created(&callback)
      register("v1.identity.verification_session.created", &callback)
    end

    def on_v1_identity_verification_session_processing(&callback)
      register("v1.identity.verification_session.processing", &callback)
    end

    def on_v1_identity_verification_session_redacted(&callback)
      register("v1.identity.verification_session.redacted", &callback)
    end

    def on_v1_identity_verification_session_requires_input(&callback)
      register("v1.identity.verification_session.requires_input", &callback)
    end

    def on_v1_identity_verification_session_verified(&callback)
      register("v1.identity.verification_session.verified", &callback)
    end

    def on_v1_invoice_created(&callback)
      register("v1.invoice.created", &callback)
    end

    def on_v1_invoice_deleted(&callback)
      register("v1.invoice.deleted", &callback)
    end

    def on_v1_invoice_finalization_failed(&callback)
      register("v1.invoice.finalization_failed", &callback)
    end

    def on_v1_invoice_finalized(&callback)
      register("v1.invoice.finalized", &callback)
    end

    def on_v1_invoice_marked_uncollectible(&callback)
      register("v1.invoice.marked_uncollectible", &callback)
    end

    def on_v1_invoice_overdue(&callback)
      register("v1.invoice.overdue", &callback)
    end

    def on_v1_invoice_overpaid(&callback)
      register("v1.invoice.overpaid", &callback)
    end

    def on_v1_invoice_paid(&callback)
      register("v1.invoice.paid", &callback)
    end

    def on_v1_invoice_payment_action_required(&callback)
      register("v1.invoice.payment_action_required", &callback)
    end

    def on_v1_invoice_payment_attempt_required(&callback)
      register("v1.invoice.payment_attempt_required", &callback)
    end

    def on_v1_invoice_payment_failed(&callback)
      register("v1.invoice.payment_failed", &callback)
    end

    def on_v1_invoice_payment_succeeded(&callback)
      register("v1.invoice.payment_succeeded", &callback)
    end

    def on_v1_invoice_sent(&callback)
      register("v1.invoice.sent", &callback)
    end

    def on_v1_invoice_upcoming(&callback)
      register("v1.invoice.upcoming", &callback)
    end

    def on_v1_invoice_updated(&callback)
      register("v1.invoice.updated", &callback)
    end

    def on_v1_invoice_voided(&callback)
      register("v1.invoice.voided", &callback)
    end

    def on_v1_invoice_will_be_due(&callback)
      register("v1.invoice.will_be_due", &callback)
    end

    def on_v1_invoice_payment_paid(&callback)
      register("v1.invoice_payment.paid", &callback)
    end

    def on_v1_invoiceitem_created(&callback)
      register("v1.invoiceitem.created", &callback)
    end

    def on_v1_invoiceitem_deleted(&callback)
      register("v1.invoiceitem.deleted", &callback)
    end

    def on_v1_issuing_authorization_created(&callback)
      register("v1.issuing_authorization.created", &callback)
    end

    def on_v1_issuing_authorization_request(&callback)
      register("v1.issuing_authorization.request", &callback)
    end

    def on_v1_issuing_authorization_updated(&callback)
      register("v1.issuing_authorization.updated", &callback)
    end

    def on_v1_issuing_card_created(&callback)
      register("v1.issuing_card.created", &callback)
    end

    def on_v1_issuing_card_updated(&callback)
      register("v1.issuing_card.updated", &callback)
    end

    def on_v1_issuing_cardholder_created(&callback)
      register("v1.issuing_cardholder.created", &callback)
    end

    def on_v1_issuing_cardholder_updated(&callback)
      register("v1.issuing_cardholder.updated", &callback)
    end

    def on_v1_issuing_dispute_closed(&callback)
      register("v1.issuing_dispute.closed", &callback)
    end

    def on_v1_issuing_dispute_created(&callback)
      register("v1.issuing_dispute.created", &callback)
    end

    def on_v1_issuing_dispute_funds_reinstated(&callback)
      register("v1.issuing_dispute.funds_reinstated", &callback)
    end

    def on_v1_issuing_dispute_funds_rescinded(&callback)
      register("v1.issuing_dispute.funds_rescinded", &callback)
    end

    def on_v1_issuing_dispute_submitted(&callback)
      register("v1.issuing_dispute.submitted", &callback)
    end

    def on_v1_issuing_dispute_updated(&callback)
      register("v1.issuing_dispute.updated", &callback)
    end

    def on_v1_issuing_personalization_design_activated(&callback)
      register("v1.issuing_personalization_design.activated", &callback)
    end

    def on_v1_issuing_personalization_design_deactivated(&callback)
      register("v1.issuing_personalization_design.deactivated", &callback)
    end

    def on_v1_issuing_personalization_design_rejected(&callback)
      register("v1.issuing_personalization_design.rejected", &callback)
    end

    def on_v1_issuing_personalization_design_updated(&callback)
      register("v1.issuing_personalization_design.updated", &callback)
    end

    def on_v1_issuing_token_created(&callback)
      register("v1.issuing_token.created", &callback)
    end

    def on_v1_issuing_token_updated(&callback)
      register("v1.issuing_token.updated", &callback)
    end

    def on_v1_issuing_transaction_created(&callback)
      register("v1.issuing_transaction.created", &callback)
    end

    def on_v1_issuing_transaction_purchase_details_receipt_updated(&callback)
      register("v1.issuing_transaction.purchase_details_receipt_updated", &callback)
    end

    def on_v1_issuing_transaction_updated(&callback)
      register("v1.issuing_transaction.updated", &callback)
    end

    def on_v1_mandate_updated(&callback)
      register("v1.mandate.updated", &callback)
    end

    def on_v1_payment_intent_amount_capturable_updated(&callback)
      register("v1.payment_intent.amount_capturable_updated", &callback)
    end

    def on_v1_payment_intent_canceled(&callback)
      register("v1.payment_intent.canceled", &callback)
    end

    def on_v1_payment_intent_created(&callback)
      register("v1.payment_intent.created", &callback)
    end

    def on_v1_payment_intent_partially_funded(&callback)
      register("v1.payment_intent.partially_funded", &callback)
    end

    def on_v1_payment_intent_payment_failed(&callback)
      register("v1.payment_intent.payment_failed", &callback)
    end

    def on_v1_payment_intent_processing(&callback)
      register("v1.payment_intent.processing", &callback)
    end

    def on_v1_payment_intent_requires_action(&callback)
      register("v1.payment_intent.requires_action", &callback)
    end

    def on_v1_payment_intent_succeeded(&callback)
      register("v1.payment_intent.succeeded", &callback)
    end

    def on_v1_payment_link_created(&callback)
      register("v1.payment_link.created", &callback)
    end

    def on_v1_payment_link_updated(&callback)
      register("v1.payment_link.updated", &callback)
    end

    def on_v1_payment_method_attached(&callback)
      register("v1.payment_method.attached", &callback)
    end

    def on_v1_payment_method_automatically_updated(&callback)
      register("v1.payment_method.automatically_updated", &callback)
    end

    def on_v1_payment_method_detached(&callback)
      register("v1.payment_method.detached", &callback)
    end

    def on_v1_payment_method_updated(&callback)
      register("v1.payment_method.updated", &callback)
    end

    def on_v1_payout_canceled(&callback)
      register("v1.payout.canceled", &callback)
    end

    def on_v1_payout_created(&callback)
      register("v1.payout.created", &callback)
    end

    def on_v1_payout_failed(&callback)
      register("v1.payout.failed", &callback)
    end

    def on_v1_payout_paid(&callback)
      register("v1.payout.paid", &callback)
    end

    def on_v1_payout_reconciliation_completed(&callback)
      register("v1.payout.reconciliation_completed", &callback)
    end

    def on_v1_payout_updated(&callback)
      register("v1.payout.updated", &callback)
    end

    def on_v1_person_created(&callback)
      register("v1.person.created", &callback)
    end

    def on_v1_person_deleted(&callback)
      register("v1.person.deleted", &callback)
    end

    def on_v1_person_updated(&callback)
      register("v1.person.updated", &callback)
    end

    def on_v1_plan_created(&callback)
      register("v1.plan.created", &callback)
    end

    def on_v1_plan_deleted(&callback)
      register("v1.plan.deleted", &callback)
    end

    def on_v1_plan_updated(&callback)
      register("v1.plan.updated", &callback)
    end

    def on_v1_price_created(&callback)
      register("v1.price.created", &callback)
    end

    def on_v1_price_deleted(&callback)
      register("v1.price.deleted", &callback)
    end

    def on_v1_price_updated(&callback)
      register("v1.price.updated", &callback)
    end

    def on_v1_product_created(&callback)
      register("v1.product.created", &callback)
    end

    def on_v1_product_deleted(&callback)
      register("v1.product.deleted", &callback)
    end

    def on_v1_product_updated(&callback)
      register("v1.product.updated", &callback)
    end

    def on_v1_promotion_code_created(&callback)
      register("v1.promotion_code.created", &callback)
    end

    def on_v1_promotion_code_updated(&callback)
      register("v1.promotion_code.updated", &callback)
    end

    def on_v1_quote_accepted(&callback)
      register("v1.quote.accepted", &callback)
    end

    def on_v1_quote_canceled(&callback)
      register("v1.quote.canceled", &callback)
    end

    def on_v1_quote_created(&callback)
      register("v1.quote.created", &callback)
    end

    def on_v1_quote_finalized(&callback)
      register("v1.quote.finalized", &callback)
    end

    def on_v1_radar_early_fraud_warning_created(&callback)
      register("v1.radar.early_fraud_warning.created", &callback)
    end

    def on_v1_radar_early_fraud_warning_updated(&callback)
      register("v1.radar.early_fraud_warning.updated", &callback)
    end

    def on_v1_refund_created(&callback)
      register("v1.refund.created", &callback)
    end

    def on_v1_refund_failed(&callback)
      register("v1.refund.failed", &callback)
    end

    def on_v1_refund_updated(&callback)
      register("v1.refund.updated", &callback)
    end

    def on_v1_review_closed(&callback)
      register("v1.review.closed", &callback)
    end

    def on_v1_review_opened(&callback)
      register("v1.review.opened", &callback)
    end

    def on_v1_setup_intent_canceled(&callback)
      register("v1.setup_intent.canceled", &callback)
    end

    def on_v1_setup_intent_created(&callback)
      register("v1.setup_intent.created", &callback)
    end

    def on_v1_setup_intent_requires_action(&callback)
      register("v1.setup_intent.requires_action", &callback)
    end

    def on_v1_setup_intent_setup_failed(&callback)
      register("v1.setup_intent.setup_failed", &callback)
    end

    def on_v1_setup_intent_succeeded(&callback)
      register("v1.setup_intent.succeeded", &callback)
    end

    def on_v1_sigma_scheduled_query_run_created(&callback)
      register("v1.sigma.scheduled_query_run.created", &callback)
    end

    def on_v1_source_canceled(&callback)
      register("v1.source.canceled", &callback)
    end

    def on_v1_source_chargeable(&callback)
      register("v1.source.chargeable", &callback)
    end

    def on_v1_source_failed(&callback)
      register("v1.source.failed", &callback)
    end

    def on_v1_source_refund_attributes_required(&callback)
      register("v1.source.refund_attributes_required", &callback)
    end

    def on_v1_subscription_schedule_aborted(&callback)
      register("v1.subscription_schedule.aborted", &callback)
    end

    def on_v1_subscription_schedule_canceled(&callback)
      register("v1.subscription_schedule.canceled", &callback)
    end

    def on_v1_subscription_schedule_completed(&callback)
      register("v1.subscription_schedule.completed", &callback)
    end

    def on_v1_subscription_schedule_created(&callback)
      register("v1.subscription_schedule.created", &callback)
    end

    def on_v1_subscription_schedule_expiring(&callback)
      register("v1.subscription_schedule.expiring", &callback)
    end

    def on_v1_subscription_schedule_released(&callback)
      register("v1.subscription_schedule.released", &callback)
    end

    def on_v1_subscription_schedule_updated(&callback)
      register("v1.subscription_schedule.updated", &callback)
    end

    def on_v1_tax_settings_updated(&callback)
      register("v1.tax.settings.updated", &callback)
    end

    def on_v1_tax_rate_created(&callback)
      register("v1.tax_rate.created", &callback)
    end

    def on_v1_tax_rate_updated(&callback)
      register("v1.tax_rate.updated", &callback)
    end

    def on_v1_terminal_reader_action_failed(&callback)
      register("v1.terminal.reader.action_failed", &callback)
    end

    def on_v1_terminal_reader_action_succeeded(&callback)
      register("v1.terminal.reader.action_succeeded", &callback)
    end

    def on_v1_terminal_reader_action_updated(&callback)
      register("v1.terminal.reader.action_updated", &callback)
    end

    def on_v1_test_helpers_test_clock_advancing(&callback)
      register("v1.test_helpers.test_clock.advancing", &callback)
    end

    def on_v1_test_helpers_test_clock_created(&callback)
      register("v1.test_helpers.test_clock.created", &callback)
    end

    def on_v1_test_helpers_test_clock_deleted(&callback)
      register("v1.test_helpers.test_clock.deleted", &callback)
    end

    def on_v1_test_helpers_test_clock_internal_failure(&callback)
      register("v1.test_helpers.test_clock.internal_failure", &callback)
    end

    def on_v1_test_helpers_test_clock_ready(&callback)
      register("v1.test_helpers.test_clock.ready", &callback)
    end

    def on_v1_topup_canceled(&callback)
      register("v1.topup.canceled", &callback)
    end

    def on_v1_topup_created(&callback)
      register("v1.topup.created", &callback)
    end

    def on_v1_topup_failed(&callback)
      register("v1.topup.failed", &callback)
    end

    def on_v1_topup_reversed(&callback)
      register("v1.topup.reversed", &callback)
    end

    def on_v1_topup_succeeded(&callback)
      register("v1.topup.succeeded", &callback)
    end

    def on_v1_transfer_created(&callback)
      register("v1.transfer.created", &callback)
    end

    def on_v1_transfer_reversed(&callback)
      register("v1.transfer.reversed", &callback)
    end

    def on_v1_transfer_updated(&callback)
      register("v1.transfer.updated", &callback)
    end

    def on_v2_billing_cadence_billed(&callback)
      register("v2.billing.cadence.billed", &callback)
    end

    def on_v2_billing_cadence_canceled(&callback)
      register("v2.billing.cadence.canceled", &callback)
    end

    def on_v2_billing_cadence_created(&callback)
      register("v2.billing.cadence.created", &callback)
    end

    def on_v2_billing_contract_activated(&callback)
      register("v2.billing.contract.activated", &callback)
    end

    def on_v2_billing_contract_canceled(&callback)
      register("v2.billing.contract.canceled", &callback)
    end

    def on_v2_billing_contract_created(&callback)
      register("v2.billing.contract.created", &callback)
    end

    def on_v2_billing_contract_ended(&callback)
      register("v2.billing.contract.ended", &callback)
    end

    def on_v2_billing_contract_updated(&callback)
      register("v2.billing.contract.updated", &callback)
    end

    def on_v2_billing_license_fee_created(&callback)
      register("v2.billing.license_fee.created", &callback)
    end

    def on_v2_billing_license_fee_updated(&callback)
      register("v2.billing.license_fee.updated", &callback)
    end

    def on_v2_billing_license_fee_version_created(&callback)
      register("v2.billing.license_fee_version.created", &callback)
    end

    def on_v2_billing_licensed_item_created(&callback)
      register("v2.billing.licensed_item.created", &callback)
    end

    def on_v2_billing_licensed_item_updated(&callback)
      register("v2.billing.licensed_item.updated", &callback)
    end

    def on_v2_billing_metered_item_created(&callback)
      register("v2.billing.metered_item.created", &callback)
    end

    def on_v2_billing_metered_item_updated(&callback)
      register("v2.billing.metered_item.updated", &callback)
    end

    def on_v2_billing_pricing_plan_created(&callback)
      register("v2.billing.pricing_plan.created", &callback)
    end

    def on_v2_billing_pricing_plan_updated(&callback)
      register("v2.billing.pricing_plan.updated", &callback)
    end

    def on_v2_billing_pricing_plan_component_created(&callback)
      register("v2.billing.pricing_plan_component.created", &callback)
    end

    def on_v2_billing_pricing_plan_component_updated(&callback)
      register("v2.billing.pricing_plan_component.updated", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_collection_awaiting_customer_action(&callback)
      register("v2.billing.pricing_plan_subscription.collection_awaiting_customer_action", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_collection_current(&callback)
      register("v2.billing.pricing_plan_subscription.collection_current", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_collection_past_due(&callback)
      register("v2.billing.pricing_plan_subscription.collection_past_due", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_collection_paused(&callback)
      register("v2.billing.pricing_plan_subscription.collection_paused", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_collection_unpaid(&callback)
      register("v2.billing.pricing_plan_subscription.collection_unpaid", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_activated(&callback)
      register("v2.billing.pricing_plan_subscription.servicing_activated", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_canceled(&callback)
      register("v2.billing.pricing_plan_subscription.servicing_canceled", &callback)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_paused(&callback)
      register("v2.billing.pricing_plan_subscription.servicing_paused", &callback)
    end

    def on_v2_billing_pricing_plan_version_created(&callback)
      register("v2.billing.pricing_plan_version.created", &callback)
    end

    def on_v2_billing_rate_card_created(&callback)
      register("v2.billing.rate_card.created", &callback)
    end

    def on_v2_billing_rate_card_updated(&callback)
      register("v2.billing.rate_card.updated", &callback)
    end

    def on_v2_billing_rate_card_custom_pricing_unit_overage_rate_created(&callback)
      register("v2.billing.rate_card_custom_pricing_unit_overage_rate.created", &callback)
    end

    def on_v2_billing_rate_card_rate_created(&callback)
      register("v2.billing.rate_card_rate.created", &callback)
    end

    def on_v2_billing_rate_card_subscription_activated(&callback)
      register("v2.billing.rate_card_subscription.activated", &callback)
    end

    def on_v2_billing_rate_card_subscription_canceled(&callback)
      register("v2.billing.rate_card_subscription.canceled", &callback)
    end

    def on_v2_billing_rate_card_subscription_collection_awaiting_customer_action(&callback)
      register("v2.billing.rate_card_subscription.collection_awaiting_customer_action", &callback)
    end

    def on_v2_billing_rate_card_subscription_collection_current(&callback)
      register("v2.billing.rate_card_subscription.collection_current", &callback)
    end

    def on_v2_billing_rate_card_subscription_collection_past_due(&callback)
      register("v2.billing.rate_card_subscription.collection_past_due", &callback)
    end

    def on_v2_billing_rate_card_subscription_collection_paused(&callback)
      register("v2.billing.rate_card_subscription.collection_paused", &callback)
    end

    def on_v2_billing_rate_card_subscription_collection_unpaid(&callback)
      register("v2.billing.rate_card_subscription.collection_unpaid", &callback)
    end

    def on_v2_billing_rate_card_subscription_servicing_activated(&callback)
      register("v2.billing.rate_card_subscription.servicing_activated", &callback)
    end

    def on_v2_billing_rate_card_subscription_servicing_canceled(&callback)
      register("v2.billing.rate_card_subscription.servicing_canceled", &callback)
    end

    def on_v2_billing_rate_card_subscription_servicing_paused(&callback)
      register("v2.billing.rate_card_subscription.servicing_paused", &callback)
    end

    def on_v2_billing_rate_card_version_created(&callback)
      register("v2.billing.rate_card_version.created", &callback)
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

    def on_v2_core_account_including_configuration_card_creator_capability_status_updated(&callback)
      register("v2.core.account[configuration.card_creator].capability_status_updated", &callback)
    end

    def on_v2_core_account_including_configuration_card_creator_updated(&callback)
      register("v2.core.account[configuration.card_creator].updated", &callback)
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

    def on_v2_core_account_signals_fraudulent_website_ready(&callback)
      register("v2.core.account_signals.fraudulent_website_ready", &callback)
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

    def on_v2_core_claimable_sandbox_claimed(&callback)
      register("v2.core.claimable_sandbox.claimed", &callback)
    end

    def on_v2_core_claimable_sandbox_created(&callback)
      register("v2.core.claimable_sandbox.created", &callback)
    end

    def on_v2_core_claimable_sandbox_expired(&callback)
      register("v2.core.claimable_sandbox.expired", &callback)
    end

    def on_v2_core_claimable_sandbox_expiring(&callback)
      register("v2.core.claimable_sandbox.expiring", &callback)
    end

    def on_v2_core_claimable_sandbox_updated(&callback)
      register("v2.core.claimable_sandbox.updated", &callback)
    end

    def on_v2_core_event_destination_ping(&callback)
      register("v2.core.event_destination.ping", &callback)
    end

    def on_v2_core_health_api_error_firing(&callback)
      register("v2.core.health.api_error.firing", &callback)
    end

    def on_v2_core_health_api_error_resolved(&callback)
      register("v2.core.health.api_error.resolved", &callback)
    end

    def on_v2_core_health_api_latency_firing(&callback)
      register("v2.core.health.api_latency.firing", &callback)
    end

    def on_v2_core_health_api_latency_resolved(&callback)
      register("v2.core.health.api_latency.resolved", &callback)
    end

    def on_v2_core_health_authorization_rate_drop_firing(&callback)
      register("v2.core.health.authorization_rate_drop.firing", &callback)
    end

    def on_v2_core_health_authorization_rate_drop_resolved(&callback)
      register("v2.core.health.authorization_rate_drop.resolved", &callback)
    end

    def on_v2_core_health_elements_error_firing(&callback)
      register("v2.core.health.elements_error.firing", &callback)
    end

    def on_v2_core_health_elements_error_resolved(&callback)
      register("v2.core.health.elements_error.resolved", &callback)
    end

    def on_v2_core_health_event_generation_failure_resolved(&callback)
      register("v2.core.health.event_generation_failure.resolved", &callback)
    end

    def on_v2_core_health_fraud_rate_increased(&callback)
      register("v2.core.health.fraud_rate.increased", &callback)
    end

    def on_v2_core_health_invoice_count_dropped_firing(&callback)
      register("v2.core.health.invoice_count_dropped.firing", &callback)
    end

    def on_v2_core_health_invoice_count_dropped_resolved(&callback)
      register("v2.core.health.invoice_count_dropped.resolved", &callback)
    end

    def on_v2_core_health_issuing_authorization_request_errors_firing(&callback)
      register("v2.core.health.issuing_authorization_request_errors.firing", &callback)
    end

    def on_v2_core_health_issuing_authorization_request_errors_resolved(&callback)
      register("v2.core.health.issuing_authorization_request_errors.resolved", &callback)
    end

    def on_v2_core_health_issuing_authorization_request_timeout_firing(&callback)
      register("v2.core.health.issuing_authorization_request_timeout.firing", &callback)
    end

    def on_v2_core_health_issuing_authorization_request_timeout_resolved(&callback)
      register("v2.core.health.issuing_authorization_request_timeout.resolved", &callback)
    end

    def on_v2_core_health_meter_event_summaries_delayed_firing(&callback)
      register("v2.core.health.meter_event_summaries_delayed.firing", &callback)
    end

    def on_v2_core_health_meter_event_summaries_delayed_resolved(&callback)
      register("v2.core.health.meter_event_summaries_delayed.resolved", &callback)
    end

    def on_v2_core_health_payment_method_error_firing(&callback)
      register("v2.core.health.payment_method_error.firing", &callback)
    end

    def on_v2_core_health_payment_method_error_resolved(&callback)
      register("v2.core.health.payment_method_error.resolved", &callback)
    end

    def on_v2_core_health_sepa_debit_delayed_firing(&callback)
      register("v2.core.health.sepa_debit_delayed.firing", &callback)
    end

    def on_v2_core_health_sepa_debit_delayed_resolved(&callback)
      register("v2.core.health.sepa_debit_delayed.resolved", &callback)
    end

    def on_v2_core_health_traffic_volume_drop_firing(&callback)
      register("v2.core.health.traffic_volume_drop.firing", &callback)
    end

    def on_v2_core_health_traffic_volume_drop_resolved(&callback)
      register("v2.core.health.traffic_volume_drop.resolved", &callback)
    end

    def on_v2_core_health_webhook_latency_firing(&callback)
      register("v2.core.health.webhook_latency.firing", &callback)
    end

    def on_v2_core_health_webhook_latency_resolved(&callback)
      register("v2.core.health.webhook_latency.resolved", &callback)
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

    def on_v2_extend_extension_run_failed(&callback)
      register("v2.extend.extension_run.failed", &callback)
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

    def on_v2_iam_api_key_created(&callback)
      register("v2.iam.api_key.created", &callback)
    end

    def on_v2_iam_api_key_default_secret_revealed(&callback)
      register("v2.iam.api_key.default_secret_revealed", &callback)
    end

    def on_v2_iam_api_key_expired(&callback)
      register("v2.iam.api_key.expired", &callback)
    end

    def on_v2_iam_api_key_permissions_updated(&callback)
      register("v2.iam.api_key.permissions_updated", &callback)
    end

    def on_v2_iam_api_key_rotated(&callback)
      register("v2.iam.api_key.rotated", &callback)
    end

    def on_v2_iam_api_key_updated(&callback)
      register("v2.iam.api_key.updated", &callback)
    end

    def on_v2_iam_stripe_access_grant_approved(&callback)
      register("v2.iam.stripe_access_grant.approved", &callback)
    end

    def on_v2_iam_stripe_access_grant_canceled(&callback)
      register("v2.iam.stripe_access_grant.canceled", &callback)
    end

    def on_v2_iam_stripe_access_grant_denied(&callback)
      register("v2.iam.stripe_access_grant.denied", &callback)
    end

    def on_v2_iam_stripe_access_grant_removed(&callback)
      register("v2.iam.stripe_access_grant.removed", &callback)
    end

    def on_v2_iam_stripe_access_grant_requested(&callback)
      register("v2.iam.stripe_access_grant.requested", &callback)
    end

    def on_v2_iam_stripe_access_grant_updated(&callback)
      register("v2.iam.stripe_access_grant.updated", &callback)
    end

    def on_v2_money_management_adjustment_created(&callback)
      register("v2.money_management.adjustment.created", &callback)
    end

    def on_v2_money_management_debit_dispute_failed(&callback)
      register("v2.money_management.debit_dispute.failed", &callback)
    end

    def on_v2_money_management_debit_dispute_submitted(&callback)
      register("v2.money_management.debit_dispute.submitted", &callback)
    end

    def on_v2_money_management_debit_dispute_succeeded(&callback)
      register("v2.money_management.debit_dispute.succeeded", &callback)
    end

    def on_v2_money_management_financial_account_created(&callback)
      register("v2.money_management.financial_account.created", &callback)
    end

    def on_v2_money_management_financial_account_updated(&callback)
      register("v2.money_management.financial_account.updated", &callback)
    end

    def on_v2_money_management_financial_account_statement_created(&callback)
      register("v2.money_management.financial_account_statement.created", &callback)
    end

    def on_v2_money_management_financial_account_statement_restated(&callback)
      register("v2.money_management.financial_account_statement.restated", &callback)
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

    def on_v2_money_management_received_debit_created(&callback)
      register("v2.money_management.received_debit.created", &callback)
    end

    def on_v2_money_management_received_debit_failed(&callback)
      register("v2.money_management.received_debit.failed", &callback)
    end

    def on_v2_money_management_received_debit_pending(&callback)
      register("v2.money_management.received_debit.pending", &callback)
    end

    def on_v2_money_management_received_debit_scheduled(&callback)
      register("v2.money_management.received_debit.scheduled", &callback)
    end

    def on_v2_money_management_received_debit_succeeded(&callback)
      register("v2.money_management.received_debit.succeeded", &callback)
    end

    def on_v2_money_management_received_debit_updated(&callback)
      register("v2.money_management.received_debit.updated", &callback)
    end

    def on_v2_money_management_received_debit_mandate_canceled(&callback)
      register("v2.money_management.received_debit_mandate.canceled", &callback)
    end

    def on_v2_money_management_received_debit_mandate_created(&callback)
      register("v2.money_management.received_debit_mandate.created", &callback)
    end

    def on_v2_money_management_received_debit_mandate_expired(&callback)
      register("v2.money_management.received_debit_mandate.expired", &callback)
    end

    def on_v2_money_management_received_debit_mandate_pending_cancellation(&callback)
      register("v2.money_management.received_debit_mandate.pending_cancellation", &callback)
    end

    def on_v2_money_management_received_debit_mandate_updated(&callback)
      register("v2.money_management.received_debit_mandate.updated", &callback)
    end

    def on_v2_money_management_recipient_verification_created(&callback)
      register("v2.money_management.recipient_verification.created", &callback)
    end

    def on_v2_money_management_recipient_verification_updated(&callback)
      register("v2.money_management.recipient_verification.updated", &callback)
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

    def on_v2_payments_off_session_payment_attempt_failed(&callback)
      register("v2.payments.off_session_payment.attempt_failed", &callback)
    end

    def on_v2_payments_off_session_payment_attempt_started(&callback)
      register("v2.payments.off_session_payment.attempt_started", &callback)
    end

    def on_v2_payments_off_session_payment_authorization_attempt_failed(&callback)
      register("v2.payments.off_session_payment.authorization_attempt_failed", &callback)
    end

    def on_v2_payments_off_session_payment_authorization_attempt_started(&callback)
      register("v2.payments.off_session_payment.authorization_attempt_started", &callback)
    end

    def on_v2_payments_off_session_payment_canceled(&callback)
      register("v2.payments.off_session_payment.canceled", &callback)
    end

    def on_v2_payments_off_session_payment_created(&callback)
      register("v2.payments.off_session_payment.created", &callback)
    end

    def on_v2_payments_off_session_payment_failed(&callback)
      register("v2.payments.off_session_payment.failed", &callback)
    end

    def on_v2_payments_off_session_payment_paused(&callback)
      register("v2.payments.off_session_payment.paused", &callback)
    end

    def on_v2_payments_off_session_payment_requires_capture(&callback)
      register("v2.payments.off_session_payment.requires_capture", &callback)
    end

    def on_v2_payments_off_session_payment_resumed(&callback)
      register("v2.payments.off_session_payment.resumed", &callback)
    end

    def on_v2_payments_off_session_payment_succeeded(&callback)
      register("v2.payments.off_session_payment.succeeded", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_canceled(&callback)
      register("v2.payments.settlement_allocation_intent.canceled", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_created(&callback)
      register("v2.payments.settlement_allocation_intent.created", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_errored(&callback)
      register("v2.payments.settlement_allocation_intent.errored", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_funds_not_received(&callback)
      register("v2.payments.settlement_allocation_intent.funds_not_received", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_matched(&callback)
      register("v2.payments.settlement_allocation_intent.matched", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_not_found(&callback)
      register("v2.payments.settlement_allocation_intent.not_found", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_settled(&callback)
      register("v2.payments.settlement_allocation_intent.settled", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_submitted(&callback)
      register("v2.payments.settlement_allocation_intent.submitted", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_split_canceled(&callback)
      register("v2.payments.settlement_allocation_intent_split.canceled", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_split_created(&callback)
      register("v2.payments.settlement_allocation_intent_split.created", &callback)
    end

    def on_v2_payments_settlement_allocation_intent_split_settled(&callback)
      register("v2.payments.settlement_allocation_intent_split.settled", &callback)
    end

    def on_v2_reporting_report_run_created(&callback)
      register("v2.reporting.report_run.created", &callback)
    end

    def on_v2_reporting_report_run_failed(&callback)
      register("v2.reporting.report_run.failed", &callback)
    end

    def on_v2_reporting_report_run_succeeded(&callback)
      register("v2.reporting.report_run.succeeded", &callback)
    end

    def on_v2_reporting_report_run_updated(&callback)
      register("v2.reporting.report_run.updated", &callback)
    end

    def on_v2_signals_account_evaluation_complete(&callback)
      register("v2.signals.account_evaluation.complete", &callback)
    end

    def on_v2_signals_account_signal_fraudulent_merchant_ready(&callback)
      register("v2.signals.account_signal.fraudulent_merchant_ready", &callback)
    end

    def on_v2_signals_account_signal_fraudulent_website_ready(&callback)
      register("v2.signals.account_signal.fraudulent_website_ready", &callback)
    end

    def on_v2_signals_account_signal_merchant_delinquency_ready(&callback)
      register("v2.signals.account_signal.merchant_delinquency_ready", &callback)
    end

    def on_v2_signals_account_signal_payment_delinquency_exposure_ready(&callback)
      register("v2.signals.account_signal.payment_delinquency_exposure_ready", &callback)
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
