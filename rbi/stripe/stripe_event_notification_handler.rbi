# File copied from our code generator; changes here will be overwritten.
# frozen_string_literal: true

# frozen_string_literal: true
# typed: true

module Stripe
  class UnhandledNotificationDetails
    sig { returns(T::Boolean) }
    def is_known_event_type; end
  end

  class StripeEventNotificationHandler
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
    end

    sig do
      params(
        webhook_body: String,
        sig_header: String
      )
        .void
    end
    def handle(webhook_body, sig_header); end

    sig { returns(T::Array[String]) }
    def registered_event_types; end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountApplicationAuthorizedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_application_authorized(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountApplicationDeauthorizedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_application_deauthorized(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountExternalAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_external_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountExternalAccountDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_external_account_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountExternalAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_external_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1AccountSignalsIncludingDelinquencyCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_account_signals_including_delinquency_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ApplicationFeeCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_application_fee_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ApplicationFeeRefundUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_application_fee_refund_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ApplicationFeeRefundedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_application_fee_refunded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BalanceAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_balance_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingAlertTriggeredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_alert_triggered(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_meter_error_report_triggered(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingMeterNoMeterFoundEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_meter_no_meter_found(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingPortalConfigurationCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_portal_configuration_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingPortalConfigurationUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_portal_configuration_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingPortalSessionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_portal_session_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CapabilityUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_capability_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CashBalanceFundsAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_cash_balance_funds_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeCapturedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_captured(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeDisputeClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_dispute_closed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeDisputeCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_dispute_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeDisputeFundsReinstatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_dispute_funds_reinstated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeDisputeFundsWithdrawnEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_dispute_funds_withdrawn(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeDisputeUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_dispute_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargePendingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_pending(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeRefundUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_refund_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeRefundedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_refunded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ChargeUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_charge_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CheckoutSessionAsyncPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_checkout_session_async_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CheckoutSessionAsyncPaymentSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_checkout_session_async_payment_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CheckoutSessionCompletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_checkout_session_completed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CheckoutSessionExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_checkout_session_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateOrderCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_order_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateOrderCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_order_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateOrderDelayedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_order_delayed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateOrderDeliveredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_order_delivered(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateOrderProductSubstitutedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_order_product_substituted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateProductCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_product_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ClimateProductPricingUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_climate_product_pricing_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CouponCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_coupon_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CouponDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_coupon_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CouponUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_coupon_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CreditNoteCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_credit_note_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CreditNoteUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_credit_note_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CreditNoteVoidedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_credit_note_voided(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionPendingUpdateAppliedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_pending_update_applied(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionPendingUpdateExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_pending_update_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionResumedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_resumed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionTrialWillEndEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_trial_will_end(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerSubscriptionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_subscription_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerTaxIdCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_tax_id_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerTaxIdDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_tax_id_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerTaxIdUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_tax_id_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1CustomerCashBalanceTransactionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_customer_cash_balance_transaction_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1EntitlementsActiveEntitlementSummaryUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_entitlements_active_entitlement_summary_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FileCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_file_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountDeactivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_deactivated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountDisconnectedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_disconnected(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountReactivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_reactivated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountRefreshedBalanceEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_refreshed_balance(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountRefreshedOwnershipEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_refreshed_ownership(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1FinancialConnectionsAccountRefreshedTransactionsEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_financial_connections_account_refreshed_transactions(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_processing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionRedactedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_redacted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionRequiresInputEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_requires_input(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IdentityVerificationSessionVerifiedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_identity_verification_session_verified(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceFinalizationFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_finalization_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceFinalizedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_finalized(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceMarkedUncollectibleEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_marked_uncollectible(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceOverdueEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_overdue(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceOverpaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_overpaid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoicePaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_paid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoicePaymentActionRequiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_payment_action_required(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoicePaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoicePaymentSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_payment_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceSentEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_sent(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceUpcomingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_upcoming(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceVoidedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_voided(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceWillBeDueEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_will_be_due(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoicePaymentPaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoice_payment_paid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceitemCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoiceitem_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1InvoiceitemDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_invoiceitem_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingAuthorizationCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_authorization_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingAuthorizationRequestEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_authorization_request(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingAuthorizationUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_authorization_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingCardCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_card_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingCardUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_card_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingCardholderCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_cardholder_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingCardholderUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_cardholder_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_closed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeFundsReinstatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_funds_reinstated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeFundsRescindedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_funds_rescinded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeSubmittedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_submitted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingDisputeUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_dispute_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingPersonalizationDesignActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_personalization_design_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingPersonalizationDesignDeactivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_personalization_design_deactivated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingPersonalizationDesignRejectedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_personalization_design_rejected(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingPersonalizationDesignUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_personalization_design_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingTokenCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_token_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingTokenUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_token_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingTransactionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_transaction_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingTransactionPurchaseDetailsReceiptUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_transaction_purchase_details_receipt_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1IssuingTransactionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_issuing_transaction_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1MandateUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_mandate_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentAmountCapturableUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_amount_capturable_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentPartiallyFundedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_partially_funded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_processing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentRequiresActionEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_requires_action(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentIntentSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_intent_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentLinkCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_link_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentLinkUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_link_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentMethodAttachedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_method_attached(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentMethodAutomaticallyUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_method_automatically_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentMethodDetachedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_method_detached(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PaymentMethodUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payment_method_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutPaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_paid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutReconciliationCompletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_reconciliation_completed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PayoutUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_payout_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PersonCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_person_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PersonDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_person_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PersonUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_person_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PlanCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_plan_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PlanDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_plan_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PlanUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_plan_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PriceCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_price_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PriceDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_price_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PriceUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_price_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ProductCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_product_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ProductDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_product_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ProductUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_product_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PromotionCodeCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_promotion_code_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1PromotionCodeUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_promotion_code_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1QuoteAcceptedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_quote_accepted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1QuoteCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_quote_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1QuoteCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_quote_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1QuoteFinalizedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_quote_finalized(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1RadarEarlyFraudWarningCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_radar_early_fraud_warning_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1RadarEarlyFraudWarningUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_radar_early_fraud_warning_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1RefundCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_refund_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1RefundFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_refund_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1RefundUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_refund_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ReviewClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_review_closed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1ReviewOpenedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_review_opened(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SetupIntentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_setup_intent_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SetupIntentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_setup_intent_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SetupIntentRequiresActionEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_setup_intent_requires_action(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SetupIntentSetupFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_setup_intent_setup_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SetupIntentSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_setup_intent_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SigmaScheduledQueryRunCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_sigma_scheduled_query_run_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SourceCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_source_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SourceChargeableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_source_chargeable(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SourceFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_source_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SourceRefundAttributesRequiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_source_refund_attributes_required(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleAbortedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_aborted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleCompletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_completed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleExpiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_expiring(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleReleasedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_released(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1SubscriptionScheduleUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_subscription_schedule_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TaxSettingsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_tax_settings_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TaxRateCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_tax_rate_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TaxRateUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_tax_rate_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TerminalReaderActionFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_terminal_reader_action_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TerminalReaderActionSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_terminal_reader_action_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TerminalReaderActionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_terminal_reader_action_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TestHelpersTestClockAdvancingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_test_helpers_test_clock_advancing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TestHelpersTestClockCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_test_helpers_test_clock_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TestHelpersTestClockDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_test_helpers_test_clock_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TestHelpersTestClockInternalFailureEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_test_helpers_test_clock_internal_failure(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TestHelpersTestClockReadyEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_test_helpers_test_clock_ready(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TopupCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_topup_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TopupCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_topup_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TopupFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_topup_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TopupReversedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_topup_reversed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TopupSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_topup_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TransferCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_transfer_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TransferReversedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_transfer_reversed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1TransferUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_transfer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingCadenceBilledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_cadence_billed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingCadenceCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_cadence_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingCadenceCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_cadence_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingLicenseFeeCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_license_fee_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingLicenseFeeUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_license_fee_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingLicenseFeeVersionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_license_fee_version_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingLicensedItemCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_licensed_item_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingLicensedItemUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_licensed_item_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingMeteredItemCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_metered_item_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingMeteredItemUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_metered_item_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanComponentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_component_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanComponentUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_component_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_collection_awaiting_customer_action(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionCollectionCurrentEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_collection_current(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionCollectionPastDueEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_collection_past_due(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionCollectionPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_collection_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionCollectionUnpaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_collection_unpaid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionServicingActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_servicing_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionServicingCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_servicing_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanSubscriptionServicingPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_subscription_servicing_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingPricingPlanVersionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_pricing_plan_version_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardCustomPricingUnitOverageRateCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_custom_pricing_unit_overage_rate_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardRateCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_rate_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_collection_awaiting_customer_action(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCollectionCurrentEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_collection_current(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCollectionPastDueEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_collection_past_due(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCollectionPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_collection_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionCollectionUnpaidEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_collection_unpaid(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionServicingActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_servicing_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionServicingCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_servicing_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardSubscriptionServicingPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_subscription_servicing_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2BillingRateCardVersionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_billing_rate_card_version_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CommerceProductCatalogImportsFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_commerce_product_catalog_imports_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CommerceProductCatalogImportsProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_commerce_product_catalog_imports_processing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CommerceProductCatalogImportsSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_commerce_product_catalog_imports_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CommerceProductCatalogImportsSucceededWithErrorsEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_commerce_product_catalog_imports_succeeded_with_errors(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_closed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_card_creator_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCardCreatorUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_card_creator_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_customer_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_customer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_merchant_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_merchant_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_recipient_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_recipient_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_storer_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_storer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_defaults_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_future_requirements_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingIdentityUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_identity_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingRequirementsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_requirements_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountLinkReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_link_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountSignalsFraudulentWebsiteReadyEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_signals_fraudulent_website_ready(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestApprovedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_approved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestRejectedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_rejected(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreApprovalRequestSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_approval_request_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobBatchFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_batch_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobCompletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_completed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobReadyForUploadEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_ready_for_upload(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobTimeoutEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_timeout(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobUploadTimeoutEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_upload_timeout(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobValidatingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_validating(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreBatchJobValidationFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_batch_job_validation_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreClaimableSandboxClaimedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_claimable_sandbox_claimed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreClaimableSandboxCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_claimable_sandbox_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreClaimableSandboxExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_claimable_sandbox_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreClaimableSandboxExpiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_claimable_sandbox_expiring(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreClaimableSandboxUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_claimable_sandbox_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreEventDestinationPingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_event_destination_ping(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthApiErrorFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_api_error_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthApiErrorResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_api_error_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthApiLatencyFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_api_latency_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthApiLatencyResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_api_latency_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthAuthorizationRateDropFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_authorization_rate_drop_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthAuthorizationRateDropResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_authorization_rate_drop_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthElementsErrorFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_elements_error_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthElementsErrorResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_elements_error_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthEventGenerationFailureResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_event_generation_failure_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthFraudRateIncreasedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_fraud_rate_increased(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthInvoiceCountDroppedFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_invoice_count_dropped_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthInvoiceCountDroppedResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_invoice_count_dropped_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_issuing_authorization_request_errors_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_issuing_authorization_request_errors_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_issuing_authorization_request_timeout_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_issuing_authorization_request_timeout_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthMeterEventSummariesDelayedFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_meter_event_summaries_delayed_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthMeterEventSummariesDelayedResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_meter_event_summaries_delayed_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthPaymentMethodErrorFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_payment_method_error_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthPaymentMethodErrorResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_payment_method_error_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthSepaDebitDelayedFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_sepa_debit_delayed_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthSepaDebitDelayedResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_sepa_debit_delayed_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthTrafficVolumeDropFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_traffic_volume_drop_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthTrafficVolumeDropResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_traffic_volume_drop_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthWebhookLatencyFiringEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_webhook_latency_firing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthWebhookLatencyResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_webhook_latency_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2DataReportingQueryRunCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_data_reporting_query_run_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2DataReportingQueryRunFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_data_reporting_query_run_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2DataReportingQueryRunSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_data_reporting_query_run_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2DataReportingQueryRunUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_data_reporting_query_run_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ExtendExtensionRunFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_extend_extension_run_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ExtendWorkflowRunFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_extend_workflow_run_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ExtendWorkflowRunStartedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_extend_workflow_run_started(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ExtendWorkflowRunSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_extend_workflow_run_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyDefaultSecretRevealedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_default_secret_revealed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyExpiredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_expired(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyPermissionsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_permissions_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyRotatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_rotated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamApiKeyUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_api_key_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantApprovedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_approved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantDeniedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_denied(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantRemovedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_removed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantRequestedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_requested(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2IamStripeAccessGrantUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_iam_stripe_access_grant_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementAdjustmentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_adjustment_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountStatementCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_statement_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountStatementRestatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_statement_restated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_address_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_address_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_processing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitQueuedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_queued(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_posted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_posted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementPayoutMethodCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_payout_method_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementPayoutMethodUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_payout_method_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitPendingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_pending(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementRecipientVerificationCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_recipient_verification_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementRecipientVerificationUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_recipient_verification_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_transaction_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_transaction_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2OrchestratedCommerceAgreementConfirmedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_orchestrated_commerce_agreement_confirmed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2OrchestratedCommerceAgreementCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_orchestrated_commerce_agreement_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2OrchestratedCommerceAgreementPartiallyConfirmedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_orchestrated_commerce_agreement_partially_confirmed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2OrchestratedCommerceAgreementTerminatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_orchestrated_commerce_agreement_terminated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentAttemptFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_attempt_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentAttemptStartedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_attempt_started(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_authorization_attempt_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_authorization_attempt_started(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentPausedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_paused(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentRequiresCaptureEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_requires_capture(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentResumedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_resumed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsOffSessionPaymentSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_off_session_payment_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentErroredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_errored(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentFundsNotReceivedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_funds_not_received(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentMatchedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_matched(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentNotFoundEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_not_found(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentSettledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_settled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentSubmittedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_submitted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentSplitCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_split_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentSplitCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_split_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2PaymentsSettlementAllocationIntentSplitSettledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_payments_settlement_allocation_intent_split_settled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ReportingReportRunCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_reporting_report_run_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ReportingReportRunFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_reporting_report_run_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ReportingReportRunSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_reporting_report_run_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2ReportingReportRunUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_reporting_report_run_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2SignalsAccountSignalFraudulentMerchantReadyEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_signals_account_signal_fraudulent_merchant_ready(&blk);
    end
    
    
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
