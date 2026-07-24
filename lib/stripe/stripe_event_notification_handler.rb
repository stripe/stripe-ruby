# File copied from our code generator; changes here will be overwritten.
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
    def on_v1_account_application_authorized(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.application.authorized", &handler)
    end

    def on_v1_account_application_deauthorized(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.application.deauthorized", &handler)
    end

    def on_v1_account_external_account_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.external_account.created", &handler)
    end

    def on_v1_account_external_account_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.external_account.deleted", &handler)
    end

    def on_v1_account_external_account_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.external_account.updated", &handler)
    end

    def on_v1_account_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account.updated", &handler)
    end

    def on_v1_account_signals_including_delinquency_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.account_signals[delinquency].created", &handler)
    end

    def on_v1_application_fee_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.application_fee.created", &handler)
    end

    def on_v1_application_fee_refund_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.application_fee.refund.updated", &handler)
    end

    def on_v1_application_fee_refunded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.application_fee.refunded", &handler)
    end

    def on_v1_balance_available(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.balance.available", &handler)
    end

    def on_v1_billing_alert_triggered(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.alert.triggered", &handler)
    end

    def on_v1_billing_meter_error_report_triggered(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.error_report_triggered", &handler)
    end

    def on_v1_billing_meter_no_meter_found(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.no_meter_found", &handler)
    end

    def on_v1_billing_portal_configuration_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing_portal.configuration.created", &handler)
    end

    def on_v1_billing_portal_configuration_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing_portal.configuration.updated", &handler)
    end

    def on_v1_billing_portal_session_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing_portal.session.created", &handler)
    end

    def on_v1_capability_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.capability.updated", &handler)
    end

    def on_v1_cash_balance_funds_available(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.cash_balance.funds_available", &handler)
    end

    def on_v1_charge_captured(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.captured", &handler)
    end

    def on_v1_charge_dispute_closed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.dispute.closed", &handler)
    end

    def on_v1_charge_dispute_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.dispute.created", &handler)
    end

    def on_v1_charge_dispute_funds_reinstated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.dispute.funds_reinstated", &handler)
    end

    def on_v1_charge_dispute_funds_withdrawn(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.dispute.funds_withdrawn", &handler)
    end

    def on_v1_charge_dispute_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.dispute.updated", &handler)
    end

    def on_v1_charge_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.expired", &handler)
    end

    def on_v1_charge_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.failed", &handler)
    end

    def on_v1_charge_pending(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.pending", &handler)
    end

    def on_v1_charge_refund_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.refund.updated", &handler)
    end

    def on_v1_charge_refunded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.refunded", &handler)
    end

    def on_v1_charge_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.succeeded", &handler)
    end

    def on_v1_charge_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.charge.updated", &handler)
    end

    def on_v1_checkout_session_async_payment_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.checkout.session.async_payment_failed", &handler)
    end

    def on_v1_checkout_session_async_payment_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.checkout.session.async_payment_succeeded", &handler)
    end

    def on_v1_checkout_session_completed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.checkout.session.completed", &handler)
    end

    def on_v1_checkout_session_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.checkout.session.expired", &handler)
    end

    def on_v1_climate_order_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.order.canceled", &handler)
    end

    def on_v1_climate_order_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.order.created", &handler)
    end

    def on_v1_climate_order_delayed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.order.delayed", &handler)
    end

    def on_v1_climate_order_delivered(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.order.delivered", &handler)
    end

    def on_v1_climate_order_product_substituted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.order.product_substituted", &handler)
    end

    def on_v1_climate_product_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.product.created", &handler)
    end

    def on_v1_climate_product_pricing_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.climate.product.pricing_updated", &handler)
    end

    def on_v1_coupon_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.coupon.created", &handler)
    end

    def on_v1_coupon_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.coupon.deleted", &handler)
    end

    def on_v1_coupon_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.coupon.updated", &handler)
    end

    def on_v1_credit_note_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.credit_note.created", &handler)
    end

    def on_v1_credit_note_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.credit_note.updated", &handler)
    end

    def on_v1_credit_note_voided(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.credit_note.voided", &handler)
    end

    def on_v1_customer_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.created", &handler)
    end

    def on_v1_customer_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.deleted", &handler)
    end

    def on_v1_customer_subscription_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.created", &handler)
    end

    def on_v1_customer_subscription_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.deleted", &handler)
    end

    def on_v1_customer_subscription_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.paused", &handler)
    end

    def on_v1_customer_subscription_pending_update_applied(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.pending_update_applied", &handler)
    end

    def on_v1_customer_subscription_pending_update_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.pending_update_expired", &handler)
    end

    def on_v1_customer_subscription_resumed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.resumed", &handler)
    end

    def on_v1_customer_subscription_trial_will_end(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.trial_will_end", &handler)
    end

    def on_v1_customer_subscription_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.subscription.updated", &handler)
    end

    def on_v1_customer_tax_id_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.tax_id.created", &handler)
    end

    def on_v1_customer_tax_id_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.tax_id.deleted", &handler)
    end

    def on_v1_customer_tax_id_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.tax_id.updated", &handler)
    end

    def on_v1_customer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer.updated", &handler)
    end

    def on_v1_customer_cash_balance_transaction_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.customer_cash_balance_transaction.created", &handler)
    end

    def on_v1_entitlements_active_entitlement_summary_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.entitlements.active_entitlement_summary.updated", &handler)
    end

    def on_v1_file_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.file.created", &handler)
    end

    def on_v1_financial_connections_account_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.created", &handler)
    end

    def on_v1_financial_connections_account_deactivated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.deactivated", &handler)
    end

    def on_v1_financial_connections_account_disconnected(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.disconnected", &handler)
    end

    def on_v1_financial_connections_account_reactivated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.reactivated", &handler)
    end

    def on_v1_financial_connections_account_refreshed_balance(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.refreshed_balance", &handler)
    end

    def on_v1_financial_connections_account_refreshed_ownership(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.refreshed_ownership", &handler)
    end

    def on_v1_financial_connections_account_refreshed_transactions(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.financial_connections.account.refreshed_transactions", &handler)
    end

    def on_v1_identity_verification_session_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.canceled", &handler)
    end

    def on_v1_identity_verification_session_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.created", &handler)
    end

    def on_v1_identity_verification_session_processing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.processing", &handler)
    end

    def on_v1_identity_verification_session_redacted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.redacted", &handler)
    end

    def on_v1_identity_verification_session_requires_input(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.requires_input", &handler)
    end

    def on_v1_identity_verification_session_verified(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.identity.verification_session.verified", &handler)
    end

    def on_v1_invoice_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.created", &handler)
    end

    def on_v1_invoice_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.deleted", &handler)
    end

    def on_v1_invoice_finalization_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.finalization_failed", &handler)
    end

    def on_v1_invoice_finalized(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.finalized", &handler)
    end

    def on_v1_invoice_marked_uncollectible(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.marked_uncollectible", &handler)
    end

    def on_v1_invoice_overdue(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.overdue", &handler)
    end

    def on_v1_invoice_overpaid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.overpaid", &handler)
    end

    def on_v1_invoice_paid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.paid", &handler)
    end

    def on_v1_invoice_payment_action_required(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.payment_action_required", &handler)
    end

    def on_v1_invoice_payment_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.payment_failed", &handler)
    end

    def on_v1_invoice_payment_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.payment_succeeded", &handler)
    end

    def on_v1_invoice_sent(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.sent", &handler)
    end

    def on_v1_invoice_upcoming(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.upcoming", &handler)
    end

    def on_v1_invoice_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.updated", &handler)
    end

    def on_v1_invoice_voided(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.voided", &handler)
    end

    def on_v1_invoice_will_be_due(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice.will_be_due", &handler)
    end

    def on_v1_invoice_payment_paid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoice_payment.paid", &handler)
    end

    def on_v1_invoiceitem_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoiceitem.created", &handler)
    end

    def on_v1_invoiceitem_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.invoiceitem.deleted", &handler)
    end

    def on_v1_issuing_authorization_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_authorization.created", &handler)
    end

    def on_v1_issuing_authorization_request(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_authorization.request", &handler)
    end

    def on_v1_issuing_authorization_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_authorization.updated", &handler)
    end

    def on_v1_issuing_card_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_card.created", &handler)
    end

    def on_v1_issuing_card_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_card.updated", &handler)
    end

    def on_v1_issuing_cardholder_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_cardholder.created", &handler)
    end

    def on_v1_issuing_cardholder_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_cardholder.updated", &handler)
    end

    def on_v1_issuing_dispute_closed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.closed", &handler)
    end

    def on_v1_issuing_dispute_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.created", &handler)
    end

    def on_v1_issuing_dispute_funds_reinstated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.funds_reinstated", &handler)
    end

    def on_v1_issuing_dispute_funds_rescinded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.funds_rescinded", &handler)
    end

    def on_v1_issuing_dispute_submitted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.submitted", &handler)
    end

    def on_v1_issuing_dispute_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_dispute.updated", &handler)
    end

    def on_v1_issuing_personalization_design_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_personalization_design.activated", &handler)
    end

    def on_v1_issuing_personalization_design_deactivated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_personalization_design.deactivated", &handler)
    end

    def on_v1_issuing_personalization_design_rejected(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_personalization_design.rejected", &handler)
    end

    def on_v1_issuing_personalization_design_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_personalization_design.updated", &handler)
    end

    def on_v1_issuing_token_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_token.created", &handler)
    end

    def on_v1_issuing_token_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_token.updated", &handler)
    end

    def on_v1_issuing_transaction_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_transaction.created", &handler)
    end

    def on_v1_issuing_transaction_purchase_details_receipt_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_transaction.purchase_details_receipt_updated", &handler)
    end

    def on_v1_issuing_transaction_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.issuing_transaction.updated", &handler)
    end

    def on_v1_mandate_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.mandate.updated", &handler)
    end

    def on_v1_payment_intent_amount_capturable_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.amount_capturable_updated", &handler)
    end

    def on_v1_payment_intent_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.canceled", &handler)
    end

    def on_v1_payment_intent_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.created", &handler)
    end

    def on_v1_payment_intent_partially_funded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.partially_funded", &handler)
    end

    def on_v1_payment_intent_payment_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.payment_failed", &handler)
    end

    def on_v1_payment_intent_processing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.processing", &handler)
    end

    def on_v1_payment_intent_requires_action(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.requires_action", &handler)
    end

    def on_v1_payment_intent_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_intent.succeeded", &handler)
    end

    def on_v1_payment_link_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_link.created", &handler)
    end

    def on_v1_payment_link_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_link.updated", &handler)
    end

    def on_v1_payment_method_attached(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_method.attached", &handler)
    end

    def on_v1_payment_method_automatically_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_method.automatically_updated", &handler)
    end

    def on_v1_payment_method_detached(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_method.detached", &handler)
    end

    def on_v1_payment_method_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payment_method.updated", &handler)
    end

    def on_v1_payout_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.canceled", &handler)
    end

    def on_v1_payout_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.created", &handler)
    end

    def on_v1_payout_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.failed", &handler)
    end

    def on_v1_payout_paid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.paid", &handler)
    end

    def on_v1_payout_reconciliation_completed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.reconciliation_completed", &handler)
    end

    def on_v1_payout_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.payout.updated", &handler)
    end

    def on_v1_person_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.person.created", &handler)
    end

    def on_v1_person_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.person.deleted", &handler)
    end

    def on_v1_person_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.person.updated", &handler)
    end

    def on_v1_plan_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.plan.created", &handler)
    end

    def on_v1_plan_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.plan.deleted", &handler)
    end

    def on_v1_plan_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.plan.updated", &handler)
    end

    def on_v1_price_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.price.created", &handler)
    end

    def on_v1_price_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.price.deleted", &handler)
    end

    def on_v1_price_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.price.updated", &handler)
    end

    def on_v1_product_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.product.created", &handler)
    end

    def on_v1_product_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.product.deleted", &handler)
    end

    def on_v1_product_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.product.updated", &handler)
    end

    def on_v1_promotion_code_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.promotion_code.created", &handler)
    end

    def on_v1_promotion_code_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.promotion_code.updated", &handler)
    end

    def on_v1_quote_accepted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.quote.accepted", &handler)
    end

    def on_v1_quote_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.quote.canceled", &handler)
    end

    def on_v1_quote_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.quote.created", &handler)
    end

    def on_v1_quote_finalized(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.quote.finalized", &handler)
    end

    def on_v1_radar_early_fraud_warning_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.radar.early_fraud_warning.created", &handler)
    end

    def on_v1_radar_early_fraud_warning_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.radar.early_fraud_warning.updated", &handler)
    end

    def on_v1_refund_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.refund.created", &handler)
    end

    def on_v1_refund_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.refund.failed", &handler)
    end

    def on_v1_refund_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.refund.updated", &handler)
    end

    def on_v1_review_closed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.review.closed", &handler)
    end

    def on_v1_review_opened(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.review.opened", &handler)
    end

    def on_v1_setup_intent_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.setup_intent.canceled", &handler)
    end

    def on_v1_setup_intent_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.setup_intent.created", &handler)
    end

    def on_v1_setup_intent_requires_action(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.setup_intent.requires_action", &handler)
    end

    def on_v1_setup_intent_setup_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.setup_intent.setup_failed", &handler)
    end

    def on_v1_setup_intent_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.setup_intent.succeeded", &handler)
    end

    def on_v1_sigma_scheduled_query_run_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.sigma.scheduled_query_run.created", &handler)
    end

    def on_v1_source_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.source.canceled", &handler)
    end

    def on_v1_source_chargeable(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.source.chargeable", &handler)
    end

    def on_v1_source_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.source.failed", &handler)
    end

    def on_v1_source_refund_attributes_required(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.source.refund_attributes_required", &handler)
    end

    def on_v1_subscription_schedule_aborted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.aborted", &handler)
    end

    def on_v1_subscription_schedule_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.canceled", &handler)
    end

    def on_v1_subscription_schedule_completed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.completed", &handler)
    end

    def on_v1_subscription_schedule_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.created", &handler)
    end

    def on_v1_subscription_schedule_expiring(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.expiring", &handler)
    end

    def on_v1_subscription_schedule_released(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.released", &handler)
    end

    def on_v1_subscription_schedule_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.subscription_schedule.updated", &handler)
    end

    def on_v1_tax_settings_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.tax.settings.updated", &handler)
    end

    def on_v1_tax_rate_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.tax_rate.created", &handler)
    end

    def on_v1_tax_rate_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.tax_rate.updated", &handler)
    end

    def on_v1_terminal_reader_action_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.terminal.reader.action_failed", &handler)
    end

    def on_v1_terminal_reader_action_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.terminal.reader.action_succeeded", &handler)
    end

    def on_v1_terminal_reader_action_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.terminal.reader.action_updated", &handler)
    end

    def on_v1_test_helpers_test_clock_advancing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.test_helpers.test_clock.advancing", &handler)
    end

    def on_v1_test_helpers_test_clock_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.test_helpers.test_clock.created", &handler)
    end

    def on_v1_test_helpers_test_clock_deleted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.test_helpers.test_clock.deleted", &handler)
    end

    def on_v1_test_helpers_test_clock_internal_failure(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.test_helpers.test_clock.internal_failure", &handler)
    end

    def on_v1_test_helpers_test_clock_ready(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.test_helpers.test_clock.ready", &handler)
    end

    def on_v1_topup_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.topup.canceled", &handler)
    end

    def on_v1_topup_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.topup.created", &handler)
    end

    def on_v1_topup_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.topup.failed", &handler)
    end

    def on_v1_topup_reversed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.topup.reversed", &handler)
    end

    def on_v1_topup_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.topup.succeeded", &handler)
    end

    def on_v1_transfer_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.transfer.created", &handler)
    end

    def on_v1_transfer_reversed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.transfer.reversed", &handler)
    end

    def on_v1_transfer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.transfer.updated", &handler)
    end

    def on_v2_billing_cadence_billed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.cadence.billed", &handler)
    end

    def on_v2_billing_cadence_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.cadence.canceled", &handler)
    end

    def on_v2_billing_cadence_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.cadence.created", &handler)
    end

    def on_v2_billing_contract_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.contract.activated", &handler)
    end

    def on_v2_billing_contract_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.contract.canceled", &handler)
    end

    def on_v2_billing_contract_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.contract.created", &handler)
    end

    def on_v2_billing_contract_ended(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.contract.ended", &handler)
    end

    def on_v2_billing_contract_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.contract.updated", &handler)
    end

    def on_v2_billing_license_fee_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.license_fee.created", &handler)
    end

    def on_v2_billing_license_fee_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.license_fee.updated", &handler)
    end

    def on_v2_billing_license_fee_version_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.license_fee_version.created", &handler)
    end

    def on_v2_billing_licensed_item_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.licensed_item.created", &handler)
    end

    def on_v2_billing_licensed_item_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.licensed_item.updated", &handler)
    end

    def on_v2_billing_metered_item_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.metered_item.created", &handler)
    end

    def on_v2_billing_metered_item_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.metered_item.updated", &handler)
    end

    def on_v2_billing_pricing_plan_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan.created", &handler)
    end

    def on_v2_billing_pricing_plan_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan.updated", &handler)
    end

    def on_v2_billing_pricing_plan_component_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_component.created", &handler)
    end

    def on_v2_billing_pricing_plan_component_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_component.updated", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_collection_awaiting_customer_action(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.collection_awaiting_customer_action", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_collection_current(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.collection_current", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_collection_past_due(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.collection_past_due", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_collection_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.collection_paused", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_collection_unpaid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.collection_unpaid", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.servicing_activated", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.servicing_canceled", &handler)
    end

    def on_v2_billing_pricing_plan_subscription_servicing_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_subscription.servicing_paused", &handler)
    end

    def on_v2_billing_pricing_plan_version_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.pricing_plan_version.created", &handler)
    end

    def on_v2_billing_rate_card_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card.created", &handler)
    end

    def on_v2_billing_rate_card_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card.updated", &handler)
    end

    def on_v2_billing_rate_card_custom_pricing_unit_overage_rate_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_custom_pricing_unit_overage_rate.created", &handler)
    end

    def on_v2_billing_rate_card_rate_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_rate.created", &handler)
    end

    def on_v2_billing_rate_card_subscription_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.activated", &handler)
    end

    def on_v2_billing_rate_card_subscription_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.canceled", &handler)
    end

    def on_v2_billing_rate_card_subscription_collection_awaiting_customer_action(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.collection_awaiting_customer_action", &handler)
    end

    def on_v2_billing_rate_card_subscription_collection_current(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.collection_current", &handler)
    end

    def on_v2_billing_rate_card_subscription_collection_past_due(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.collection_past_due", &handler)
    end

    def on_v2_billing_rate_card_subscription_collection_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.collection_paused", &handler)
    end

    def on_v2_billing_rate_card_subscription_collection_unpaid(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.collection_unpaid", &handler)
    end

    def on_v2_billing_rate_card_subscription_servicing_activated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.servicing_activated", &handler)
    end

    def on_v2_billing_rate_card_subscription_servicing_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.servicing_canceled", &handler)
    end

    def on_v2_billing_rate_card_subscription_servicing_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_subscription.servicing_paused", &handler)
    end

    def on_v2_billing_rate_card_version_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.billing.rate_card_version.created", &handler)
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

    def on_v2_core_account_including_configuration_card_creator_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.card_creator].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_card_creator_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.card_creator].updated", &handler)
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

    def on_v2_core_account_including_configuration_money_manager_capability_status_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.money_manager].capability_status_updated", &handler)
    end

    def on_v2_core_account_including_configuration_money_manager_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.money_manager].updated", &handler)
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

    def on_v2_core_account_signals_fraudulent_website_ready(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_signals.fraudulent_website_ready", &handler)
    end

    def on_v2_core_approval_request_approved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.approved", &handler)
    end

    def on_v2_core_approval_request_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.canceled", &handler)
    end

    def on_v2_core_approval_request_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.created", &handler)
    end

    def on_v2_core_approval_request_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.expired", &handler)
    end

    def on_v2_core_approval_request_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.failed", &handler)
    end

    def on_v2_core_approval_request_rejected(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.rejected", &handler)
    end

    def on_v2_core_approval_request_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.approval_request.succeeded", &handler)
    end

    def on_v2_core_batch_job_batch_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.batch_failed", &handler)
    end

    def on_v2_core_batch_job_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.canceled", &handler)
    end

    def on_v2_core_batch_job_completed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.completed", &handler)
    end

    def on_v2_core_batch_job_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.created", &handler)
    end

    def on_v2_core_batch_job_ready_for_upload(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.ready_for_upload", &handler)
    end

    def on_v2_core_batch_job_timeout(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.timeout", &handler)
    end

    def on_v2_core_batch_job_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.updated", &handler)
    end

    def on_v2_core_batch_job_upload_timeout(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.upload_timeout", &handler)
    end

    def on_v2_core_batch_job_validating(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.validating", &handler)
    end

    def on_v2_core_batch_job_validation_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.batch_job.validation_failed", &handler)
    end

    def on_v2_core_claimable_sandbox_claimed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.claimable_sandbox.claimed", &handler)
    end

    def on_v2_core_claimable_sandbox_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.claimable_sandbox.created", &handler)
    end

    def on_v2_core_claimable_sandbox_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.claimable_sandbox.expired", &handler)
    end

    def on_v2_core_claimable_sandbox_expiring(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.claimable_sandbox.expiring", &handler)
    end

    def on_v2_core_claimable_sandbox_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.claimable_sandbox.updated", &handler)
    end

    def on_v2_core_event_destination_ping(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.event_destination.ping", &handler)
    end

    def on_v2_core_health_api_error_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.api_error.firing", &handler)
    end

    def on_v2_core_health_api_error_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.api_error.resolved", &handler)
    end

    def on_v2_core_health_api_latency_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.api_latency.firing", &handler)
    end

    def on_v2_core_health_api_latency_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.api_latency.resolved", &handler)
    end

    def on_v2_core_health_authorization_rate_drop_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.authorization_rate_drop.firing", &handler)
    end

    def on_v2_core_health_authorization_rate_drop_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.authorization_rate_drop.resolved", &handler)
    end

    def on_v2_core_health_elements_error_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.elements_error.firing", &handler)
    end

    def on_v2_core_health_elements_error_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.elements_error.resolved", &handler)
    end

    def on_v2_core_health_event_generation_failure_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.event_generation_failure.resolved", &handler)
    end

    def on_v2_core_health_fraud_rate_increased(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.fraud_rate.increased", &handler)
    end

    def on_v2_core_health_invoice_count_dropped_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.invoice_count_dropped.firing", &handler)
    end

    def on_v2_core_health_invoice_count_dropped_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.invoice_count_dropped.resolved", &handler)
    end

    def on_v2_core_health_issuing_authorization_request_errors_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.issuing_authorization_request_errors.firing", &handler)
    end

    def on_v2_core_health_issuing_authorization_request_errors_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.issuing_authorization_request_errors.resolved", &handler)
    end

    def on_v2_core_health_issuing_authorization_request_timeout_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.issuing_authorization_request_timeout.firing", &handler)
    end

    def on_v2_core_health_issuing_authorization_request_timeout_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.issuing_authorization_request_timeout.resolved", &handler)
    end

    def on_v2_core_health_meter_event_summaries_delayed_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.meter_event_summaries_delayed.firing", &handler)
    end

    def on_v2_core_health_meter_event_summaries_delayed_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.meter_event_summaries_delayed.resolved", &handler)
    end

    def on_v2_core_health_payment_method_error_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.payment_method_error.firing", &handler)
    end

    def on_v2_core_health_payment_method_error_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.payment_method_error.resolved", &handler)
    end

    def on_v2_core_health_sepa_debit_delayed_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.sepa_debit_delayed.firing", &handler)
    end

    def on_v2_core_health_sepa_debit_delayed_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.sepa_debit_delayed.resolved", &handler)
    end

    def on_v2_core_health_traffic_volume_drop_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.traffic_volume_drop.firing", &handler)
    end

    def on_v2_core_health_traffic_volume_drop_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.traffic_volume_drop.resolved", &handler)
    end

    def on_v2_core_health_webhook_latency_firing(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.webhook_latency.firing", &handler)
    end

    def on_v2_core_health_webhook_latency_resolved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.health.webhook_latency.resolved", &handler)
    end

    def on_v2_data_reporting_query_run_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.data.reporting.query_run.created", &handler)
    end

    def on_v2_data_reporting_query_run_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.data.reporting.query_run.failed", &handler)
    end

    def on_v2_data_reporting_query_run_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.data.reporting.query_run.succeeded", &handler)
    end

    def on_v2_data_reporting_query_run_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.data.reporting.query_run.updated", &handler)
    end

    def on_v2_extend_extension_run_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.extend.extension_run.failed", &handler)
    end

    def on_v2_extend_workflow_run_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.extend.workflow_run.failed", &handler)
    end

    def on_v2_extend_workflow_run_started(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.extend.workflow_run.started", &handler)
    end

    def on_v2_extend_workflow_run_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.extend.workflow_run.succeeded", &handler)
    end

    def on_v2_iam_api_key_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.created", &handler)
    end

    def on_v2_iam_api_key_default_secret_revealed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.default_secret_revealed", &handler)
    end

    def on_v2_iam_api_key_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.expired", &handler)
    end

    def on_v2_iam_api_key_permissions_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.permissions_updated", &handler)
    end

    def on_v2_iam_api_key_rotated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.rotated", &handler)
    end

    def on_v2_iam_api_key_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.api_key.updated", &handler)
    end

    def on_v2_iam_stripe_access_grant_approved(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.approved", &handler)
    end

    def on_v2_iam_stripe_access_grant_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.canceled", &handler)
    end

    def on_v2_iam_stripe_access_grant_denied(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.denied", &handler)
    end

    def on_v2_iam_stripe_access_grant_removed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.removed", &handler)
    end

    def on_v2_iam_stripe_access_grant_requested(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.requested", &handler)
    end

    def on_v2_iam_stripe_access_grant_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.iam.stripe_access_grant.updated", &handler)
    end

    def on_v2_money_management_adjustment_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.adjustment.created", &handler)
    end

    def on_v2_money_management_debit_dispute_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.debit_dispute.failed", &handler)
    end

    def on_v2_money_management_debit_dispute_submitted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.debit_dispute.submitted", &handler)
    end

    def on_v2_money_management_debit_dispute_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.debit_dispute.succeeded", &handler)
    end

    def on_v2_money_management_financial_account_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.created", &handler)
    end

    def on_v2_money_management_financial_account_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.updated", &handler)
    end

    def on_v2_money_management_financial_account_statement_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account_statement.created", &handler)
    end

    def on_v2_money_management_financial_account_statement_restated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account_statement.restated", &handler)
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

    def on_v2_money_management_outbound_payment_under_review(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.under_review", &handler)
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

    def on_v2_money_management_outbound_transfer_under_review(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.under_review", &handler)
    end

    def on_v2_money_management_outbound_transfer_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.updated", &handler)
    end

    def on_v2_money_management_payout_method_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.payout_method.created", &handler)
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

    def on_v2_money_management_received_debit_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.created", &handler)
    end

    def on_v2_money_management_received_debit_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.failed", &handler)
    end

    def on_v2_money_management_received_debit_pending(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.pending", &handler)
    end

    def on_v2_money_management_received_debit_scheduled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.scheduled", &handler)
    end

    def on_v2_money_management_received_debit_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.succeeded", &handler)
    end

    def on_v2_money_management_received_debit_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.updated", &handler)
    end

    def on_v2_money_management_received_debit_mandate_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit_mandate.canceled", &handler)
    end

    def on_v2_money_management_received_debit_mandate_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit_mandate.created", &handler)
    end

    def on_v2_money_management_received_debit_mandate_expired(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit_mandate.expired", &handler)
    end

    def on_v2_money_management_received_debit_mandate_pending_cancellation(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit_mandate.pending_cancellation", &handler)
    end

    def on_v2_money_management_received_debit_mandate_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit_mandate.updated", &handler)
    end

    def on_v2_money_management_recipient_verification_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.recipient_verification.created", &handler)
    end

    def on_v2_money_management_recipient_verification_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.recipient_verification.updated", &handler)
    end

    def on_v2_money_management_transaction_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.created", &handler)
    end

    def on_v2_money_management_transaction_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.updated", &handler)
    end

    def on_v2_orchestrated_commerce_agreement_confirmed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.orchestrated_commerce.agreement.confirmed", &handler)
    end

    def on_v2_orchestrated_commerce_agreement_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.orchestrated_commerce.agreement.created", &handler)
    end

    def on_v2_orchestrated_commerce_agreement_partially_confirmed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.orchestrated_commerce.agreement.partially_confirmed", &handler)
    end

    def on_v2_orchestrated_commerce_agreement_terminated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.orchestrated_commerce.agreement.terminated", &handler)
    end

    def on_v2_payments_off_session_payment_attempt_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.attempt_failed", &handler)
    end

    def on_v2_payments_off_session_payment_attempt_started(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.attempt_started", &handler)
    end

    def on_v2_payments_off_session_payment_authorization_attempt_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.authorization_attempt_failed", &handler)
    end

    def on_v2_payments_off_session_payment_authorization_attempt_started(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.authorization_attempt_started", &handler)
    end

    def on_v2_payments_off_session_payment_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.canceled", &handler)
    end

    def on_v2_payments_off_session_payment_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.created", &handler)
    end

    def on_v2_payments_off_session_payment_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.failed", &handler)
    end

    def on_v2_payments_off_session_payment_paused(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.paused", &handler)
    end

    def on_v2_payments_off_session_payment_requires_capture(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.requires_capture", &handler)
    end

    def on_v2_payments_off_session_payment_resumed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.resumed", &handler)
    end

    def on_v2_payments_off_session_payment_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.succeeded", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.canceled", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.created", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_errored(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.errored", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_funds_not_received(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.funds_not_received", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_matched(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.matched", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_not_found(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.not_found", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_settled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.settled", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_submitted(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent.submitted", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_split_canceled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent_split.canceled", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_split_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent_split.created", &handler)
    end

    def on_v2_payments_settlement_allocation_intent_split_settled(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.settlement_allocation_intent_split.settled", &handler)
    end

    def on_v2_reporting_report_run_created(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.reporting.report_run.created", &handler)
    end

    def on_v2_reporting_report_run_failed(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.reporting.report_run.failed", &handler)
    end

    def on_v2_reporting_report_run_succeeded(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.reporting.report_run.succeeded", &handler)
    end

    def on_v2_reporting_report_run_updated(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.reporting.report_run.updated", &handler)
    end

    def on_v2_signals_account_signal_fraudulent_merchant_ready(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.signals.account_signal.fraudulent_merchant_ready", &handler)
    end

    def on_v2_signals_account_signal_merchant_delinquency_ready(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.signals.account_signal.merchant_delinquency_ready", &handler)
    end

    def on_v2_signals_account_signal_payment_delinquency_exposure_ready(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.signals.account_signal.payment_delinquency_exposure_ready", &handler)
    end
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
end
