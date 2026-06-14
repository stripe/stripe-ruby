# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  autoload :Account, "stripe/resources/account"
  autoload :AccountLink, "stripe/resources/account_link"
  autoload :AccountNotice, "stripe/resources/account_notice"
  autoload :AccountSession, "stripe/resources/account_session"
  autoload :AccountSignals, "stripe/resources/account_signals"
  autoload :ApplePayDomain, "stripe/resources/apple_pay_domain"
  autoload :Application, "stripe/resources/application"
  autoload :ApplicationFee, "stripe/resources/application_fee"
  autoload :ApplicationFeeRefund, "stripe/resources/application_fee_refund"
  autoload :Balance, "stripe/resources/balance"
  autoload :BalanceSettings, "stripe/resources/balance_settings"
  autoload :BalanceTransaction, "stripe/resources/balance_transaction"
  autoload :BalanceTransfer, "stripe/resources/balance_transfer"
  autoload :BankAccount, "stripe/resources/bank_account"
  autoload :Capability, "stripe/resources/capability"
  autoload :Card, "stripe/resources/card"
  autoload :CashBalance, "stripe/resources/cash_balance"
  autoload :Charge, "stripe/resources/charge"
  autoload :ConfirmationToken, "stripe/resources/confirmation_token"
  autoload :ConnectCollectionTransfer, "stripe/resources/connect_collection_transfer"
  autoload :CountrySpec, "stripe/resources/country_spec"
  autoload :Coupon, "stripe/resources/coupon"
  autoload :CreditNote, "stripe/resources/credit_note"
  autoload :CreditNoteLineItem, "stripe/resources/credit_note_line_item"
  autoload :Customer, "stripe/resources/customer"
  autoload :CustomerBalanceTransaction, "stripe/resources/customer_balance_transaction"
  autoload :CustomerCashBalanceTransaction, "stripe/resources/customer_cash_balance_transaction"
  autoload :CustomerSession, "stripe/resources/customer_session"
  autoload :Discount, "stripe/resources/discount"
  autoload :Dispute, "stripe/resources/dispute"
  autoload :EphemeralKey, "stripe/resources/ephemeral_key"
  autoload :Event, "stripe/resources/event"
  autoload :ExchangeRate, "stripe/resources/exchange_rate"
  autoload :File, "stripe/resources/file"
  autoload :FileLink, "stripe/resources/file_link"
  autoload :FrMealVouchersOnboarding, "stripe/resources/fr_meal_vouchers_onboarding"
  autoload :FundingInstructions, "stripe/resources/funding_instructions"
  autoload :FxQuote, "stripe/resources/fx_quote"
  autoload :GiftCard, "stripe/resources/gift_card"
  autoload :GiftCardOperation, "stripe/resources/gift_card_operation"
  autoload :Invoice, "stripe/resources/invoice"
  autoload :InvoiceItem, "stripe/resources/invoice_item"
  autoload :InvoiceLineItem, "stripe/resources/invoice_line_item"
  autoload :InvoicePayment, "stripe/resources/invoice_payment"
  autoload :InvoiceRenderingTemplate, "stripe/resources/invoice_rendering_template"
  autoload :LineItem, "stripe/resources/line_item"
  autoload :LoginLink, "stripe/resources/login_link"
  autoload :Mandate, "stripe/resources/mandate"
  autoload :Margin, "stripe/resources/margin"
  autoload :Order, "stripe/resources/order"
  autoload :PaymentAttemptRecord, "stripe/resources/payment_attempt_record"
  autoload :PaymentIntent, "stripe/resources/payment_intent"
  autoload :PaymentIntentAmountDetailsLineItem, "stripe/resources/payment_intent_amount_details_line_item"
  autoload :PaymentLink, "stripe/resources/payment_link"
  autoload :PaymentLocation, "stripe/resources/payment_location"
  autoload :PaymentLocationCapability, "stripe/resources/payment_location_capability"
  autoload :PaymentMethod, "stripe/resources/payment_method"
  autoload :PaymentMethodBalance, "stripe/resources/payment_method_balance"
  autoload :PaymentMethodConfiguration, "stripe/resources/payment_method_configuration"
  autoload :PaymentMethodDomain, "stripe/resources/payment_method_domain"
  autoload :PaymentRecord, "stripe/resources/payment_record"
  autoload :Payout, "stripe/resources/payout"
  autoload :Person, "stripe/resources/person"
  autoload :Plan, "stripe/resources/plan"
  autoload :Price, "stripe/resources/price"
  autoload :Product, "stripe/resources/product"
  autoload :ProductFeature, "stripe/resources/product_feature"
  autoload :Profile, "stripe/resources/profile"
  autoload :PromotionCode, "stripe/resources/promotion_code"
  autoload :Quote, "stripe/resources/quote"
  autoload :QuoteLine, "stripe/resources/quote_line"
  autoload :QuotePreviewInvoice, "stripe/resources/quote_preview_invoice"
  autoload :QuotePreviewSubscriptionSchedule, "stripe/resources/quote_preview_subscription_schedule"
  autoload :Refund, "stripe/resources/refund"
  autoload :ReserveTransaction, "stripe/resources/reserve_transaction"
  autoload :Reversal, "stripe/resources/reversal"
  autoload :Review, "stripe/resources/review"
  autoload :RiskSignals, "stripe/resources/risk_signals"
  autoload :SetupAttempt, "stripe/resources/setup_attempt"
  autoload :SetupIntent, "stripe/resources/setup_intent"
  autoload :ShippingRate, "stripe/resources/shipping_rate"
  autoload :Source, "stripe/resources/source"
  autoload :SourceMandateNotification, "stripe/resources/source_mandate_notification"
  autoload :SourceTransaction, "stripe/resources/source_transaction"
  autoload :Subscription, "stripe/resources/subscription"
  autoload :SubscriptionItem, "stripe/resources/subscription_item"
  autoload :SubscriptionSchedule, "stripe/resources/subscription_schedule"
  autoload :TaxCode, "stripe/resources/tax_code"
  autoload :TaxDeductedAtSource, "stripe/resources/tax_deducted_at_source"
  autoload :TaxFund, "stripe/resources/tax_fund"
  autoload :TaxId, "stripe/resources/tax_id"
  autoload :TaxRate, "stripe/resources/tax_rate"
  autoload :Token, "stripe/resources/token"
  autoload :Topup, "stripe/resources/topup"
  autoload :Transfer, "stripe/resources/transfer"
  autoload :TransitBalance, "stripe/resources/transit_balance"
  autoload :WebhookEndpoint, "stripe/resources/webhook_endpoint"

  module Apps
    autoload :Secret, "stripe/resources/apps/secret"
  end

  module Billing
    autoload :Alert, "stripe/resources/billing/alert"
    autoload :AlertRecovered, "stripe/resources/billing/alert_recovered"
    autoload :AlertTriggered, "stripe/resources/billing/alert_triggered"
    autoload :CreditBalanceSummary, "stripe/resources/billing/credit_balance_summary"
    autoload :CreditBalanceTransaction, "stripe/resources/billing/credit_balance_transaction"
    autoload :CreditGrant, "stripe/resources/billing/credit_grant"
    autoload :Meter, "stripe/resources/billing/meter"
    autoload :MeterEvent, "stripe/resources/billing/meter_event"
    autoload :MeterEventAdjustment, "stripe/resources/billing/meter_event_adjustment"
    autoload :MeterEventSummary, "stripe/resources/billing/meter_event_summary"

    module Analytics
      autoload :MeterUsage, "stripe/resources/billing/analytics/meter_usage"
      autoload :MeterUsageRow, "stripe/resources/billing/analytics/meter_usage_row"
    end
  end

  module BillingPortal
    autoload :Configuration, "stripe/resources/billing_portal/configuration"
    autoload :Session, "stripe/resources/billing_portal/session"
  end

  module Capital
    autoload :FinancingOffer, "stripe/resources/capital/financing_offer"
    autoload :FinancingSummary, "stripe/resources/capital/financing_summary"
    autoload :FinancingTransaction, "stripe/resources/capital/financing_transaction"
  end

  module Checkout
    autoload :Session, "stripe/resources/checkout/session"
  end

  module Climate
    autoload :Order, "stripe/resources/climate/order"
    autoload :Product, "stripe/resources/climate/product"
    autoload :Supplier, "stripe/resources/climate/supplier"
  end

  module DelegatedCheckout
    autoload :Order, "stripe/resources/delegated_checkout/order"
    autoload :OrderEvent, "stripe/resources/delegated_checkout/order_event"
    autoload :RequestedSession, "stripe/resources/delegated_checkout/requested_session"
  end

  module Entitlements
    autoload :ActiveEntitlement, "stripe/resources/entitlements/active_entitlement"
    autoload :ActiveEntitlementSummary, "stripe/resources/entitlements/active_entitlement_summary"
    autoload :Feature, "stripe/resources/entitlements/feature"
  end

  module Events
    autoload :V1AccountApplicationAuthorizedEvent, "stripe/events/v1_account_application_authorized_event"
    autoload :V1AccountApplicationAuthorizedEventNotification, "stripe/events/v1_account_application_authorized_event"
    autoload :V1AccountApplicationDeauthorizedEvent, "stripe/events/v1_account_application_deauthorized_event"
    autoload :V1AccountApplicationDeauthorizedEventNotification,
             "stripe/events/v1_account_application_deauthorized_event"
    autoload :V1AccountExternalAccountCreatedEvent, "stripe/events/v1_account_external_account_created_event"
    autoload :V1AccountExternalAccountCreatedEventNotification,
             "stripe/events/v1_account_external_account_created_event"
    autoload :V1AccountExternalAccountDeletedEvent, "stripe/events/v1_account_external_account_deleted_event"
    autoload :V1AccountExternalAccountDeletedEventNotification,
             "stripe/events/v1_account_external_account_deleted_event"
    autoload :V1AccountExternalAccountUpdatedEvent, "stripe/events/v1_account_external_account_updated_event"
    autoload :V1AccountExternalAccountUpdatedEventNotification,
             "stripe/events/v1_account_external_account_updated_event"
    autoload :V1AccountSignalsIncludingDelinquencyCreatedEvent,
             "stripe/events/v1_account_signals_including_delinquency_created_event"
    autoload :V1AccountSignalsIncludingDelinquencyCreatedEventNotification,
             "stripe/events/v1_account_signals_including_delinquency_created_event"
    autoload :V1AccountUpdatedEvent, "stripe/events/v1_account_updated_event"
    autoload :V1AccountUpdatedEventNotification, "stripe/events/v1_account_updated_event"
    autoload :V1ApplicationFeeCreatedEvent, "stripe/events/v1_application_fee_created_event"
    autoload :V1ApplicationFeeCreatedEventNotification, "stripe/events/v1_application_fee_created_event"
    autoload :V1ApplicationFeeRefundedEvent, "stripe/events/v1_application_fee_refunded_event"
    autoload :V1ApplicationFeeRefundedEventNotification, "stripe/events/v1_application_fee_refunded_event"
    autoload :V1ApplicationFeeRefundUpdatedEvent, "stripe/events/v1_application_fee_refund_updated_event"
    autoload :V1ApplicationFeeRefundUpdatedEventNotification, "stripe/events/v1_application_fee_refund_updated_event"
    autoload :V1BalanceAvailableEvent, "stripe/events/v1_balance_available_event"
    autoload :V1BalanceAvailableEventNotification, "stripe/events/v1_balance_available_event"
    autoload :V1BillingAlertTriggeredEvent, "stripe/events/v1_billing_alert_triggered_event"
    autoload :V1BillingAlertTriggeredEventNotification, "stripe/events/v1_billing_alert_triggered_event"
    autoload :V1BillingMeterErrorReportTriggeredEvent, "stripe/events/v1_billing_meter_error_report_triggered_event"
    autoload :V1BillingMeterErrorReportTriggeredEventNotification,
             "stripe/events/v1_billing_meter_error_report_triggered_event"
    autoload :V1BillingMeterNoMeterFoundEvent, "stripe/events/v1_billing_meter_no_meter_found_event"
    autoload :V1BillingMeterNoMeterFoundEventNotification, "stripe/events/v1_billing_meter_no_meter_found_event"
    autoload :V1BillingPortalConfigurationCreatedEvent, "stripe/events/v1_billing_portal_configuration_created_event"
    autoload :V1BillingPortalConfigurationCreatedEventNotification,
             "stripe/events/v1_billing_portal_configuration_created_event"
    autoload :V1BillingPortalConfigurationUpdatedEvent, "stripe/events/v1_billing_portal_configuration_updated_event"
    autoload :V1BillingPortalConfigurationUpdatedEventNotification,
             "stripe/events/v1_billing_portal_configuration_updated_event"
    autoload :V1BillingPortalSessionCreatedEvent, "stripe/events/v1_billing_portal_session_created_event"
    autoload :V1BillingPortalSessionCreatedEventNotification, "stripe/events/v1_billing_portal_session_created_event"
    autoload :V1CapabilityUpdatedEvent, "stripe/events/v1_capability_updated_event"
    autoload :V1CapabilityUpdatedEventNotification, "stripe/events/v1_capability_updated_event"
    autoload :V1CashBalanceFundsAvailableEvent, "stripe/events/v1_cash_balance_funds_available_event"
    autoload :V1CashBalanceFundsAvailableEventNotification, "stripe/events/v1_cash_balance_funds_available_event"
    autoload :V1ChargeCapturedEvent, "stripe/events/v1_charge_captured_event"
    autoload :V1ChargeCapturedEventNotification, "stripe/events/v1_charge_captured_event"
    autoload :V1ChargeDisputeClosedEvent, "stripe/events/v1_charge_dispute_closed_event"
    autoload :V1ChargeDisputeClosedEventNotification, "stripe/events/v1_charge_dispute_closed_event"
    autoload :V1ChargeDisputeCreatedEvent, "stripe/events/v1_charge_dispute_created_event"
    autoload :V1ChargeDisputeCreatedEventNotification, "stripe/events/v1_charge_dispute_created_event"
    autoload :V1ChargeDisputeFundsReinstatedEvent, "stripe/events/v1_charge_dispute_funds_reinstated_event"
    autoload :V1ChargeDisputeFundsReinstatedEventNotification, "stripe/events/v1_charge_dispute_funds_reinstated_event"
    autoload :V1ChargeDisputeFundsWithdrawnEvent, "stripe/events/v1_charge_dispute_funds_withdrawn_event"
    autoload :V1ChargeDisputeFundsWithdrawnEventNotification, "stripe/events/v1_charge_dispute_funds_withdrawn_event"
    autoload :V1ChargeDisputeUpdatedEvent, "stripe/events/v1_charge_dispute_updated_event"
    autoload :V1ChargeDisputeUpdatedEventNotification, "stripe/events/v1_charge_dispute_updated_event"
    autoload :V1ChargeExpiredEvent, "stripe/events/v1_charge_expired_event"
    autoload :V1ChargeExpiredEventNotification, "stripe/events/v1_charge_expired_event"
    autoload :V1ChargeFailedEvent, "stripe/events/v1_charge_failed_event"
    autoload :V1ChargeFailedEventNotification, "stripe/events/v1_charge_failed_event"
    autoload :V1ChargePendingEvent, "stripe/events/v1_charge_pending_event"
    autoload :V1ChargePendingEventNotification, "stripe/events/v1_charge_pending_event"
    autoload :V1ChargeRefundedEvent, "stripe/events/v1_charge_refunded_event"
    autoload :V1ChargeRefundedEventNotification, "stripe/events/v1_charge_refunded_event"
    autoload :V1ChargeRefundUpdatedEvent, "stripe/events/v1_charge_refund_updated_event"
    autoload :V1ChargeRefundUpdatedEventNotification, "stripe/events/v1_charge_refund_updated_event"
    autoload :V1ChargeSucceededEvent, "stripe/events/v1_charge_succeeded_event"
    autoload :V1ChargeSucceededEventNotification, "stripe/events/v1_charge_succeeded_event"
    autoload :V1ChargeUpdatedEvent, "stripe/events/v1_charge_updated_event"
    autoload :V1ChargeUpdatedEventNotification, "stripe/events/v1_charge_updated_event"
    autoload :V1CheckoutSessionAsyncPaymentFailedEvent, "stripe/events/v1_checkout_session_async_payment_failed_event"
    autoload :V1CheckoutSessionAsyncPaymentFailedEventNotification,
             "stripe/events/v1_checkout_session_async_payment_failed_event"
    autoload :V1CheckoutSessionAsyncPaymentSucceededEvent,
             "stripe/events/v1_checkout_session_async_payment_succeeded_event"
    autoload :V1CheckoutSessionAsyncPaymentSucceededEventNotification,
             "stripe/events/v1_checkout_session_async_payment_succeeded_event"
    autoload :V1CheckoutSessionCompletedEvent, "stripe/events/v1_checkout_session_completed_event"
    autoload :V1CheckoutSessionCompletedEventNotification, "stripe/events/v1_checkout_session_completed_event"
    autoload :V1CheckoutSessionExpiredEvent, "stripe/events/v1_checkout_session_expired_event"
    autoload :V1CheckoutSessionExpiredEventNotification, "stripe/events/v1_checkout_session_expired_event"
    autoload :V1ClimateOrderCanceledEvent, "stripe/events/v1_climate_order_canceled_event"
    autoload :V1ClimateOrderCanceledEventNotification, "stripe/events/v1_climate_order_canceled_event"
    autoload :V1ClimateOrderCreatedEvent, "stripe/events/v1_climate_order_created_event"
    autoload :V1ClimateOrderCreatedEventNotification, "stripe/events/v1_climate_order_created_event"
    autoload :V1ClimateOrderDelayedEvent, "stripe/events/v1_climate_order_delayed_event"
    autoload :V1ClimateOrderDelayedEventNotification, "stripe/events/v1_climate_order_delayed_event"
    autoload :V1ClimateOrderDeliveredEvent, "stripe/events/v1_climate_order_delivered_event"
    autoload :V1ClimateOrderDeliveredEventNotification, "stripe/events/v1_climate_order_delivered_event"
    autoload :V1ClimateOrderProductSubstitutedEvent, "stripe/events/v1_climate_order_product_substituted_event"
    autoload :V1ClimateOrderProductSubstitutedEventNotification,
             "stripe/events/v1_climate_order_product_substituted_event"
    autoload :V1ClimateProductCreatedEvent, "stripe/events/v1_climate_product_created_event"
    autoload :V1ClimateProductCreatedEventNotification, "stripe/events/v1_climate_product_created_event"
    autoload :V1ClimateProductPricingUpdatedEvent, "stripe/events/v1_climate_product_pricing_updated_event"
    autoload :V1ClimateProductPricingUpdatedEventNotification, "stripe/events/v1_climate_product_pricing_updated_event"
    autoload :V1CouponCreatedEvent, "stripe/events/v1_coupon_created_event"
    autoload :V1CouponCreatedEventNotification, "stripe/events/v1_coupon_created_event"
    autoload :V1CouponDeletedEvent, "stripe/events/v1_coupon_deleted_event"
    autoload :V1CouponDeletedEventNotification, "stripe/events/v1_coupon_deleted_event"
    autoload :V1CouponUpdatedEvent, "stripe/events/v1_coupon_updated_event"
    autoload :V1CouponUpdatedEventNotification, "stripe/events/v1_coupon_updated_event"
    autoload :V1CreditNoteCreatedEvent, "stripe/events/v1_credit_note_created_event"
    autoload :V1CreditNoteCreatedEventNotification, "stripe/events/v1_credit_note_created_event"
    autoload :V1CreditNoteUpdatedEvent, "stripe/events/v1_credit_note_updated_event"
    autoload :V1CreditNoteUpdatedEventNotification, "stripe/events/v1_credit_note_updated_event"
    autoload :V1CreditNoteVoidedEvent, "stripe/events/v1_credit_note_voided_event"
    autoload :V1CreditNoteVoidedEventNotification, "stripe/events/v1_credit_note_voided_event"
    autoload :V1CustomerCashBalanceTransactionCreatedEvent,
             "stripe/events/v1_customer_cash_balance_transaction_created_event"
    autoload :V1CustomerCashBalanceTransactionCreatedEventNotification,
             "stripe/events/v1_customer_cash_balance_transaction_created_event"
    autoload :V1CustomerCreatedEvent, "stripe/events/v1_customer_created_event"
    autoload :V1CustomerCreatedEventNotification, "stripe/events/v1_customer_created_event"
    autoload :V1CustomerDeletedEvent, "stripe/events/v1_customer_deleted_event"
    autoload :V1CustomerDeletedEventNotification, "stripe/events/v1_customer_deleted_event"
    autoload :V1CustomerSubscriptionCreatedEvent, "stripe/events/v1_customer_subscription_created_event"
    autoload :V1CustomerSubscriptionCreatedEventNotification, "stripe/events/v1_customer_subscription_created_event"
    autoload :V1CustomerSubscriptionDeletedEvent, "stripe/events/v1_customer_subscription_deleted_event"
    autoload :V1CustomerSubscriptionDeletedEventNotification, "stripe/events/v1_customer_subscription_deleted_event"
    autoload :V1CustomerSubscriptionPausedEvent, "stripe/events/v1_customer_subscription_paused_event"
    autoload :V1CustomerSubscriptionPausedEventNotification, "stripe/events/v1_customer_subscription_paused_event"
    autoload :V1CustomerSubscriptionPendingUpdateAppliedEvent,
             "stripe/events/v1_customer_subscription_pending_update_applied_event"
    autoload :V1CustomerSubscriptionPendingUpdateAppliedEventNotification,
             "stripe/events/v1_customer_subscription_pending_update_applied_event"
    autoload :V1CustomerSubscriptionPendingUpdateExpiredEvent,
             "stripe/events/v1_customer_subscription_pending_update_expired_event"
    autoload :V1CustomerSubscriptionPendingUpdateExpiredEventNotification,
             "stripe/events/v1_customer_subscription_pending_update_expired_event"
    autoload :V1CustomerSubscriptionResumedEvent, "stripe/events/v1_customer_subscription_resumed_event"
    autoload :V1CustomerSubscriptionResumedEventNotification, "stripe/events/v1_customer_subscription_resumed_event"
    autoload :V1CustomerSubscriptionTrialWillEndEvent, "stripe/events/v1_customer_subscription_trial_will_end_event"
    autoload :V1CustomerSubscriptionTrialWillEndEventNotification,
             "stripe/events/v1_customer_subscription_trial_will_end_event"
    autoload :V1CustomerSubscriptionUpdatedEvent, "stripe/events/v1_customer_subscription_updated_event"
    autoload :V1CustomerSubscriptionUpdatedEventNotification, "stripe/events/v1_customer_subscription_updated_event"
    autoload :V1CustomerTaxIdCreatedEvent, "stripe/events/v1_customer_tax_id_created_event"
    autoload :V1CustomerTaxIdCreatedEventNotification, "stripe/events/v1_customer_tax_id_created_event"
    autoload :V1CustomerTaxIdDeletedEvent, "stripe/events/v1_customer_tax_id_deleted_event"
    autoload :V1CustomerTaxIdDeletedEventNotification, "stripe/events/v1_customer_tax_id_deleted_event"
    autoload :V1CustomerTaxIdUpdatedEvent, "stripe/events/v1_customer_tax_id_updated_event"
    autoload :V1CustomerTaxIdUpdatedEventNotification, "stripe/events/v1_customer_tax_id_updated_event"
    autoload :V1CustomerUpdatedEvent, "stripe/events/v1_customer_updated_event"
    autoload :V1CustomerUpdatedEventNotification, "stripe/events/v1_customer_updated_event"
    autoload :V1EntitlementsActiveEntitlementSummaryUpdatedEvent,
             "stripe/events/v1_entitlements_active_entitlement_summary_updated_event"
    autoload :V1EntitlementsActiveEntitlementSummaryUpdatedEventNotification,
             "stripe/events/v1_entitlements_active_entitlement_summary_updated_event"
    autoload :V1FileCreatedEvent, "stripe/events/v1_file_created_event"
    autoload :V1FileCreatedEventNotification, "stripe/events/v1_file_created_event"
    autoload :V1FinancialConnectionsAccountCreatedEvent, "stripe/events/v1_financial_connections_account_created_event"
    autoload :V1FinancialConnectionsAccountCreatedEventNotification,
             "stripe/events/v1_financial_connections_account_created_event"
    autoload :V1FinancialConnectionsAccountDeactivatedEvent,
             "stripe/events/v1_financial_connections_account_deactivated_event"
    autoload :V1FinancialConnectionsAccountDeactivatedEventNotification,
             "stripe/events/v1_financial_connections_account_deactivated_event"
    autoload :V1FinancialConnectionsAccountDisconnectedEvent,
             "stripe/events/v1_financial_connections_account_disconnected_event"
    autoload :V1FinancialConnectionsAccountDisconnectedEventNotification,
             "stripe/events/v1_financial_connections_account_disconnected_event"
    autoload :V1FinancialConnectionsAccountReactivatedEvent,
             "stripe/events/v1_financial_connections_account_reactivated_event"
    autoload :V1FinancialConnectionsAccountReactivatedEventNotification,
             "stripe/events/v1_financial_connections_account_reactivated_event"
    autoload :V1FinancialConnectionsAccountRefreshedBalanceEvent,
             "stripe/events/v1_financial_connections_account_refreshed_balance_event"
    autoload :V1FinancialConnectionsAccountRefreshedBalanceEventNotification,
             "stripe/events/v1_financial_connections_account_refreshed_balance_event"
    autoload :V1FinancialConnectionsAccountRefreshedOwnershipEvent,
             "stripe/events/v1_financial_connections_account_refreshed_ownership_event"
    autoload :V1FinancialConnectionsAccountRefreshedOwnershipEventNotification,
             "stripe/events/v1_financial_connections_account_refreshed_ownership_event"
    autoload :V1FinancialConnectionsAccountRefreshedTransactionsEvent,
             "stripe/events/v1_financial_connections_account_refreshed_transactions_event"
    autoload :V1FinancialConnectionsAccountRefreshedTransactionsEventNotification,
             "stripe/events/v1_financial_connections_account_refreshed_transactions_event"
    autoload :V1IdentityVerificationSessionCanceledEvent,
             "stripe/events/v1_identity_verification_session_canceled_event"
    autoload :V1IdentityVerificationSessionCanceledEventNotification,
             "stripe/events/v1_identity_verification_session_canceled_event"
    autoload :V1IdentityVerificationSessionCreatedEvent, "stripe/events/v1_identity_verification_session_created_event"
    autoload :V1IdentityVerificationSessionCreatedEventNotification,
             "stripe/events/v1_identity_verification_session_created_event"
    autoload :V1IdentityVerificationSessionProcessingEvent,
             "stripe/events/v1_identity_verification_session_processing_event"
    autoload :V1IdentityVerificationSessionProcessingEventNotification,
             "stripe/events/v1_identity_verification_session_processing_event"
    autoload :V1IdentityVerificationSessionRedactedEvent,
             "stripe/events/v1_identity_verification_session_redacted_event"
    autoload :V1IdentityVerificationSessionRedactedEventNotification,
             "stripe/events/v1_identity_verification_session_redacted_event"
    autoload :V1IdentityVerificationSessionRequiresInputEvent,
             "stripe/events/v1_identity_verification_session_requires_input_event"
    autoload :V1IdentityVerificationSessionRequiresInputEventNotification,
             "stripe/events/v1_identity_verification_session_requires_input_event"
    autoload :V1IdentityVerificationSessionVerifiedEvent,
             "stripe/events/v1_identity_verification_session_verified_event"
    autoload :V1IdentityVerificationSessionVerifiedEventNotification,
             "stripe/events/v1_identity_verification_session_verified_event"
    autoload :V1InvoiceCreatedEvent, "stripe/events/v1_invoice_created_event"
    autoload :V1InvoiceCreatedEventNotification, "stripe/events/v1_invoice_created_event"
    autoload :V1InvoiceDeletedEvent, "stripe/events/v1_invoice_deleted_event"
    autoload :V1InvoiceDeletedEventNotification, "stripe/events/v1_invoice_deleted_event"
    autoload :V1InvoiceFinalizationFailedEvent, "stripe/events/v1_invoice_finalization_failed_event"
    autoload :V1InvoiceFinalizationFailedEventNotification, "stripe/events/v1_invoice_finalization_failed_event"
    autoload :V1InvoiceFinalizedEvent, "stripe/events/v1_invoice_finalized_event"
    autoload :V1InvoiceFinalizedEventNotification, "stripe/events/v1_invoice_finalized_event"
    autoload :V1InvoiceitemCreatedEvent, "stripe/events/v1_invoiceitem_created_event"
    autoload :V1InvoiceitemCreatedEventNotification, "stripe/events/v1_invoiceitem_created_event"
    autoload :V1InvoiceitemDeletedEvent, "stripe/events/v1_invoiceitem_deleted_event"
    autoload :V1InvoiceitemDeletedEventNotification, "stripe/events/v1_invoiceitem_deleted_event"
    autoload :V1InvoiceMarkedUncollectibleEvent, "stripe/events/v1_invoice_marked_uncollectible_event"
    autoload :V1InvoiceMarkedUncollectibleEventNotification, "stripe/events/v1_invoice_marked_uncollectible_event"
    autoload :V1InvoiceOverdueEvent, "stripe/events/v1_invoice_overdue_event"
    autoload :V1InvoiceOverdueEventNotification, "stripe/events/v1_invoice_overdue_event"
    autoload :V1InvoiceOverpaidEvent, "stripe/events/v1_invoice_overpaid_event"
    autoload :V1InvoiceOverpaidEventNotification, "stripe/events/v1_invoice_overpaid_event"
    autoload :V1InvoicePaidEvent, "stripe/events/v1_invoice_paid_event"
    autoload :V1InvoicePaidEventNotification, "stripe/events/v1_invoice_paid_event"
    autoload :V1InvoicePaymentActionRequiredEvent, "stripe/events/v1_invoice_payment_action_required_event"
    autoload :V1InvoicePaymentActionRequiredEventNotification, "stripe/events/v1_invoice_payment_action_required_event"
    autoload :V1InvoicePaymentFailedEvent, "stripe/events/v1_invoice_payment_failed_event"
    autoload :V1InvoicePaymentFailedEventNotification, "stripe/events/v1_invoice_payment_failed_event"
    autoload :V1InvoicePaymentPaidEvent, "stripe/events/v1_invoice_payment_paid_event"
    autoload :V1InvoicePaymentPaidEventNotification, "stripe/events/v1_invoice_payment_paid_event"
    autoload :V1InvoicePaymentSucceededEvent, "stripe/events/v1_invoice_payment_succeeded_event"
    autoload :V1InvoicePaymentSucceededEventNotification, "stripe/events/v1_invoice_payment_succeeded_event"
    autoload :V1InvoiceSentEvent, "stripe/events/v1_invoice_sent_event"
    autoload :V1InvoiceSentEventNotification, "stripe/events/v1_invoice_sent_event"
    autoload :V1InvoiceUpcomingEvent, "stripe/events/v1_invoice_upcoming_event"
    autoload :V1InvoiceUpcomingEventNotification, "stripe/events/v1_invoice_upcoming_event"
    autoload :V1InvoiceUpdatedEvent, "stripe/events/v1_invoice_updated_event"
    autoload :V1InvoiceUpdatedEventNotification, "stripe/events/v1_invoice_updated_event"
    autoload :V1InvoiceVoidedEvent, "stripe/events/v1_invoice_voided_event"
    autoload :V1InvoiceVoidedEventNotification, "stripe/events/v1_invoice_voided_event"
    autoload :V1InvoiceWillBeDueEvent, "stripe/events/v1_invoice_will_be_due_event"
    autoload :V1InvoiceWillBeDueEventNotification, "stripe/events/v1_invoice_will_be_due_event"
    autoload :V1IssuingAuthorizationCreatedEvent, "stripe/events/v1_issuing_authorization_created_event"
    autoload :V1IssuingAuthorizationCreatedEventNotification, "stripe/events/v1_issuing_authorization_created_event"
    autoload :V1IssuingAuthorizationRequestEvent, "stripe/events/v1_issuing_authorization_request_event"
    autoload :V1IssuingAuthorizationRequestEventNotification, "stripe/events/v1_issuing_authorization_request_event"
    autoload :V1IssuingAuthorizationUpdatedEvent, "stripe/events/v1_issuing_authorization_updated_event"
    autoload :V1IssuingAuthorizationUpdatedEventNotification, "stripe/events/v1_issuing_authorization_updated_event"
    autoload :V1IssuingCardCreatedEvent, "stripe/events/v1_issuing_card_created_event"
    autoload :V1IssuingCardCreatedEventNotification, "stripe/events/v1_issuing_card_created_event"
    autoload :V1IssuingCardholderCreatedEvent, "stripe/events/v1_issuing_cardholder_created_event"
    autoload :V1IssuingCardholderCreatedEventNotification, "stripe/events/v1_issuing_cardholder_created_event"
    autoload :V1IssuingCardholderUpdatedEvent, "stripe/events/v1_issuing_cardholder_updated_event"
    autoload :V1IssuingCardholderUpdatedEventNotification, "stripe/events/v1_issuing_cardholder_updated_event"
    autoload :V1IssuingCardUpdatedEvent, "stripe/events/v1_issuing_card_updated_event"
    autoload :V1IssuingCardUpdatedEventNotification, "stripe/events/v1_issuing_card_updated_event"
    autoload :V1IssuingDisputeClosedEvent, "stripe/events/v1_issuing_dispute_closed_event"
    autoload :V1IssuingDisputeClosedEventNotification, "stripe/events/v1_issuing_dispute_closed_event"
    autoload :V1IssuingDisputeCreatedEvent, "stripe/events/v1_issuing_dispute_created_event"
    autoload :V1IssuingDisputeCreatedEventNotification, "stripe/events/v1_issuing_dispute_created_event"
    autoload :V1IssuingDisputeFundsReinstatedEvent, "stripe/events/v1_issuing_dispute_funds_reinstated_event"
    autoload :V1IssuingDisputeFundsReinstatedEventNotification,
             "stripe/events/v1_issuing_dispute_funds_reinstated_event"
    autoload :V1IssuingDisputeFundsRescindedEvent, "stripe/events/v1_issuing_dispute_funds_rescinded_event"
    autoload :V1IssuingDisputeFundsRescindedEventNotification, "stripe/events/v1_issuing_dispute_funds_rescinded_event"
    autoload :V1IssuingDisputeSubmittedEvent, "stripe/events/v1_issuing_dispute_submitted_event"
    autoload :V1IssuingDisputeSubmittedEventNotification, "stripe/events/v1_issuing_dispute_submitted_event"
    autoload :V1IssuingDisputeUpdatedEvent, "stripe/events/v1_issuing_dispute_updated_event"
    autoload :V1IssuingDisputeUpdatedEventNotification, "stripe/events/v1_issuing_dispute_updated_event"
    autoload :V1IssuingPersonalizationDesignActivatedEvent,
             "stripe/events/v1_issuing_personalization_design_activated_event"
    autoload :V1IssuingPersonalizationDesignActivatedEventNotification,
             "stripe/events/v1_issuing_personalization_design_activated_event"
    autoload :V1IssuingPersonalizationDesignDeactivatedEvent,
             "stripe/events/v1_issuing_personalization_design_deactivated_event"
    autoload :V1IssuingPersonalizationDesignDeactivatedEventNotification,
             "stripe/events/v1_issuing_personalization_design_deactivated_event"
    autoload :V1IssuingPersonalizationDesignRejectedEvent,
             "stripe/events/v1_issuing_personalization_design_rejected_event"
    autoload :V1IssuingPersonalizationDesignRejectedEventNotification,
             "stripe/events/v1_issuing_personalization_design_rejected_event"
    autoload :V1IssuingPersonalizationDesignUpdatedEvent,
             "stripe/events/v1_issuing_personalization_design_updated_event"
    autoload :V1IssuingPersonalizationDesignUpdatedEventNotification,
             "stripe/events/v1_issuing_personalization_design_updated_event"
    autoload :V1IssuingTokenCreatedEvent, "stripe/events/v1_issuing_token_created_event"
    autoload :V1IssuingTokenCreatedEventNotification, "stripe/events/v1_issuing_token_created_event"
    autoload :V1IssuingTokenUpdatedEvent, "stripe/events/v1_issuing_token_updated_event"
    autoload :V1IssuingTokenUpdatedEventNotification, "stripe/events/v1_issuing_token_updated_event"
    autoload :V1IssuingTransactionCreatedEvent, "stripe/events/v1_issuing_transaction_created_event"
    autoload :V1IssuingTransactionCreatedEventNotification, "stripe/events/v1_issuing_transaction_created_event"
    autoload :V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent,
             "stripe/events/v1_issuing_transaction_purchase_details_receipt_updated_event"
    autoload :V1IssuingTransactionPurchaseDetailsReceiptUpdatedEventNotification,
             "stripe/events/v1_issuing_transaction_purchase_details_receipt_updated_event"
    autoload :V1IssuingTransactionUpdatedEvent, "stripe/events/v1_issuing_transaction_updated_event"
    autoload :V1IssuingTransactionUpdatedEventNotification, "stripe/events/v1_issuing_transaction_updated_event"
    autoload :V1MandateUpdatedEvent, "stripe/events/v1_mandate_updated_event"
    autoload :V1MandateUpdatedEventNotification, "stripe/events/v1_mandate_updated_event"
    autoload :V1PaymentIntentAmountCapturableUpdatedEvent,
             "stripe/events/v1_payment_intent_amount_capturable_updated_event"
    autoload :V1PaymentIntentAmountCapturableUpdatedEventNotification,
             "stripe/events/v1_payment_intent_amount_capturable_updated_event"
    autoload :V1PaymentIntentCanceledEvent, "stripe/events/v1_payment_intent_canceled_event"
    autoload :V1PaymentIntentCanceledEventNotification, "stripe/events/v1_payment_intent_canceled_event"
    autoload :V1PaymentIntentCreatedEvent, "stripe/events/v1_payment_intent_created_event"
    autoload :V1PaymentIntentCreatedEventNotification, "stripe/events/v1_payment_intent_created_event"
    autoload :V1PaymentIntentPartiallyFundedEvent, "stripe/events/v1_payment_intent_partially_funded_event"
    autoload :V1PaymentIntentPartiallyFundedEventNotification, "stripe/events/v1_payment_intent_partially_funded_event"
    autoload :V1PaymentIntentPaymentFailedEvent, "stripe/events/v1_payment_intent_payment_failed_event"
    autoload :V1PaymentIntentPaymentFailedEventNotification, "stripe/events/v1_payment_intent_payment_failed_event"
    autoload :V1PaymentIntentProcessingEvent, "stripe/events/v1_payment_intent_processing_event"
    autoload :V1PaymentIntentProcessingEventNotification, "stripe/events/v1_payment_intent_processing_event"
    autoload :V1PaymentIntentRequiresActionEvent, "stripe/events/v1_payment_intent_requires_action_event"
    autoload :V1PaymentIntentRequiresActionEventNotification, "stripe/events/v1_payment_intent_requires_action_event"
    autoload :V1PaymentIntentSucceededEvent, "stripe/events/v1_payment_intent_succeeded_event"
    autoload :V1PaymentIntentSucceededEventNotification, "stripe/events/v1_payment_intent_succeeded_event"
    autoload :V1PaymentLinkCreatedEvent, "stripe/events/v1_payment_link_created_event"
    autoload :V1PaymentLinkCreatedEventNotification, "stripe/events/v1_payment_link_created_event"
    autoload :V1PaymentLinkUpdatedEvent, "stripe/events/v1_payment_link_updated_event"
    autoload :V1PaymentLinkUpdatedEventNotification, "stripe/events/v1_payment_link_updated_event"
    autoload :V1PaymentMethodAttachedEvent, "stripe/events/v1_payment_method_attached_event"
    autoload :V1PaymentMethodAttachedEventNotification, "stripe/events/v1_payment_method_attached_event"
    autoload :V1PaymentMethodAutomaticallyUpdatedEvent, "stripe/events/v1_payment_method_automatically_updated_event"
    autoload :V1PaymentMethodAutomaticallyUpdatedEventNotification,
             "stripe/events/v1_payment_method_automatically_updated_event"
    autoload :V1PaymentMethodDetachedEvent, "stripe/events/v1_payment_method_detached_event"
    autoload :V1PaymentMethodDetachedEventNotification, "stripe/events/v1_payment_method_detached_event"
    autoload :V1PaymentMethodUpdatedEvent, "stripe/events/v1_payment_method_updated_event"
    autoload :V1PaymentMethodUpdatedEventNotification, "stripe/events/v1_payment_method_updated_event"
    autoload :V1PayoutCanceledEvent, "stripe/events/v1_payout_canceled_event"
    autoload :V1PayoutCanceledEventNotification, "stripe/events/v1_payout_canceled_event"
    autoload :V1PayoutCreatedEvent, "stripe/events/v1_payout_created_event"
    autoload :V1PayoutCreatedEventNotification, "stripe/events/v1_payout_created_event"
    autoload :V1PayoutFailedEvent, "stripe/events/v1_payout_failed_event"
    autoload :V1PayoutFailedEventNotification, "stripe/events/v1_payout_failed_event"
    autoload :V1PayoutPaidEvent, "stripe/events/v1_payout_paid_event"
    autoload :V1PayoutPaidEventNotification, "stripe/events/v1_payout_paid_event"
    autoload :V1PayoutReconciliationCompletedEvent, "stripe/events/v1_payout_reconciliation_completed_event"
    autoload :V1PayoutReconciliationCompletedEventNotification, "stripe/events/v1_payout_reconciliation_completed_event"
    autoload :V1PayoutUpdatedEvent, "stripe/events/v1_payout_updated_event"
    autoload :V1PayoutUpdatedEventNotification, "stripe/events/v1_payout_updated_event"
    autoload :V1PersonCreatedEvent, "stripe/events/v1_person_created_event"
    autoload :V1PersonCreatedEventNotification, "stripe/events/v1_person_created_event"
    autoload :V1PersonDeletedEvent, "stripe/events/v1_person_deleted_event"
    autoload :V1PersonDeletedEventNotification, "stripe/events/v1_person_deleted_event"
    autoload :V1PersonUpdatedEvent, "stripe/events/v1_person_updated_event"
    autoload :V1PersonUpdatedEventNotification, "stripe/events/v1_person_updated_event"
    autoload :V1PlanCreatedEvent, "stripe/events/v1_plan_created_event"
    autoload :V1PlanCreatedEventNotification, "stripe/events/v1_plan_created_event"
    autoload :V1PlanDeletedEvent, "stripe/events/v1_plan_deleted_event"
    autoload :V1PlanDeletedEventNotification, "stripe/events/v1_plan_deleted_event"
    autoload :V1PlanUpdatedEvent, "stripe/events/v1_plan_updated_event"
    autoload :V1PlanUpdatedEventNotification, "stripe/events/v1_plan_updated_event"
    autoload :V1PriceCreatedEvent, "stripe/events/v1_price_created_event"
    autoload :V1PriceCreatedEventNotification, "stripe/events/v1_price_created_event"
    autoload :V1PriceDeletedEvent, "stripe/events/v1_price_deleted_event"
    autoload :V1PriceDeletedEventNotification, "stripe/events/v1_price_deleted_event"
    autoload :V1PriceUpdatedEvent, "stripe/events/v1_price_updated_event"
    autoload :V1PriceUpdatedEventNotification, "stripe/events/v1_price_updated_event"
    autoload :V1ProductCreatedEvent, "stripe/events/v1_product_created_event"
    autoload :V1ProductCreatedEventNotification, "stripe/events/v1_product_created_event"
    autoload :V1ProductDeletedEvent, "stripe/events/v1_product_deleted_event"
    autoload :V1ProductDeletedEventNotification, "stripe/events/v1_product_deleted_event"
    autoload :V1ProductUpdatedEvent, "stripe/events/v1_product_updated_event"
    autoload :V1ProductUpdatedEventNotification, "stripe/events/v1_product_updated_event"
    autoload :V1PromotionCodeCreatedEvent, "stripe/events/v1_promotion_code_created_event"
    autoload :V1PromotionCodeCreatedEventNotification, "stripe/events/v1_promotion_code_created_event"
    autoload :V1PromotionCodeUpdatedEvent, "stripe/events/v1_promotion_code_updated_event"
    autoload :V1PromotionCodeUpdatedEventNotification, "stripe/events/v1_promotion_code_updated_event"
    autoload :V1QuoteAcceptedEvent, "stripe/events/v1_quote_accepted_event"
    autoload :V1QuoteAcceptedEventNotification, "stripe/events/v1_quote_accepted_event"
    autoload :V1QuoteCanceledEvent, "stripe/events/v1_quote_canceled_event"
    autoload :V1QuoteCanceledEventNotification, "stripe/events/v1_quote_canceled_event"
    autoload :V1QuoteCreatedEvent, "stripe/events/v1_quote_created_event"
    autoload :V1QuoteCreatedEventNotification, "stripe/events/v1_quote_created_event"
    autoload :V1QuoteFinalizedEvent, "stripe/events/v1_quote_finalized_event"
    autoload :V1QuoteFinalizedEventNotification, "stripe/events/v1_quote_finalized_event"
    autoload :V1RadarEarlyFraudWarningCreatedEvent, "stripe/events/v1_radar_early_fraud_warning_created_event"
    autoload :V1RadarEarlyFraudWarningCreatedEventNotification,
             "stripe/events/v1_radar_early_fraud_warning_created_event"
    autoload :V1RadarEarlyFraudWarningUpdatedEvent, "stripe/events/v1_radar_early_fraud_warning_updated_event"
    autoload :V1RadarEarlyFraudWarningUpdatedEventNotification,
             "stripe/events/v1_radar_early_fraud_warning_updated_event"
    autoload :V1RefundCreatedEvent, "stripe/events/v1_refund_created_event"
    autoload :V1RefundCreatedEventNotification, "stripe/events/v1_refund_created_event"
    autoload :V1RefundFailedEvent, "stripe/events/v1_refund_failed_event"
    autoload :V1RefundFailedEventNotification, "stripe/events/v1_refund_failed_event"
    autoload :V1RefundUpdatedEvent, "stripe/events/v1_refund_updated_event"
    autoload :V1RefundUpdatedEventNotification, "stripe/events/v1_refund_updated_event"
    autoload :V1ReviewClosedEvent, "stripe/events/v1_review_closed_event"
    autoload :V1ReviewClosedEventNotification, "stripe/events/v1_review_closed_event"
    autoload :V1ReviewOpenedEvent, "stripe/events/v1_review_opened_event"
    autoload :V1ReviewOpenedEventNotification, "stripe/events/v1_review_opened_event"
    autoload :V1SetupIntentCanceledEvent, "stripe/events/v1_setup_intent_canceled_event"
    autoload :V1SetupIntentCanceledEventNotification, "stripe/events/v1_setup_intent_canceled_event"
    autoload :V1SetupIntentCreatedEvent, "stripe/events/v1_setup_intent_created_event"
    autoload :V1SetupIntentCreatedEventNotification, "stripe/events/v1_setup_intent_created_event"
    autoload :V1SetupIntentRequiresActionEvent, "stripe/events/v1_setup_intent_requires_action_event"
    autoload :V1SetupIntentRequiresActionEventNotification, "stripe/events/v1_setup_intent_requires_action_event"
    autoload :V1SetupIntentSetupFailedEvent, "stripe/events/v1_setup_intent_setup_failed_event"
    autoload :V1SetupIntentSetupFailedEventNotification, "stripe/events/v1_setup_intent_setup_failed_event"
    autoload :V1SetupIntentSucceededEvent, "stripe/events/v1_setup_intent_succeeded_event"
    autoload :V1SetupIntentSucceededEventNotification, "stripe/events/v1_setup_intent_succeeded_event"
    autoload :V1SigmaScheduledQueryRunCreatedEvent, "stripe/events/v1_sigma_scheduled_query_run_created_event"
    autoload :V1SigmaScheduledQueryRunCreatedEventNotification,
             "stripe/events/v1_sigma_scheduled_query_run_created_event"
    autoload :V1SourceCanceledEvent, "stripe/events/v1_source_canceled_event"
    autoload :V1SourceCanceledEventNotification, "stripe/events/v1_source_canceled_event"
    autoload :V1SourceChargeableEvent, "stripe/events/v1_source_chargeable_event"
    autoload :V1SourceChargeableEventNotification, "stripe/events/v1_source_chargeable_event"
    autoload :V1SourceFailedEvent, "stripe/events/v1_source_failed_event"
    autoload :V1SourceFailedEventNotification, "stripe/events/v1_source_failed_event"
    autoload :V1SourceRefundAttributesRequiredEvent, "stripe/events/v1_source_refund_attributes_required_event"
    autoload :V1SourceRefundAttributesRequiredEventNotification,
             "stripe/events/v1_source_refund_attributes_required_event"
    autoload :V1SubscriptionScheduleAbortedEvent, "stripe/events/v1_subscription_schedule_aborted_event"
    autoload :V1SubscriptionScheduleAbortedEventNotification, "stripe/events/v1_subscription_schedule_aborted_event"
    autoload :V1SubscriptionScheduleCanceledEvent, "stripe/events/v1_subscription_schedule_canceled_event"
    autoload :V1SubscriptionScheduleCanceledEventNotification, "stripe/events/v1_subscription_schedule_canceled_event"
    autoload :V1SubscriptionScheduleCompletedEvent, "stripe/events/v1_subscription_schedule_completed_event"
    autoload :V1SubscriptionScheduleCompletedEventNotification, "stripe/events/v1_subscription_schedule_completed_event"
    autoload :V1SubscriptionScheduleCreatedEvent, "stripe/events/v1_subscription_schedule_created_event"
    autoload :V1SubscriptionScheduleCreatedEventNotification, "stripe/events/v1_subscription_schedule_created_event"
    autoload :V1SubscriptionScheduleExpiringEvent, "stripe/events/v1_subscription_schedule_expiring_event"
    autoload :V1SubscriptionScheduleExpiringEventNotification, "stripe/events/v1_subscription_schedule_expiring_event"
    autoload :V1SubscriptionScheduleReleasedEvent, "stripe/events/v1_subscription_schedule_released_event"
    autoload :V1SubscriptionScheduleReleasedEventNotification, "stripe/events/v1_subscription_schedule_released_event"
    autoload :V1SubscriptionScheduleUpdatedEvent, "stripe/events/v1_subscription_schedule_updated_event"
    autoload :V1SubscriptionScheduleUpdatedEventNotification, "stripe/events/v1_subscription_schedule_updated_event"
    autoload :V1TaxRateCreatedEvent, "stripe/events/v1_tax_rate_created_event"
    autoload :V1TaxRateCreatedEventNotification, "stripe/events/v1_tax_rate_created_event"
    autoload :V1TaxRateUpdatedEvent, "stripe/events/v1_tax_rate_updated_event"
    autoload :V1TaxRateUpdatedEventNotification, "stripe/events/v1_tax_rate_updated_event"
    autoload :V1TaxSettingsUpdatedEvent, "stripe/events/v1_tax_settings_updated_event"
    autoload :V1TaxSettingsUpdatedEventNotification, "stripe/events/v1_tax_settings_updated_event"
    autoload :V1TerminalReaderActionFailedEvent, "stripe/events/v1_terminal_reader_action_failed_event"
    autoload :V1TerminalReaderActionFailedEventNotification, "stripe/events/v1_terminal_reader_action_failed_event"
    autoload :V1TerminalReaderActionSucceededEvent, "stripe/events/v1_terminal_reader_action_succeeded_event"
    autoload :V1TerminalReaderActionSucceededEventNotification,
             "stripe/events/v1_terminal_reader_action_succeeded_event"
    autoload :V1TerminalReaderActionUpdatedEvent, "stripe/events/v1_terminal_reader_action_updated_event"
    autoload :V1TerminalReaderActionUpdatedEventNotification, "stripe/events/v1_terminal_reader_action_updated_event"
    autoload :V1TestHelpersTestClockAdvancingEvent, "stripe/events/v1_test_helpers_test_clock_advancing_event"
    autoload :V1TestHelpersTestClockAdvancingEventNotification,
             "stripe/events/v1_test_helpers_test_clock_advancing_event"
    autoload :V1TestHelpersTestClockCreatedEvent, "stripe/events/v1_test_helpers_test_clock_created_event"
    autoload :V1TestHelpersTestClockCreatedEventNotification, "stripe/events/v1_test_helpers_test_clock_created_event"
    autoload :V1TestHelpersTestClockDeletedEvent, "stripe/events/v1_test_helpers_test_clock_deleted_event"
    autoload :V1TestHelpersTestClockDeletedEventNotification, "stripe/events/v1_test_helpers_test_clock_deleted_event"
    autoload :V1TestHelpersTestClockInternalFailureEvent,
             "stripe/events/v1_test_helpers_test_clock_internal_failure_event"
    autoload :V1TestHelpersTestClockInternalFailureEventNotification,
             "stripe/events/v1_test_helpers_test_clock_internal_failure_event"
    autoload :V1TestHelpersTestClockReadyEvent, "stripe/events/v1_test_helpers_test_clock_ready_event"
    autoload :V1TestHelpersTestClockReadyEventNotification, "stripe/events/v1_test_helpers_test_clock_ready_event"
    autoload :V1TopupCanceledEvent, "stripe/events/v1_topup_canceled_event"
    autoload :V1TopupCanceledEventNotification, "stripe/events/v1_topup_canceled_event"
    autoload :V1TopupCreatedEvent, "stripe/events/v1_topup_created_event"
    autoload :V1TopupCreatedEventNotification, "stripe/events/v1_topup_created_event"
    autoload :V1TopupFailedEvent, "stripe/events/v1_topup_failed_event"
    autoload :V1TopupFailedEventNotification, "stripe/events/v1_topup_failed_event"
    autoload :V1TopupReversedEvent, "stripe/events/v1_topup_reversed_event"
    autoload :V1TopupReversedEventNotification, "stripe/events/v1_topup_reversed_event"
    autoload :V1TopupSucceededEvent, "stripe/events/v1_topup_succeeded_event"
    autoload :V1TopupSucceededEventNotification, "stripe/events/v1_topup_succeeded_event"
    autoload :V1TransferCreatedEvent, "stripe/events/v1_transfer_created_event"
    autoload :V1TransferCreatedEventNotification, "stripe/events/v1_transfer_created_event"
    autoload :V1TransferReversedEvent, "stripe/events/v1_transfer_reversed_event"
    autoload :V1TransferReversedEventNotification, "stripe/events/v1_transfer_reversed_event"
    autoload :V1TransferUpdatedEvent, "stripe/events/v1_transfer_updated_event"
    autoload :V1TransferUpdatedEventNotification, "stripe/events/v1_transfer_updated_event"
    autoload :V2BillingCadenceBilledEvent, "stripe/events/v2_billing_cadence_billed_event"
    autoload :V2BillingCadenceBilledEventNotification, "stripe/events/v2_billing_cadence_billed_event"
    autoload :V2BillingCadenceCanceledEvent, "stripe/events/v2_billing_cadence_canceled_event"
    autoload :V2BillingCadenceCanceledEventNotification, "stripe/events/v2_billing_cadence_canceled_event"
    autoload :V2BillingCadenceCreatedEvent, "stripe/events/v2_billing_cadence_created_event"
    autoload :V2BillingCadenceCreatedEventNotification, "stripe/events/v2_billing_cadence_created_event"
    autoload :V2BillingLicensedItemCreatedEvent, "stripe/events/v2_billing_licensed_item_created_event"
    autoload :V2BillingLicensedItemCreatedEventNotification, "stripe/events/v2_billing_licensed_item_created_event"
    autoload :V2BillingLicensedItemUpdatedEvent, "stripe/events/v2_billing_licensed_item_updated_event"
    autoload :V2BillingLicensedItemUpdatedEventNotification, "stripe/events/v2_billing_licensed_item_updated_event"
    autoload :V2BillingLicenseFeeCreatedEvent, "stripe/events/v2_billing_license_fee_created_event"
    autoload :V2BillingLicenseFeeCreatedEventNotification, "stripe/events/v2_billing_license_fee_created_event"
    autoload :V2BillingLicenseFeeUpdatedEvent, "stripe/events/v2_billing_license_fee_updated_event"
    autoload :V2BillingLicenseFeeUpdatedEventNotification, "stripe/events/v2_billing_license_fee_updated_event"
    autoload :V2BillingLicenseFeeVersionCreatedEvent, "stripe/events/v2_billing_license_fee_version_created_event"
    autoload :V2BillingLicenseFeeVersionCreatedEventNotification,
             "stripe/events/v2_billing_license_fee_version_created_event"
    autoload :V2BillingMeteredItemCreatedEvent, "stripe/events/v2_billing_metered_item_created_event"
    autoload :V2BillingMeteredItemCreatedEventNotification, "stripe/events/v2_billing_metered_item_created_event"
    autoload :V2BillingMeteredItemUpdatedEvent, "stripe/events/v2_billing_metered_item_updated_event"
    autoload :V2BillingMeteredItemUpdatedEventNotification, "stripe/events/v2_billing_metered_item_updated_event"
    autoload :V2BillingPricingPlanComponentCreatedEvent, "stripe/events/v2_billing_pricing_plan_component_created_event"
    autoload :V2BillingPricingPlanComponentCreatedEventNotification,
             "stripe/events/v2_billing_pricing_plan_component_created_event"
    autoload :V2BillingPricingPlanComponentUpdatedEvent, "stripe/events/v2_billing_pricing_plan_component_updated_event"
    autoload :V2BillingPricingPlanComponentUpdatedEventNotification,
             "stripe/events/v2_billing_pricing_plan_component_updated_event"
    autoload :V2BillingPricingPlanCreatedEvent, "stripe/events/v2_billing_pricing_plan_created_event"
    autoload :V2BillingPricingPlanCreatedEventNotification, "stripe/events/v2_billing_pricing_plan_created_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_awaiting_customer_action_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_awaiting_customer_action_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionCurrentEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_current_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionCurrentEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_current_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionPastDueEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_past_due_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionPastDueEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_past_due_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionPausedEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_paused_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionPausedEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_paused_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionUnpaidEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_unpaid_event"
    autoload :V2BillingPricingPlanSubscriptionCollectionUnpaidEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_collection_unpaid_event"
    autoload :V2BillingPricingPlanSubscriptionServicingActivatedEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_activated_event"
    autoload :V2BillingPricingPlanSubscriptionServicingActivatedEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_activated_event"
    autoload :V2BillingPricingPlanSubscriptionServicingCanceledEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_canceled_event"
    autoload :V2BillingPricingPlanSubscriptionServicingCanceledEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_canceled_event"
    autoload :V2BillingPricingPlanSubscriptionServicingPausedEvent,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_paused_event"
    autoload :V2BillingPricingPlanSubscriptionServicingPausedEventNotification,
             "stripe/events/v2_billing_pricing_plan_subscription_servicing_paused_event"
    autoload :V2BillingPricingPlanUpdatedEvent, "stripe/events/v2_billing_pricing_plan_updated_event"
    autoload :V2BillingPricingPlanUpdatedEventNotification, "stripe/events/v2_billing_pricing_plan_updated_event"
    autoload :V2BillingPricingPlanVersionCreatedEvent, "stripe/events/v2_billing_pricing_plan_version_created_event"
    autoload :V2BillingPricingPlanVersionCreatedEventNotification,
             "stripe/events/v2_billing_pricing_plan_version_created_event"
    autoload :V2BillingRateCardCreatedEvent, "stripe/events/v2_billing_rate_card_created_event"
    autoload :V2BillingRateCardCreatedEventNotification, "stripe/events/v2_billing_rate_card_created_event"
    autoload :V2BillingRateCardCustomPricingUnitOverageRateCreatedEvent,
             "stripe/events/v2_billing_rate_card_custom_pricing_unit_overage_rate_created_event"
    autoload :V2BillingRateCardCustomPricingUnitOverageRateCreatedEventNotification,
             "stripe/events/v2_billing_rate_card_custom_pricing_unit_overage_rate_created_event"
    autoload :V2BillingRateCardRateCreatedEvent, "stripe/events/v2_billing_rate_card_rate_created_event"
    autoload :V2BillingRateCardRateCreatedEventNotification, "stripe/events/v2_billing_rate_card_rate_created_event"
    autoload :V2BillingRateCardSubscriptionActivatedEvent,
             "stripe/events/v2_billing_rate_card_subscription_activated_event"
    autoload :V2BillingRateCardSubscriptionActivatedEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_activated_event"
    autoload :V2BillingRateCardSubscriptionCanceledEvent,
             "stripe/events/v2_billing_rate_card_subscription_canceled_event"
    autoload :V2BillingRateCardSubscriptionCanceledEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_canceled_event"
    autoload :V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent,
             "stripe/events/v2_billing_rate_card_subscription_collection_awaiting_customer_action_event"
    autoload :V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_collection_awaiting_customer_action_event"
    autoload :V2BillingRateCardSubscriptionCollectionCurrentEvent,
             "stripe/events/v2_billing_rate_card_subscription_collection_current_event"
    autoload :V2BillingRateCardSubscriptionCollectionCurrentEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_collection_current_event"
    autoload :V2BillingRateCardSubscriptionCollectionPastDueEvent,
             "stripe/events/v2_billing_rate_card_subscription_collection_past_due_event"
    autoload :V2BillingRateCardSubscriptionCollectionPastDueEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_collection_past_due_event"
    autoload :V2BillingRateCardSubscriptionCollectionPausedEvent,
             "stripe/events/v2_billing_rate_card_subscription_collection_paused_event"
    autoload :V2BillingRateCardSubscriptionCollectionPausedEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_collection_paused_event"
    autoload :V2BillingRateCardSubscriptionCollectionUnpaidEvent,
             "stripe/events/v2_billing_rate_card_subscription_collection_unpaid_event"
    autoload :V2BillingRateCardSubscriptionCollectionUnpaidEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_collection_unpaid_event"
    autoload :V2BillingRateCardSubscriptionServicingActivatedEvent,
             "stripe/events/v2_billing_rate_card_subscription_servicing_activated_event"
    autoload :V2BillingRateCardSubscriptionServicingActivatedEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_servicing_activated_event"
    autoload :V2BillingRateCardSubscriptionServicingCanceledEvent,
             "stripe/events/v2_billing_rate_card_subscription_servicing_canceled_event"
    autoload :V2BillingRateCardSubscriptionServicingCanceledEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_servicing_canceled_event"
    autoload :V2BillingRateCardSubscriptionServicingPausedEvent,
             "stripe/events/v2_billing_rate_card_subscription_servicing_paused_event"
    autoload :V2BillingRateCardSubscriptionServicingPausedEventNotification,
             "stripe/events/v2_billing_rate_card_subscription_servicing_paused_event"
    autoload :V2BillingRateCardUpdatedEvent, "stripe/events/v2_billing_rate_card_updated_event"
    autoload :V2BillingRateCardUpdatedEventNotification, "stripe/events/v2_billing_rate_card_updated_event"
    autoload :V2BillingRateCardVersionCreatedEvent, "stripe/events/v2_billing_rate_card_version_created_event"
    autoload :V2BillingRateCardVersionCreatedEventNotification,
             "stripe/events/v2_billing_rate_card_version_created_event"
    autoload :V2CommerceProductCatalogImportsFailedEvent,
             "stripe/events/v2_commerce_product_catalog_imports_failed_event"
    autoload :V2CommerceProductCatalogImportsFailedEventNotification,
             "stripe/events/v2_commerce_product_catalog_imports_failed_event"
    autoload :V2CommerceProductCatalogImportsProcessingEvent,
             "stripe/events/v2_commerce_product_catalog_imports_processing_event"
    autoload :V2CommerceProductCatalogImportsProcessingEventNotification,
             "stripe/events/v2_commerce_product_catalog_imports_processing_event"
    autoload :V2CommerceProductCatalogImportsSucceededEvent,
             "stripe/events/v2_commerce_product_catalog_imports_succeeded_event"
    autoload :V2CommerceProductCatalogImportsSucceededEventNotification,
             "stripe/events/v2_commerce_product_catalog_imports_succeeded_event"
    autoload :V2CommerceProductCatalogImportsSucceededWithErrorsEvent,
             "stripe/events/v2_commerce_product_catalog_imports_succeeded_with_errors_event"
    autoload :V2CommerceProductCatalogImportsSucceededWithErrorsEventNotification,
             "stripe/events/v2_commerce_product_catalog_imports_succeeded_with_errors_event"
    autoload :V2CoreAccountClosedEvent, "stripe/events/v2_core_account_closed_event"
    autoload :V2CoreAccountClosedEventNotification, "stripe/events/v2_core_account_closed_event"
    autoload :V2CoreAccountCreatedEvent, "stripe/events/v2_core_account_created_event"
    autoload :V2CoreAccountCreatedEventNotification, "stripe/events/v2_core_account_created_event"
    autoload :V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_card_creator_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_card_creator_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCardCreatorUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_card_creator_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCardCreatorUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_card_creator_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_customer_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_customer_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_merchant_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_merchant_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_recipient_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_recipient_updated_event"
    autoload :V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_storer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_storer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationStorerUpdatedEvent,
             "stripe/events/v2_core_account_including_configuration_storer_updated_event"
    autoload :V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification,
             "stripe/events/v2_core_account_including_configuration_storer_updated_event"
    autoload :V2CoreAccountIncludingDefaultsUpdatedEvent,
             "stripe/events/v2_core_account_including_defaults_updated_event"
    autoload :V2CoreAccountIncludingDefaultsUpdatedEventNotification,
             "stripe/events/v2_core_account_including_defaults_updated_event"
    autoload :V2CoreAccountIncludingFutureRequirementsUpdatedEvent,
             "stripe/events/v2_core_account_including_future_requirements_updated_event"
    autoload :V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification,
             "stripe/events/v2_core_account_including_future_requirements_updated_event"
    autoload :V2CoreAccountIncludingIdentityUpdatedEvent,
             "stripe/events/v2_core_account_including_identity_updated_event"
    autoload :V2CoreAccountIncludingIdentityUpdatedEventNotification,
             "stripe/events/v2_core_account_including_identity_updated_event"
    autoload :V2CoreAccountIncludingRequirementsUpdatedEvent,
             "stripe/events/v2_core_account_including_requirements_updated_event"
    autoload :V2CoreAccountIncludingRequirementsUpdatedEventNotification,
             "stripe/events/v2_core_account_including_requirements_updated_event"
    autoload :V2CoreAccountLinkReturnedEvent, "stripe/events/v2_core_account_link_returned_event"
    autoload :V2CoreAccountLinkReturnedEventNotification, "stripe/events/v2_core_account_link_returned_event"
    autoload :V2CoreAccountPersonCreatedEvent, "stripe/events/v2_core_account_person_created_event"
    autoload :V2CoreAccountPersonCreatedEventNotification, "stripe/events/v2_core_account_person_created_event"
    autoload :V2CoreAccountPersonDeletedEvent, "stripe/events/v2_core_account_person_deleted_event"
    autoload :V2CoreAccountPersonDeletedEventNotification, "stripe/events/v2_core_account_person_deleted_event"
    autoload :V2CoreAccountPersonUpdatedEvent, "stripe/events/v2_core_account_person_updated_event"
    autoload :V2CoreAccountPersonUpdatedEventNotification, "stripe/events/v2_core_account_person_updated_event"
    autoload :V2CoreAccountSignalsFraudulentWebsiteReadyEvent,
             "stripe/events/v2_core_account_signals_fraudulent_website_ready_event"
    autoload :V2CoreAccountSignalsFraudulentWebsiteReadyEventNotification,
             "stripe/events/v2_core_account_signals_fraudulent_website_ready_event"
    autoload :V2CoreAccountUpdatedEvent, "stripe/events/v2_core_account_updated_event"
    autoload :V2CoreAccountUpdatedEventNotification, "stripe/events/v2_core_account_updated_event"
    autoload :V2CoreApprovalRequestApprovedEvent, "stripe/events/v2_core_approval_request_approved_event"
    autoload :V2CoreApprovalRequestApprovedEventNotification, "stripe/events/v2_core_approval_request_approved_event"
    autoload :V2CoreApprovalRequestCanceledEvent, "stripe/events/v2_core_approval_request_canceled_event"
    autoload :V2CoreApprovalRequestCanceledEventNotification, "stripe/events/v2_core_approval_request_canceled_event"
    autoload :V2CoreApprovalRequestCreatedEvent, "stripe/events/v2_core_approval_request_created_event"
    autoload :V2CoreApprovalRequestCreatedEventNotification, "stripe/events/v2_core_approval_request_created_event"
    autoload :V2CoreApprovalRequestExpiredEvent, "stripe/events/v2_core_approval_request_expired_event"
    autoload :V2CoreApprovalRequestExpiredEventNotification, "stripe/events/v2_core_approval_request_expired_event"
    autoload :V2CoreApprovalRequestFailedEvent, "stripe/events/v2_core_approval_request_failed_event"
    autoload :V2CoreApprovalRequestFailedEventNotification, "stripe/events/v2_core_approval_request_failed_event"
    autoload :V2CoreApprovalRequestRejectedEvent, "stripe/events/v2_core_approval_request_rejected_event"
    autoload :V2CoreApprovalRequestRejectedEventNotification, "stripe/events/v2_core_approval_request_rejected_event"
    autoload :V2CoreApprovalRequestSucceededEvent, "stripe/events/v2_core_approval_request_succeeded_event"
    autoload :V2CoreApprovalRequestSucceededEventNotification, "stripe/events/v2_core_approval_request_succeeded_event"
    autoload :V2CoreBatchJobBatchFailedEvent, "stripe/events/v2_core_batch_job_batch_failed_event"
    autoload :V2CoreBatchJobBatchFailedEventNotification, "stripe/events/v2_core_batch_job_batch_failed_event"
    autoload :V2CoreBatchJobCanceledEvent, "stripe/events/v2_core_batch_job_canceled_event"
    autoload :V2CoreBatchJobCanceledEventNotification, "stripe/events/v2_core_batch_job_canceled_event"
    autoload :V2CoreBatchJobCompletedEvent, "stripe/events/v2_core_batch_job_completed_event"
    autoload :V2CoreBatchJobCompletedEventNotification, "stripe/events/v2_core_batch_job_completed_event"
    autoload :V2CoreBatchJobCreatedEvent, "stripe/events/v2_core_batch_job_created_event"
    autoload :V2CoreBatchJobCreatedEventNotification, "stripe/events/v2_core_batch_job_created_event"
    autoload :V2CoreBatchJobReadyForUploadEvent, "stripe/events/v2_core_batch_job_ready_for_upload_event"
    autoload :V2CoreBatchJobReadyForUploadEventNotification, "stripe/events/v2_core_batch_job_ready_for_upload_event"
    autoload :V2CoreBatchJobTimeoutEvent, "stripe/events/v2_core_batch_job_timeout_event"
    autoload :V2CoreBatchJobTimeoutEventNotification, "stripe/events/v2_core_batch_job_timeout_event"
    autoload :V2CoreBatchJobUpdatedEvent, "stripe/events/v2_core_batch_job_updated_event"
    autoload :V2CoreBatchJobUpdatedEventNotification, "stripe/events/v2_core_batch_job_updated_event"
    autoload :V2CoreBatchJobUploadTimeoutEvent, "stripe/events/v2_core_batch_job_upload_timeout_event"
    autoload :V2CoreBatchJobUploadTimeoutEventNotification, "stripe/events/v2_core_batch_job_upload_timeout_event"
    autoload :V2CoreBatchJobValidatingEvent, "stripe/events/v2_core_batch_job_validating_event"
    autoload :V2CoreBatchJobValidatingEventNotification, "stripe/events/v2_core_batch_job_validating_event"
    autoload :V2CoreBatchJobValidationFailedEvent, "stripe/events/v2_core_batch_job_validation_failed_event"
    autoload :V2CoreBatchJobValidationFailedEventNotification, "stripe/events/v2_core_batch_job_validation_failed_event"
    autoload :V2CoreClaimableSandboxClaimedEvent, "stripe/events/v2_core_claimable_sandbox_claimed_event"
    autoload :V2CoreClaimableSandboxClaimedEventNotification, "stripe/events/v2_core_claimable_sandbox_claimed_event"
    autoload :V2CoreClaimableSandboxCreatedEvent, "stripe/events/v2_core_claimable_sandbox_created_event"
    autoload :V2CoreClaimableSandboxCreatedEventNotification, "stripe/events/v2_core_claimable_sandbox_created_event"
    autoload :V2CoreClaimableSandboxExpiredEvent, "stripe/events/v2_core_claimable_sandbox_expired_event"
    autoload :V2CoreClaimableSandboxExpiredEventNotification, "stripe/events/v2_core_claimable_sandbox_expired_event"
    autoload :V2CoreClaimableSandboxExpiringEvent, "stripe/events/v2_core_claimable_sandbox_expiring_event"
    autoload :V2CoreClaimableSandboxExpiringEventNotification, "stripe/events/v2_core_claimable_sandbox_expiring_event"
    autoload :V2CoreClaimableSandboxUpdatedEvent, "stripe/events/v2_core_claimable_sandbox_updated_event"
    autoload :V2CoreClaimableSandboxUpdatedEventNotification, "stripe/events/v2_core_claimable_sandbox_updated_event"
    autoload :V2CoreEventDestinationPingEvent, "stripe/events/v2_core_event_destination_ping_event"
    autoload :V2CoreEventDestinationPingEventNotification, "stripe/events/v2_core_event_destination_ping_event"
    autoload :V2CoreHealthApiErrorFiringEvent, "stripe/events/v2_core_health_api_error_firing_event"
    autoload :V2CoreHealthApiErrorFiringEventNotification, "stripe/events/v2_core_health_api_error_firing_event"
    autoload :V2CoreHealthApiErrorResolvedEvent, "stripe/events/v2_core_health_api_error_resolved_event"
    autoload :V2CoreHealthApiErrorResolvedEventNotification, "stripe/events/v2_core_health_api_error_resolved_event"
    autoload :V2CoreHealthApiLatencyFiringEvent, "stripe/events/v2_core_health_api_latency_firing_event"
    autoload :V2CoreHealthApiLatencyFiringEventNotification, "stripe/events/v2_core_health_api_latency_firing_event"
    autoload :V2CoreHealthApiLatencyResolvedEvent, "stripe/events/v2_core_health_api_latency_resolved_event"
    autoload :V2CoreHealthApiLatencyResolvedEventNotification, "stripe/events/v2_core_health_api_latency_resolved_event"
    autoload :V2CoreHealthAuthorizationRateDropFiringEvent,
             "stripe/events/v2_core_health_authorization_rate_drop_firing_event"
    autoload :V2CoreHealthAuthorizationRateDropFiringEventNotification,
             "stripe/events/v2_core_health_authorization_rate_drop_firing_event"
    autoload :V2CoreHealthAuthorizationRateDropResolvedEvent,
             "stripe/events/v2_core_health_authorization_rate_drop_resolved_event"
    autoload :V2CoreHealthAuthorizationRateDropResolvedEventNotification,
             "stripe/events/v2_core_health_authorization_rate_drop_resolved_event"
    autoload :V2CoreHealthElementsErrorFiringEvent, "stripe/events/v2_core_health_elements_error_firing_event"
    autoload :V2CoreHealthElementsErrorFiringEventNotification,
             "stripe/events/v2_core_health_elements_error_firing_event"
    autoload :V2CoreHealthElementsErrorResolvedEvent, "stripe/events/v2_core_health_elements_error_resolved_event"
    autoload :V2CoreHealthElementsErrorResolvedEventNotification,
             "stripe/events/v2_core_health_elements_error_resolved_event"
    autoload :V2CoreHealthEventGenerationFailureResolvedEvent,
             "stripe/events/v2_core_health_event_generation_failure_resolved_event"
    autoload :V2CoreHealthEventGenerationFailureResolvedEventNotification,
             "stripe/events/v2_core_health_event_generation_failure_resolved_event"
    autoload :V2CoreHealthFraudRateIncreasedEvent, "stripe/events/v2_core_health_fraud_rate_increased_event"
    autoload :V2CoreHealthFraudRateIncreasedEventNotification, "stripe/events/v2_core_health_fraud_rate_increased_event"
    autoload :V2CoreHealthInvoiceCountDroppedFiringEvent,
             "stripe/events/v2_core_health_invoice_count_dropped_firing_event"
    autoload :V2CoreHealthInvoiceCountDroppedFiringEventNotification,
             "stripe/events/v2_core_health_invoice_count_dropped_firing_event"
    autoload :V2CoreHealthInvoiceCountDroppedResolvedEvent,
             "stripe/events/v2_core_health_invoice_count_dropped_resolved_event"
    autoload :V2CoreHealthInvoiceCountDroppedResolvedEventNotification,
             "stripe/events/v2_core_health_invoice_count_dropped_resolved_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent,
             "stripe/events/v2_core_health_issuing_authorization_request_errors_firing_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventNotification,
             "stripe/events/v2_core_health_issuing_authorization_request_errors_firing_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent,
             "stripe/events/v2_core_health_issuing_authorization_request_errors_resolved_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEventNotification,
             "stripe/events/v2_core_health_issuing_authorization_request_errors_resolved_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent,
             "stripe/events/v2_core_health_issuing_authorization_request_timeout_firing_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEventNotification,
             "stripe/events/v2_core_health_issuing_authorization_request_timeout_firing_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent,
             "stripe/events/v2_core_health_issuing_authorization_request_timeout_resolved_event"
    autoload :V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventNotification,
             "stripe/events/v2_core_health_issuing_authorization_request_timeout_resolved_event"
    autoload :V2CoreHealthMeterEventSummariesDelayedFiringEvent,
             "stripe/events/v2_core_health_meter_event_summaries_delayed_firing_event"
    autoload :V2CoreHealthMeterEventSummariesDelayedFiringEventNotification,
             "stripe/events/v2_core_health_meter_event_summaries_delayed_firing_event"
    autoload :V2CoreHealthMeterEventSummariesDelayedResolvedEvent,
             "stripe/events/v2_core_health_meter_event_summaries_delayed_resolved_event"
    autoload :V2CoreHealthMeterEventSummariesDelayedResolvedEventNotification,
             "stripe/events/v2_core_health_meter_event_summaries_delayed_resolved_event"
    autoload :V2CoreHealthPaymentMethodErrorFiringEvent,
             "stripe/events/v2_core_health_payment_method_error_firing_event"
    autoload :V2CoreHealthPaymentMethodErrorFiringEventNotification,
             "stripe/events/v2_core_health_payment_method_error_firing_event"
    autoload :V2CoreHealthPaymentMethodErrorResolvedEvent,
             "stripe/events/v2_core_health_payment_method_error_resolved_event"
    autoload :V2CoreHealthPaymentMethodErrorResolvedEventNotification,
             "stripe/events/v2_core_health_payment_method_error_resolved_event"
    autoload :V2CoreHealthSepaDebitDelayedFiringEvent, "stripe/events/v2_core_health_sepa_debit_delayed_firing_event"
    autoload :V2CoreHealthSepaDebitDelayedFiringEventNotification,
             "stripe/events/v2_core_health_sepa_debit_delayed_firing_event"
    autoload :V2CoreHealthSepaDebitDelayedResolvedEvent,
             "stripe/events/v2_core_health_sepa_debit_delayed_resolved_event"
    autoload :V2CoreHealthSepaDebitDelayedResolvedEventNotification,
             "stripe/events/v2_core_health_sepa_debit_delayed_resolved_event"
    autoload :V2CoreHealthTrafficVolumeDropFiringEvent, "stripe/events/v2_core_health_traffic_volume_drop_firing_event"
    autoload :V2CoreHealthTrafficVolumeDropFiringEventNotification,
             "stripe/events/v2_core_health_traffic_volume_drop_firing_event"
    autoload :V2CoreHealthTrafficVolumeDropResolvedEvent,
             "stripe/events/v2_core_health_traffic_volume_drop_resolved_event"
    autoload :V2CoreHealthTrafficVolumeDropResolvedEventNotification,
             "stripe/events/v2_core_health_traffic_volume_drop_resolved_event"
    autoload :V2CoreHealthWebhookLatencyFiringEvent, "stripe/events/v2_core_health_webhook_latency_firing_event"
    autoload :V2CoreHealthWebhookLatencyFiringEventNotification,
             "stripe/events/v2_core_health_webhook_latency_firing_event"
    autoload :V2CoreHealthWebhookLatencyResolvedEvent, "stripe/events/v2_core_health_webhook_latency_resolved_event"
    autoload :V2CoreHealthWebhookLatencyResolvedEventNotification,
             "stripe/events/v2_core_health_webhook_latency_resolved_event"
    autoload :V2DataReportingQueryRunCreatedEvent, "stripe/events/v2_data_reporting_query_run_created_event"
    autoload :V2DataReportingQueryRunCreatedEventNotification, "stripe/events/v2_data_reporting_query_run_created_event"
    autoload :V2DataReportingQueryRunFailedEvent, "stripe/events/v2_data_reporting_query_run_failed_event"
    autoload :V2DataReportingQueryRunFailedEventNotification, "stripe/events/v2_data_reporting_query_run_failed_event"
    autoload :V2DataReportingQueryRunSucceededEvent, "stripe/events/v2_data_reporting_query_run_succeeded_event"
    autoload :V2DataReportingQueryRunSucceededEventNotification,
             "stripe/events/v2_data_reporting_query_run_succeeded_event"
    autoload :V2DataReportingQueryRunUpdatedEvent, "stripe/events/v2_data_reporting_query_run_updated_event"
    autoload :V2DataReportingQueryRunUpdatedEventNotification, "stripe/events/v2_data_reporting_query_run_updated_event"
    autoload :V2ExtendExtensionRunFailedEvent, "stripe/events/v2_extend_extension_run_failed_event"
    autoload :V2ExtendExtensionRunFailedEventNotification, "stripe/events/v2_extend_extension_run_failed_event"
    autoload :V2ExtendWorkflowRunFailedEvent, "stripe/events/v2_extend_workflow_run_failed_event"
    autoload :V2ExtendWorkflowRunFailedEventNotification, "stripe/events/v2_extend_workflow_run_failed_event"
    autoload :V2ExtendWorkflowRunStartedEvent, "stripe/events/v2_extend_workflow_run_started_event"
    autoload :V2ExtendWorkflowRunStartedEventNotification, "stripe/events/v2_extend_workflow_run_started_event"
    autoload :V2ExtendWorkflowRunSucceededEvent, "stripe/events/v2_extend_workflow_run_succeeded_event"
    autoload :V2ExtendWorkflowRunSucceededEventNotification, "stripe/events/v2_extend_workflow_run_succeeded_event"
    autoload :V2IamApiKeyCreatedEvent, "stripe/events/v2_iam_api_key_created_event"
    autoload :V2IamApiKeyCreatedEventNotification, "stripe/events/v2_iam_api_key_created_event"
    autoload :V2IamApiKeyDefaultSecretRevealedEvent, "stripe/events/v2_iam_api_key_default_secret_revealed_event"
    autoload :V2IamApiKeyDefaultSecretRevealedEventNotification,
             "stripe/events/v2_iam_api_key_default_secret_revealed_event"
    autoload :V2IamApiKeyExpiredEvent, "stripe/events/v2_iam_api_key_expired_event"
    autoload :V2IamApiKeyExpiredEventNotification, "stripe/events/v2_iam_api_key_expired_event"
    autoload :V2IamApiKeyPermissionsUpdatedEvent, "stripe/events/v2_iam_api_key_permissions_updated_event"
    autoload :V2IamApiKeyPermissionsUpdatedEventNotification, "stripe/events/v2_iam_api_key_permissions_updated_event"
    autoload :V2IamApiKeyRotatedEvent, "stripe/events/v2_iam_api_key_rotated_event"
    autoload :V2IamApiKeyRotatedEventNotification, "stripe/events/v2_iam_api_key_rotated_event"
    autoload :V2IamApiKeyUpdatedEvent, "stripe/events/v2_iam_api_key_updated_event"
    autoload :V2IamApiKeyUpdatedEventNotification, "stripe/events/v2_iam_api_key_updated_event"
    autoload :V2IamStripeAccessGrantApprovedEvent, "stripe/events/v2_iam_stripe_access_grant_approved_event"
    autoload :V2IamStripeAccessGrantApprovedEventNotification, "stripe/events/v2_iam_stripe_access_grant_approved_event"
    autoload :V2IamStripeAccessGrantCanceledEvent, "stripe/events/v2_iam_stripe_access_grant_canceled_event"
    autoload :V2IamStripeAccessGrantCanceledEventNotification, "stripe/events/v2_iam_stripe_access_grant_canceled_event"
    autoload :V2IamStripeAccessGrantDeniedEvent, "stripe/events/v2_iam_stripe_access_grant_denied_event"
    autoload :V2IamStripeAccessGrantDeniedEventNotification, "stripe/events/v2_iam_stripe_access_grant_denied_event"
    autoload :V2IamStripeAccessGrantRemovedEvent, "stripe/events/v2_iam_stripe_access_grant_removed_event"
    autoload :V2IamStripeAccessGrantRemovedEventNotification, "stripe/events/v2_iam_stripe_access_grant_removed_event"
    autoload :V2IamStripeAccessGrantRequestedEvent, "stripe/events/v2_iam_stripe_access_grant_requested_event"
    autoload :V2IamStripeAccessGrantRequestedEventNotification,
             "stripe/events/v2_iam_stripe_access_grant_requested_event"
    autoload :V2IamStripeAccessGrantUpdatedEvent, "stripe/events/v2_iam_stripe_access_grant_updated_event"
    autoload :V2IamStripeAccessGrantUpdatedEventNotification, "stripe/events/v2_iam_stripe_access_grant_updated_event"
    autoload :V2MoneyManagementAdjustmentCreatedEvent, "stripe/events/v2_money_management_adjustment_created_event"
    autoload :V2MoneyManagementAdjustmentCreatedEventNotification,
             "stripe/events/v2_money_management_adjustment_created_event"
    autoload :V2MoneyManagementFinancialAccountCreatedEvent,
             "stripe/events/v2_money_management_financial_account_created_event"
    autoload :V2MoneyManagementFinancialAccountCreatedEventNotification,
             "stripe/events/v2_money_management_financial_account_created_event"
    autoload :V2MoneyManagementFinancialAccountStatementCreatedEvent,
             "stripe/events/v2_money_management_financial_account_statement_created_event"
    autoload :V2MoneyManagementFinancialAccountStatementCreatedEventNotification,
             "stripe/events/v2_money_management_financial_account_statement_created_event"
    autoload :V2MoneyManagementFinancialAccountStatementRestatedEvent,
             "stripe/events/v2_money_management_financial_account_statement_restated_event"
    autoload :V2MoneyManagementFinancialAccountStatementRestatedEventNotification,
             "stripe/events/v2_money_management_financial_account_statement_restated_event"
    autoload :V2MoneyManagementFinancialAccountUpdatedEvent,
             "stripe/events/v2_money_management_financial_account_updated_event"
    autoload :V2MoneyManagementFinancialAccountUpdatedEventNotification,
             "stripe/events/v2_money_management_financial_account_updated_event"
    autoload :V2MoneyManagementFinancialAddressActivatedEvent,
             "stripe/events/v2_money_management_financial_address_activated_event"
    autoload :V2MoneyManagementFinancialAddressActivatedEventNotification,
             "stripe/events/v2_money_management_financial_address_activated_event"
    autoload :V2MoneyManagementFinancialAddressFailedEvent,
             "stripe/events/v2_money_management_financial_address_failed_event"
    autoload :V2MoneyManagementFinancialAddressFailedEventNotification,
             "stripe/events/v2_money_management_financial_address_failed_event"
    autoload :V2MoneyManagementInboundTransferAvailableEvent,
             "stripe/events/v2_money_management_inbound_transfer_available_event"
    autoload :V2MoneyManagementInboundTransferAvailableEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_available_event"
    autoload :V2MoneyManagementInboundTransferBankDebitFailedEvent,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_failed_event"
    autoload :V2MoneyManagementInboundTransferBankDebitFailedEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_failed_event"
    autoload :V2MoneyManagementInboundTransferBankDebitProcessingEvent,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_processing_event"
    autoload :V2MoneyManagementInboundTransferBankDebitProcessingEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_processing_event"
    autoload :V2MoneyManagementInboundTransferBankDebitQueuedEvent,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_queued_event"
    autoload :V2MoneyManagementInboundTransferBankDebitQueuedEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_queued_event"
    autoload :V2MoneyManagementInboundTransferBankDebitReturnedEvent,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_returned_event"
    autoload :V2MoneyManagementInboundTransferBankDebitReturnedEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_returned_event"
    autoload :V2MoneyManagementInboundTransferBankDebitSucceededEvent,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_succeeded_event"
    autoload :V2MoneyManagementInboundTransferBankDebitSucceededEventNotification,
             "stripe/events/v2_money_management_inbound_transfer_bank_debit_succeeded_event"
    autoload :V2MoneyManagementOutboundPaymentCanceledEvent,
             "stripe/events/v2_money_management_outbound_payment_canceled_event"
    autoload :V2MoneyManagementOutboundPaymentCanceledEventNotification,
             "stripe/events/v2_money_management_outbound_payment_canceled_event"
    autoload :V2MoneyManagementOutboundPaymentCreatedEvent,
             "stripe/events/v2_money_management_outbound_payment_created_event"
    autoload :V2MoneyManagementOutboundPaymentCreatedEventNotification,
             "stripe/events/v2_money_management_outbound_payment_created_event"
    autoload :V2MoneyManagementOutboundPaymentFailedEvent,
             "stripe/events/v2_money_management_outbound_payment_failed_event"
    autoload :V2MoneyManagementOutboundPaymentFailedEventNotification,
             "stripe/events/v2_money_management_outbound_payment_failed_event"
    autoload :V2MoneyManagementOutboundPaymentPostedEvent,
             "stripe/events/v2_money_management_outbound_payment_posted_event"
    autoload :V2MoneyManagementOutboundPaymentPostedEventNotification,
             "stripe/events/v2_money_management_outbound_payment_posted_event"
    autoload :V2MoneyManagementOutboundPaymentReturnedEvent,
             "stripe/events/v2_money_management_outbound_payment_returned_event"
    autoload :V2MoneyManagementOutboundPaymentReturnedEventNotification,
             "stripe/events/v2_money_management_outbound_payment_returned_event"
    autoload :V2MoneyManagementOutboundPaymentUpdatedEvent,
             "stripe/events/v2_money_management_outbound_payment_updated_event"
    autoload :V2MoneyManagementOutboundPaymentUpdatedEventNotification,
             "stripe/events/v2_money_management_outbound_payment_updated_event"
    autoload :V2MoneyManagementOutboundTransferCanceledEvent,
             "stripe/events/v2_money_management_outbound_transfer_canceled_event"
    autoload :V2MoneyManagementOutboundTransferCanceledEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_canceled_event"
    autoload :V2MoneyManagementOutboundTransferCreatedEvent,
             "stripe/events/v2_money_management_outbound_transfer_created_event"
    autoload :V2MoneyManagementOutboundTransferCreatedEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_created_event"
    autoload :V2MoneyManagementOutboundTransferFailedEvent,
             "stripe/events/v2_money_management_outbound_transfer_failed_event"
    autoload :V2MoneyManagementOutboundTransferFailedEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_failed_event"
    autoload :V2MoneyManagementOutboundTransferPostedEvent,
             "stripe/events/v2_money_management_outbound_transfer_posted_event"
    autoload :V2MoneyManagementOutboundTransferPostedEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_posted_event"
    autoload :V2MoneyManagementOutboundTransferReturnedEvent,
             "stripe/events/v2_money_management_outbound_transfer_returned_event"
    autoload :V2MoneyManagementOutboundTransferReturnedEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_returned_event"
    autoload :V2MoneyManagementOutboundTransferUpdatedEvent,
             "stripe/events/v2_money_management_outbound_transfer_updated_event"
    autoload :V2MoneyManagementOutboundTransferUpdatedEventNotification,
             "stripe/events/v2_money_management_outbound_transfer_updated_event"
    autoload :V2MoneyManagementPayoutMethodCreatedEvent, "stripe/events/v2_money_management_payout_method_created_event"
    autoload :V2MoneyManagementPayoutMethodCreatedEventNotification,
             "stripe/events/v2_money_management_payout_method_created_event"
    autoload :V2MoneyManagementPayoutMethodUpdatedEvent, "stripe/events/v2_money_management_payout_method_updated_event"
    autoload :V2MoneyManagementPayoutMethodUpdatedEventNotification,
             "stripe/events/v2_money_management_payout_method_updated_event"
    autoload :V2MoneyManagementReceivedCreditAvailableEvent,
             "stripe/events/v2_money_management_received_credit_available_event"
    autoload :V2MoneyManagementReceivedCreditAvailableEventNotification,
             "stripe/events/v2_money_management_received_credit_available_event"
    autoload :V2MoneyManagementReceivedCreditFailedEvent,
             "stripe/events/v2_money_management_received_credit_failed_event"
    autoload :V2MoneyManagementReceivedCreditFailedEventNotification,
             "stripe/events/v2_money_management_received_credit_failed_event"
    autoload :V2MoneyManagementReceivedCreditReturnedEvent,
             "stripe/events/v2_money_management_received_credit_returned_event"
    autoload :V2MoneyManagementReceivedCreditReturnedEventNotification,
             "stripe/events/v2_money_management_received_credit_returned_event"
    autoload :V2MoneyManagementReceivedCreditSucceededEvent,
             "stripe/events/v2_money_management_received_credit_succeeded_event"
    autoload :V2MoneyManagementReceivedCreditSucceededEventNotification,
             "stripe/events/v2_money_management_received_credit_succeeded_event"
    autoload :V2MoneyManagementReceivedDebitCanceledEvent,
             "stripe/events/v2_money_management_received_debit_canceled_event"
    autoload :V2MoneyManagementReceivedDebitCanceledEventNotification,
             "stripe/events/v2_money_management_received_debit_canceled_event"
    autoload :V2MoneyManagementReceivedDebitFailedEvent, "stripe/events/v2_money_management_received_debit_failed_event"
    autoload :V2MoneyManagementReceivedDebitFailedEventNotification,
             "stripe/events/v2_money_management_received_debit_failed_event"
    autoload :V2MoneyManagementReceivedDebitPendingEvent,
             "stripe/events/v2_money_management_received_debit_pending_event"
    autoload :V2MoneyManagementReceivedDebitPendingEventNotification,
             "stripe/events/v2_money_management_received_debit_pending_event"
    autoload :V2MoneyManagementReceivedDebitSucceededEvent,
             "stripe/events/v2_money_management_received_debit_succeeded_event"
    autoload :V2MoneyManagementReceivedDebitSucceededEventNotification,
             "stripe/events/v2_money_management_received_debit_succeeded_event"
    autoload :V2MoneyManagementReceivedDebitUpdatedEvent,
             "stripe/events/v2_money_management_received_debit_updated_event"
    autoload :V2MoneyManagementReceivedDebitUpdatedEventNotification,
             "stripe/events/v2_money_management_received_debit_updated_event"
    autoload :V2MoneyManagementRecipientVerificationCreatedEvent,
             "stripe/events/v2_money_management_recipient_verification_created_event"
    autoload :V2MoneyManagementRecipientVerificationCreatedEventNotification,
             "stripe/events/v2_money_management_recipient_verification_created_event"
    autoload :V2MoneyManagementRecipientVerificationUpdatedEvent,
             "stripe/events/v2_money_management_recipient_verification_updated_event"
    autoload :V2MoneyManagementRecipientVerificationUpdatedEventNotification,
             "stripe/events/v2_money_management_recipient_verification_updated_event"
    autoload :V2MoneyManagementTransactionCreatedEvent, "stripe/events/v2_money_management_transaction_created_event"
    autoload :V2MoneyManagementTransactionCreatedEventNotification,
             "stripe/events/v2_money_management_transaction_created_event"
    autoload :V2MoneyManagementTransactionUpdatedEvent, "stripe/events/v2_money_management_transaction_updated_event"
    autoload :V2MoneyManagementTransactionUpdatedEventNotification,
             "stripe/events/v2_money_management_transaction_updated_event"
    autoload :V2OrchestratedCommerceAgreementConfirmedEvent,
             "stripe/events/v2_orchestrated_commerce_agreement_confirmed_event"
    autoload :V2OrchestratedCommerceAgreementConfirmedEventNotification,
             "stripe/events/v2_orchestrated_commerce_agreement_confirmed_event"
    autoload :V2OrchestratedCommerceAgreementCreatedEvent,
             "stripe/events/v2_orchestrated_commerce_agreement_created_event"
    autoload :V2OrchestratedCommerceAgreementCreatedEventNotification,
             "stripe/events/v2_orchestrated_commerce_agreement_created_event"
    autoload :V2OrchestratedCommerceAgreementPartiallyConfirmedEvent,
             "stripe/events/v2_orchestrated_commerce_agreement_partially_confirmed_event"
    autoload :V2OrchestratedCommerceAgreementPartiallyConfirmedEventNotification,
             "stripe/events/v2_orchestrated_commerce_agreement_partially_confirmed_event"
    autoload :V2OrchestratedCommerceAgreementTerminatedEvent,
             "stripe/events/v2_orchestrated_commerce_agreement_terminated_event"
    autoload :V2OrchestratedCommerceAgreementTerminatedEventNotification,
             "stripe/events/v2_orchestrated_commerce_agreement_terminated_event"
    autoload :V2PaymentsOffSessionPaymentAttemptFailedEvent,
             "stripe/events/v2_payments_off_session_payment_attempt_failed_event"
    autoload :V2PaymentsOffSessionPaymentAttemptFailedEventNotification,
             "stripe/events/v2_payments_off_session_payment_attempt_failed_event"
    autoload :V2PaymentsOffSessionPaymentAttemptStartedEvent,
             "stripe/events/v2_payments_off_session_payment_attempt_started_event"
    autoload :V2PaymentsOffSessionPaymentAttemptStartedEventNotification,
             "stripe/events/v2_payments_off_session_payment_attempt_started_event"
    autoload :V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent,
             "stripe/events/v2_payments_off_session_payment_authorization_attempt_failed_event"
    autoload :V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEventNotification,
             "stripe/events/v2_payments_off_session_payment_authorization_attempt_failed_event"
    autoload :V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent,
             "stripe/events/v2_payments_off_session_payment_authorization_attempt_started_event"
    autoload :V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEventNotification,
             "stripe/events/v2_payments_off_session_payment_authorization_attempt_started_event"
    autoload :V2PaymentsOffSessionPaymentCanceledEvent, "stripe/events/v2_payments_off_session_payment_canceled_event"
    autoload :V2PaymentsOffSessionPaymentCanceledEventNotification,
             "stripe/events/v2_payments_off_session_payment_canceled_event"
    autoload :V2PaymentsOffSessionPaymentCreatedEvent, "stripe/events/v2_payments_off_session_payment_created_event"
    autoload :V2PaymentsOffSessionPaymentCreatedEventNotification,
             "stripe/events/v2_payments_off_session_payment_created_event"
    autoload :V2PaymentsOffSessionPaymentFailedEvent, "stripe/events/v2_payments_off_session_payment_failed_event"
    autoload :V2PaymentsOffSessionPaymentFailedEventNotification,
             "stripe/events/v2_payments_off_session_payment_failed_event"
    autoload :V2PaymentsOffSessionPaymentPausedEvent, "stripe/events/v2_payments_off_session_payment_paused_event"
    autoload :V2PaymentsOffSessionPaymentPausedEventNotification,
             "stripe/events/v2_payments_off_session_payment_paused_event"
    autoload :V2PaymentsOffSessionPaymentRequiresCaptureEvent,
             "stripe/events/v2_payments_off_session_payment_requires_capture_event"
    autoload :V2PaymentsOffSessionPaymentRequiresCaptureEventNotification,
             "stripe/events/v2_payments_off_session_payment_requires_capture_event"
    autoload :V2PaymentsOffSessionPaymentResumedEvent, "stripe/events/v2_payments_off_session_payment_resumed_event"
    autoload :V2PaymentsOffSessionPaymentResumedEventNotification,
             "stripe/events/v2_payments_off_session_payment_resumed_event"
    autoload :V2PaymentsOffSessionPaymentSucceededEvent, "stripe/events/v2_payments_off_session_payment_succeeded_event"
    autoload :V2PaymentsOffSessionPaymentSucceededEventNotification,
             "stripe/events/v2_payments_off_session_payment_succeeded_event"
    autoload :V2PaymentsSettlementAllocationIntentCanceledEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_canceled_event"
    autoload :V2PaymentsSettlementAllocationIntentCanceledEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_canceled_event"
    autoload :V2PaymentsSettlementAllocationIntentCreatedEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_created_event"
    autoload :V2PaymentsSettlementAllocationIntentCreatedEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_created_event"
    autoload :V2PaymentsSettlementAllocationIntentErroredEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_errored_event"
    autoload :V2PaymentsSettlementAllocationIntentErroredEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_errored_event"
    autoload :V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_funds_not_received_event"
    autoload :V2PaymentsSettlementAllocationIntentFundsNotReceivedEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_funds_not_received_event"
    autoload :V2PaymentsSettlementAllocationIntentMatchedEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_matched_event"
    autoload :V2PaymentsSettlementAllocationIntentMatchedEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_matched_event"
    autoload :V2PaymentsSettlementAllocationIntentNotFoundEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_not_found_event"
    autoload :V2PaymentsSettlementAllocationIntentNotFoundEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_not_found_event"
    autoload :V2PaymentsSettlementAllocationIntentSettledEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_settled_event"
    autoload :V2PaymentsSettlementAllocationIntentSettledEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_settled_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitCanceledEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_split_canceled_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitCanceledEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_split_canceled_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitCreatedEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_split_created_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitCreatedEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_split_created_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitSettledEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_split_settled_event"
    autoload :V2PaymentsSettlementAllocationIntentSplitSettledEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_split_settled_event"
    autoload :V2PaymentsSettlementAllocationIntentSubmittedEvent,
             "stripe/events/v2_payments_settlement_allocation_intent_submitted_event"
    autoload :V2PaymentsSettlementAllocationIntentSubmittedEventNotification,
             "stripe/events/v2_payments_settlement_allocation_intent_submitted_event"
    autoload :V2ReportingReportRunCreatedEvent, "stripe/events/v2_reporting_report_run_created_event"
    autoload :V2ReportingReportRunCreatedEventNotification, "stripe/events/v2_reporting_report_run_created_event"
    autoload :V2ReportingReportRunFailedEvent, "stripe/events/v2_reporting_report_run_failed_event"
    autoload :V2ReportingReportRunFailedEventNotification, "stripe/events/v2_reporting_report_run_failed_event"
    autoload :V2ReportingReportRunSucceededEvent, "stripe/events/v2_reporting_report_run_succeeded_event"
    autoload :V2ReportingReportRunSucceededEventNotification, "stripe/events/v2_reporting_report_run_succeeded_event"
    autoload :V2ReportingReportRunUpdatedEvent, "stripe/events/v2_reporting_report_run_updated_event"
    autoload :V2ReportingReportRunUpdatedEventNotification, "stripe/events/v2_reporting_report_run_updated_event"
    autoload :V2SignalsAccountSignalFraudulentMerchantReadyEvent,
             "stripe/events/v2_signals_account_signal_fraudulent_merchant_ready_event"
    autoload :V2SignalsAccountSignalFraudulentMerchantReadyEventNotification,
             "stripe/events/v2_signals_account_signal_fraudulent_merchant_ready_event"
    autoload :V2SignalsAccountSignalMerchantDelinquencyReadyEvent,
             "stripe/events/v2_signals_account_signal_merchant_delinquency_ready_event"
    autoload :V2SignalsAccountSignalMerchantDelinquencyReadyEventNotification,
             "stripe/events/v2_signals_account_signal_merchant_delinquency_ready_event"
  end

  module FinancialConnections
    autoload :Account, "stripe/resources/financial_connections/account"
    autoload :AccountInferredBalance, "stripe/resources/financial_connections/account_inferred_balance"
    autoload :AccountOwner, "stripe/resources/financial_connections/account_owner"
    autoload :AccountOwnership, "stripe/resources/financial_connections/account_ownership"
    autoload :Authorization, "stripe/resources/financial_connections/authorization"
    autoload :Institution, "stripe/resources/financial_connections/institution"
    autoload :Session, "stripe/resources/financial_connections/session"
    autoload :Transaction, "stripe/resources/financial_connections/transaction"
  end

  module Forwarding
    autoload :Request, "stripe/resources/forwarding/request"
  end

  module Identity
    autoload :BlocklistEntry, "stripe/resources/identity/blocklist_entry"
    autoload :VerificationReport, "stripe/resources/identity/verification_report"
    autoload :VerificationSession, "stripe/resources/identity/verification_session"
  end

  module Issuing
    autoload :Authorization, "stripe/resources/issuing/authorization"
    autoload :Card, "stripe/resources/issuing/card"
    autoload :Cardholder, "stripe/resources/issuing/cardholder"
    autoload :CreditUnderwritingRecord, "stripe/resources/issuing/credit_underwriting_record"
    autoload :Dispute, "stripe/resources/issuing/dispute"
    autoload :DisputeSettlementDetail, "stripe/resources/issuing/dispute_settlement_detail"
    autoload :FraudLiabilityDebit, "stripe/resources/issuing/fraud_liability_debit"
    autoload :PersonalizationDesign, "stripe/resources/issuing/personalization_design"
    autoload :PhysicalBundle, "stripe/resources/issuing/physical_bundle"
    autoload :Program, "stripe/resources/issuing/program"
    autoload :Settlement, "stripe/resources/issuing/settlement"
    autoload :Token, "stripe/resources/issuing/token"
    autoload :Transaction, "stripe/resources/issuing/transaction"
  end

  module Orchestration
    autoload :PaymentAttempt, "stripe/resources/orchestration/payment_attempt"
  end

  module Privacy
    autoload :RedactionJob, "stripe/resources/privacy/redaction_job"
    autoload :RedactionJobValidationError, "stripe/resources/privacy/redaction_job_validation_error"
  end

  module ProductCatalog
    autoload :TrialOffer, "stripe/resources/product_catalog/trial_offer"
  end

  module Radar
    autoload :AccountEvaluation, "stripe/resources/radar/account_evaluation"
    autoload :CustomerEvaluation, "stripe/resources/radar/customer_evaluation"
    autoload :EarlyFraudWarning, "stripe/resources/radar/early_fraud_warning"
    autoload :IssuingAuthorizationEvaluation, "stripe/resources/radar/issuing_authorization_evaluation"
    autoload :PaymentEvaluation, "stripe/resources/radar/payment_evaluation"
    autoload :ValueList, "stripe/resources/radar/value_list"
    autoload :ValueListItem, "stripe/resources/radar/value_list_item"
  end

  module Reporting
    autoload :ReportRun, "stripe/resources/reporting/report_run"
    autoload :ReportType, "stripe/resources/reporting/report_type"
  end

  module Reserve
    autoload :Hold, "stripe/resources/reserve/hold"
    autoload :Plan, "stripe/resources/reserve/plan"
    autoload :Release, "stripe/resources/reserve/release"
  end

  module SharedPayment
    autoload :GrantedToken, "stripe/resources/shared_payment/granted_token"
    autoload :IssuedToken, "stripe/resources/shared_payment/issued_token"
  end

  module Sigma
    autoload :ScheduledQueryRun, "stripe/resources/sigma/scheduled_query_run"
  end

  module Tax
    autoload :Association, "stripe/resources/tax/association"
    autoload :Calculation, "stripe/resources/tax/calculation"
    autoload :CalculationLineItem, "stripe/resources/tax/calculation_line_item"
    autoload :Form, "stripe/resources/tax/form"
    autoload :Location, "stripe/resources/tax/location"
    autoload :Registration, "stripe/resources/tax/registration"
    autoload :Settings, "stripe/resources/tax/settings"
    autoload :Transaction, "stripe/resources/tax/transaction"
    autoload :TransactionLineItem, "stripe/resources/tax/transaction_line_item"
  end

  module Terminal
    autoload :Configuration, "stripe/resources/terminal/configuration"
    autoload :ConnectionToken, "stripe/resources/terminal/connection_token"
    autoload :Location, "stripe/resources/terminal/location"
    autoload :OnboardingLink, "stripe/resources/terminal/onboarding_link"
    autoload :Reader, "stripe/resources/terminal/reader"
    autoload :ReaderCollectedData, "stripe/resources/terminal/reader_collected_data"
  end

  module TestHelpers
    autoload :TestClock, "stripe/resources/test_helpers/test_clock"
  end

  module Treasury
    autoload :CreditReversal, "stripe/resources/treasury/credit_reversal"
    autoload :DebitReversal, "stripe/resources/treasury/debit_reversal"
    autoload :FinancialAccount, "stripe/resources/treasury/financial_account"
    autoload :FinancialAccountFeatures, "stripe/resources/treasury/financial_account_features"
    autoload :InboundTransfer, "stripe/resources/treasury/inbound_transfer"
    autoload :OutboundPayment, "stripe/resources/treasury/outbound_payment"
    autoload :OutboundTransfer, "stripe/resources/treasury/outbound_transfer"
    autoload :ReceivedCredit, "stripe/resources/treasury/received_credit"
    autoload :ReceivedDebit, "stripe/resources/treasury/received_debit"
    autoload :Transaction, "stripe/resources/treasury/transaction"
    autoload :TransactionEntry, "stripe/resources/treasury/transaction_entry"
  end

  module V2
    autoload :DeletedObject, "stripe/resources/v2/deleted_object"
    autoload :FinancialAddressCreditSimulation, "stripe/resources/v2/financial_address_credit_simulation"
    autoload :FinancialAddressGeneratedMicrodeposits, "stripe/resources/v2/financial_address_generated_microdeposits"

    module Billing
      autoload :BillSetting, "stripe/resources/v2/billing/bill_setting"
      autoload :BillSettingVersion, "stripe/resources/v2/billing/bill_setting_version"
      autoload :Cadence, "stripe/resources/v2/billing/cadence"
      autoload :CadenceSpendModifier, "stripe/resources/v2/billing/cadence_spend_modifier"
      autoload :CollectionSetting, "stripe/resources/v2/billing/collection_setting"
      autoload :CollectionSettingVersion, "stripe/resources/v2/billing/collection_setting_version"
      autoload :Contract, "stripe/resources/v2/billing/contract"
      autoload :ContractLicensePricingQuantityChange,
               "stripe/resources/v2/billing/contract_license_pricing_quantity_change"
      autoload :CustomPricingUnit, "stripe/resources/v2/billing/custom_pricing_unit"
      autoload :Intent, "stripe/resources/v2/billing/intent"
      autoload :IntentAction, "stripe/resources/v2/billing/intent_action"
      autoload :LicensedItem, "stripe/resources/v2/billing/licensed_item"
      autoload :LicenseFee, "stripe/resources/v2/billing/license_fee"
      autoload :LicenseFeeVersion, "stripe/resources/v2/billing/license_fee_version"
      autoload :MeteredItem, "stripe/resources/v2/billing/metered_item"
      autoload :MeterEvent, "stripe/resources/v2/billing/meter_event"
      autoload :MeterEventAdjustment, "stripe/resources/v2/billing/meter_event_adjustment"
      autoload :MeterEventSession, "stripe/resources/v2/billing/meter_event_session"
      autoload :OneTimeItem, "stripe/resources/v2/billing/one_time_item"
      autoload :PricingPlan, "stripe/resources/v2/billing/pricing_plan"
      autoload :PricingPlanComponent, "stripe/resources/v2/billing/pricing_plan_component"
      autoload :PricingPlanSubscription, "stripe/resources/v2/billing/pricing_plan_subscription"
      autoload :PricingPlanVersion, "stripe/resources/v2/billing/pricing_plan_version"
      autoload :Profile, "stripe/resources/v2/billing/profile"
      autoload :RateCard, "stripe/resources/v2/billing/rate_card"
      autoload :RateCardCustomPricingUnitOverageRate,
               "stripe/resources/v2/billing/rate_card_custom_pricing_unit_overage_rate"
      autoload :RateCardRate, "stripe/resources/v2/billing/rate_card_rate"
      autoload :RateCardSubscription, "stripe/resources/v2/billing/rate_card_subscription"
      autoload :RateCardVersion, "stripe/resources/v2/billing/rate_card_version"
      autoload :ServiceAction, "stripe/resources/v2/billing/service_action"
    end

    module Commerce
      autoload :ProductCatalogImport, "stripe/resources/v2/commerce/product_catalog_import"
    end

    module Core
      autoload :Account, "stripe/resources/v2/core/account"
      autoload :AccountEvaluation, "stripe/resources/v2/core/account_evaluation"
      autoload :AccountLink, "stripe/resources/v2/core/account_link"
      autoload :AccountPerson, "stripe/resources/v2/core/account_person"
      autoload :AccountPersonToken, "stripe/resources/v2/core/account_person_token"
      autoload :AccountToken, "stripe/resources/v2/core/account_token"
      autoload :ApprovalRequest, "stripe/resources/v2/core/approval_request"
      autoload :BatchJob, "stripe/resources/v2/core/batch_job"
      autoload :ClaimableSandbox, "stripe/resources/v2/core/claimable_sandbox"
      autoload :ConnectionSession, "stripe/resources/v2/core/connection_session"
      autoload :Event, "stripe/resources/v2/core/event"
      autoload :EventDestination, "stripe/resources/v2/core/event_destination"
      autoload :EventNotification, "stripe/resources/v2/core/event_notification"
      autoload :EventReason, "stripe/resources/v2/core/event_notification"
      autoload :EventReasonRequest, "stripe/resources/v2/core/event_notification"
      autoload :FeeBatch, "stripe/resources/v2/core/fee_batch"
      autoload :FeeEntry, "stripe/resources/v2/core/fee_entry"
      autoload :RelatedObject, "stripe/resources/v2/core/event_notification"

      module Vault
        autoload :GbBankAccount, "stripe/resources/v2/core/vault/gb_bank_account"
        autoload :UsBankAccount, "stripe/resources/v2/core/vault/us_bank_account"
      end
    end

    module Data
      module Analytics
        autoload :MetricQueryResult, "stripe/resources/v2/data/analytics/metric_query_result"
      end

      module Reporting
        autoload :QueryRun, "stripe/resources/v2/data/reporting/query_run"
      end
    end

    module Extend
      autoload :Workflow, "stripe/resources/v2/extend/workflow"
      autoload :WorkflowRun, "stripe/resources/v2/extend/workflow_run"
    end

    module Iam
      autoload :ActivityLog, "stripe/resources/v2/iam/activity_log"
      autoload :ApiKey, "stripe/resources/v2/iam/api_key"
    end

    module MoneyManagement
      autoload :Adjustment, "stripe/resources/v2/money_management/adjustment"
      autoload :CurrencyConversion, "stripe/resources/v2/money_management/currency_conversion"
      autoload :DebitDispute, "stripe/resources/v2/money_management/debit_dispute"
      autoload :FinancialAccount, "stripe/resources/v2/money_management/financial_account"
      autoload :FinancialAccountStatement, "stripe/resources/v2/money_management/financial_account_statement"
      autoload :FinancialAddress, "stripe/resources/v2/money_management/financial_address"
      autoload :InboundTransfer, "stripe/resources/v2/money_management/inbound_transfer"
      autoload :OutboundPayment, "stripe/resources/v2/money_management/outbound_payment"
      autoload :OutboundPaymentQuote, "stripe/resources/v2/money_management/outbound_payment_quote"
      autoload :OutboundSetupIntent, "stripe/resources/v2/money_management/outbound_setup_intent"
      autoload :OutboundTransfer, "stripe/resources/v2/money_management/outbound_transfer"
      autoload :PayoutMethod, "stripe/resources/v2/money_management/payout_method"
      autoload :PayoutMethodsBankAccountSpec, "stripe/resources/v2/money_management/payout_methods_bank_account_spec"
      autoload :ReceivedCredit, "stripe/resources/v2/money_management/received_credit"
      autoload :ReceivedDebit, "stripe/resources/v2/money_management/received_debit"
      autoload :RecipientVerification, "stripe/resources/v2/money_management/recipient_verification"
      autoload :Transaction, "stripe/resources/v2/money_management/transaction"
      autoload :TransactionEntry, "stripe/resources/v2/money_management/transaction_entry"
    end

    module Network
      autoload :BusinessProfile, "stripe/resources/v2/network/business_profile"
    end

    module OrchestratedCommerce
      autoload :Agreement, "stripe/resources/v2/orchestrated_commerce/agreement"
    end

    module Payments
      autoload :OffSessionPayment, "stripe/resources/v2/payments/off_session_payment"
      autoload :SettlementAllocationIntent, "stripe/resources/v2/payments/settlement_allocation_intent"
      autoload :SettlementAllocationIntentSplit, "stripe/resources/v2/payments/settlement_allocation_intent_split"
    end

    module Reporting
      autoload :Report, "stripe/resources/v2/reporting/report"
      autoload :ReportRun, "stripe/resources/v2/reporting/report_run"
    end

    module Signals
      autoload :AccountSignal, "stripe/resources/v2/signals/account_signal"
    end

    module Tax
      autoload :ManualRule, "stripe/resources/v2/tax/manual_rule"
    end
  end
end

module Stripe
  # rubocop:disable Metrics/CollectionLiteralLength
  RESOURCE_FILES = %w[
    stripe/resources/v2/core/event_notification
    stripe/resources/account
    stripe/resources/account_link
    stripe/resources/account_notice
    stripe/resources/account_session
    stripe/resources/account_signals
    stripe/resources/apple_pay_domain
    stripe/resources/application
    stripe/resources/application_fee
    stripe/resources/application_fee_refund
    stripe/resources/apps/secret
    stripe/resources/balance
    stripe/resources/balance_settings
    stripe/resources/balance_transaction
    stripe/resources/balance_transfer
    stripe/resources/bank_account
    stripe/resources/billing/alert
    stripe/resources/billing/alert_recovered
    stripe/resources/billing/alert_triggered
    stripe/resources/billing/analytics/meter_usage
    stripe/resources/billing/analytics/meter_usage_row
    stripe/resources/billing/credit_balance_summary
    stripe/resources/billing/credit_balance_transaction
    stripe/resources/billing/credit_grant
    stripe/resources/billing/meter
    stripe/resources/billing/meter_event
    stripe/resources/billing/meter_event_adjustment
    stripe/resources/billing/meter_event_summary
    stripe/resources/billing_portal/configuration
    stripe/resources/billing_portal/session
    stripe/resources/capability
    stripe/resources/capital/financing_offer
    stripe/resources/capital/financing_summary
    stripe/resources/capital/financing_transaction
    stripe/resources/card
    stripe/resources/cash_balance
    stripe/resources/charge
    stripe/resources/checkout/session
    stripe/resources/climate/order
    stripe/resources/climate/product
    stripe/resources/climate/supplier
    stripe/resources/confirmation_token
    stripe/resources/connect_collection_transfer
    stripe/resources/country_spec
    stripe/resources/coupon
    stripe/resources/credit_note
    stripe/resources/credit_note_line_item
    stripe/resources/customer
    stripe/resources/customer_balance_transaction
    stripe/resources/customer_cash_balance_transaction
    stripe/resources/customer_session
    stripe/resources/delegated_checkout/order
    stripe/resources/delegated_checkout/order_event
    stripe/resources/delegated_checkout/requested_session
    stripe/resources/discount
    stripe/resources/dispute
    stripe/resources/entitlements/active_entitlement
    stripe/resources/entitlements/active_entitlement_summary
    stripe/resources/entitlements/feature
    stripe/resources/ephemeral_key
    stripe/resources/event
    stripe/resources/exchange_rate
    stripe/resources/file
    stripe/resources/file_link
    stripe/resources/financial_connections/account
    stripe/resources/financial_connections/account_inferred_balance
    stripe/resources/financial_connections/account_owner
    stripe/resources/financial_connections/account_ownership
    stripe/resources/financial_connections/authorization
    stripe/resources/financial_connections/institution
    stripe/resources/financial_connections/session
    stripe/resources/financial_connections/transaction
    stripe/resources/forwarding/request
    stripe/resources/fr_meal_vouchers_onboarding
    stripe/resources/funding_instructions
    stripe/resources/fx_quote
    stripe/resources/gift_card
    stripe/resources/gift_card_operation
    stripe/resources/identity/blocklist_entry
    stripe/resources/identity/verification_report
    stripe/resources/identity/verification_session
    stripe/resources/invoice
    stripe/resources/invoice_item
    stripe/resources/invoice_line_item
    stripe/resources/invoice_payment
    stripe/resources/invoice_rendering_template
    stripe/resources/issuing/authorization
    stripe/resources/issuing/card
    stripe/resources/issuing/cardholder
    stripe/resources/issuing/credit_underwriting_record
    stripe/resources/issuing/dispute
    stripe/resources/issuing/dispute_settlement_detail
    stripe/resources/issuing/fraud_liability_debit
    stripe/resources/issuing/personalization_design
    stripe/resources/issuing/physical_bundle
    stripe/resources/issuing/program
    stripe/resources/issuing/settlement
    stripe/resources/issuing/token
    stripe/resources/issuing/transaction
    stripe/resources/line_item
    stripe/resources/login_link
    stripe/resources/mandate
    stripe/resources/margin
    stripe/resources/orchestration/payment_attempt
    stripe/resources/order
    stripe/resources/payment_attempt_record
    stripe/resources/payment_intent
    stripe/resources/payment_intent_amount_details_line_item
    stripe/resources/payment_link
    stripe/resources/payment_location
    stripe/resources/payment_location_capability
    stripe/resources/payment_method
    stripe/resources/payment_method_balance
    stripe/resources/payment_method_configuration
    stripe/resources/payment_method_domain
    stripe/resources/payment_record
    stripe/resources/payout
    stripe/resources/person
    stripe/resources/plan
    stripe/resources/price
    stripe/resources/privacy/redaction_job
    stripe/resources/privacy/redaction_job_validation_error
    stripe/resources/product
    stripe/resources/product_catalog/trial_offer
    stripe/resources/product_feature
    stripe/resources/profile
    stripe/resources/promotion_code
    stripe/resources/quote
    stripe/resources/quote_line
    stripe/resources/quote_preview_invoice
    stripe/resources/quote_preview_subscription_schedule
    stripe/resources/radar/account_evaluation
    stripe/resources/radar/customer_evaluation
    stripe/resources/radar/early_fraud_warning
    stripe/resources/radar/issuing_authorization_evaluation
    stripe/resources/radar/payment_evaluation
    stripe/resources/radar/value_list
    stripe/resources/radar/value_list_item
    stripe/resources/refund
    stripe/resources/reporting/report_run
    stripe/resources/reporting/report_type
    stripe/resources/reserve/hold
    stripe/resources/reserve/plan
    stripe/resources/reserve/release
    stripe/resources/reserve_transaction
    stripe/resources/reversal
    stripe/resources/review
    stripe/resources/risk_signals
    stripe/resources/setup_attempt
    stripe/resources/setup_intent
    stripe/resources/shared_payment/granted_token
    stripe/resources/shared_payment/issued_token
    stripe/resources/shipping_rate
    stripe/resources/sigma/scheduled_query_run
    stripe/resources/source
    stripe/resources/source_mandate_notification
    stripe/resources/source_transaction
    stripe/resources/subscription
    stripe/resources/subscription_item
    stripe/resources/subscription_schedule
    stripe/resources/tax/association
    stripe/resources/tax/calculation
    stripe/resources/tax/calculation_line_item
    stripe/resources/tax/form
    stripe/resources/tax/location
    stripe/resources/tax/registration
    stripe/resources/tax/settings
    stripe/resources/tax/transaction
    stripe/resources/tax/transaction_line_item
    stripe/resources/tax_code
    stripe/resources/tax_deducted_at_source
    stripe/resources/tax_fund
    stripe/resources/tax_id
    stripe/resources/tax_rate
    stripe/resources/terminal/configuration
    stripe/resources/terminal/connection_token
    stripe/resources/terminal/location
    stripe/resources/terminal/onboarding_link
    stripe/resources/terminal/reader
    stripe/resources/terminal/reader_collected_data
    stripe/resources/test_helpers/test_clock
    stripe/resources/token
    stripe/resources/topup
    stripe/resources/transfer
    stripe/resources/transit_balance
    stripe/resources/treasury/credit_reversal
    stripe/resources/treasury/debit_reversal
    stripe/resources/treasury/financial_account
    stripe/resources/treasury/financial_account_features
    stripe/resources/treasury/inbound_transfer
    stripe/resources/treasury/outbound_payment
    stripe/resources/treasury/outbound_transfer
    stripe/resources/treasury/received_credit
    stripe/resources/treasury/received_debit
    stripe/resources/treasury/transaction
    stripe/resources/treasury/transaction_entry
    stripe/resources/v2/billing/bill_setting
    stripe/resources/v2/billing/bill_setting_version
    stripe/resources/v2/billing/cadence
    stripe/resources/v2/billing/cadence_spend_modifier
    stripe/resources/v2/billing/collection_setting
    stripe/resources/v2/billing/collection_setting_version
    stripe/resources/v2/billing/contract
    stripe/resources/v2/billing/contract_license_pricing_quantity_change
    stripe/resources/v2/billing/custom_pricing_unit
    stripe/resources/v2/billing/intent
    stripe/resources/v2/billing/intent_action
    stripe/resources/v2/billing/license_fee
    stripe/resources/v2/billing/license_fee_version
    stripe/resources/v2/billing/licensed_item
    stripe/resources/v2/billing/meter_event
    stripe/resources/v2/billing/meter_event_adjustment
    stripe/resources/v2/billing/meter_event_session
    stripe/resources/v2/billing/metered_item
    stripe/resources/v2/billing/one_time_item
    stripe/resources/v2/billing/pricing_plan
    stripe/resources/v2/billing/pricing_plan_component
    stripe/resources/v2/billing/pricing_plan_subscription
    stripe/resources/v2/billing/pricing_plan_version
    stripe/resources/v2/billing/profile
    stripe/resources/v2/billing/rate_card
    stripe/resources/v2/billing/rate_card_custom_pricing_unit_overage_rate
    stripe/resources/v2/billing/rate_card_rate
    stripe/resources/v2/billing/rate_card_subscription
    stripe/resources/v2/billing/rate_card_version
    stripe/resources/v2/billing/service_action
    stripe/resources/v2/commerce/product_catalog_import
    stripe/resources/v2/core/account
    stripe/resources/v2/core/account_evaluation
    stripe/resources/v2/core/account_link
    stripe/resources/v2/core/account_person
    stripe/resources/v2/core/account_person_token
    stripe/resources/v2/core/account_token
    stripe/resources/v2/core/approval_request
    stripe/resources/v2/core/batch_job
    stripe/resources/v2/core/claimable_sandbox
    stripe/resources/v2/core/connection_session
    stripe/resources/v2/core/event
    stripe/resources/v2/core/event_destination
    stripe/resources/v2/core/fee_batch
    stripe/resources/v2/core/fee_entry
    stripe/resources/v2/core/vault/gb_bank_account
    stripe/resources/v2/core/vault/us_bank_account
    stripe/resources/v2/data/analytics/metric_query_result
    stripe/resources/v2/data/reporting/query_run
    stripe/resources/v2/deleted_object
    stripe/resources/v2/extend/workflow
    stripe/resources/v2/extend/workflow_run
    stripe/resources/v2/financial_address_credit_simulation
    stripe/resources/v2/financial_address_generated_microdeposits
    stripe/resources/v2/iam/activity_log
    stripe/resources/v2/iam/api_key
    stripe/resources/v2/money_management/adjustment
    stripe/resources/v2/money_management/currency_conversion
    stripe/resources/v2/money_management/debit_dispute
    stripe/resources/v2/money_management/financial_account
    stripe/resources/v2/money_management/financial_account_statement
    stripe/resources/v2/money_management/financial_address
    stripe/resources/v2/money_management/inbound_transfer
    stripe/resources/v2/money_management/outbound_payment
    stripe/resources/v2/money_management/outbound_payment_quote
    stripe/resources/v2/money_management/outbound_setup_intent
    stripe/resources/v2/money_management/outbound_transfer
    stripe/resources/v2/money_management/payout_method
    stripe/resources/v2/money_management/payout_methods_bank_account_spec
    stripe/resources/v2/money_management/received_credit
    stripe/resources/v2/money_management/received_debit
    stripe/resources/v2/money_management/recipient_verification
    stripe/resources/v2/money_management/transaction
    stripe/resources/v2/money_management/transaction_entry
    stripe/resources/v2/network/business_profile
    stripe/resources/v2/orchestrated_commerce/agreement
    stripe/resources/v2/payments/off_session_payment
    stripe/resources/v2/payments/settlement_allocation_intent
    stripe/resources/v2/payments/settlement_allocation_intent_split
    stripe/resources/v2/reporting/report
    stripe/resources/v2/reporting/report_run
    stripe/resources/v2/signals/account_signal
    stripe/resources/v2/tax/manual_rule
    stripe/resources/webhook_endpoint
    stripe/events/v1_account_application_authorized_event
    stripe/events/v1_account_application_deauthorized_event
    stripe/events/v1_account_external_account_created_event
    stripe/events/v1_account_external_account_deleted_event
    stripe/events/v1_account_external_account_updated_event
    stripe/events/v1_account_signals_including_delinquency_created_event
    stripe/events/v1_account_updated_event
    stripe/events/v1_application_fee_created_event
    stripe/events/v1_application_fee_refund_updated_event
    stripe/events/v1_application_fee_refunded_event
    stripe/events/v1_balance_available_event
    stripe/events/v1_billing_alert_triggered_event
    stripe/events/v1_billing_meter_error_report_triggered_event
    stripe/events/v1_billing_meter_no_meter_found_event
    stripe/events/v1_billing_portal_configuration_created_event
    stripe/events/v1_billing_portal_configuration_updated_event
    stripe/events/v1_billing_portal_session_created_event
    stripe/events/v1_capability_updated_event
    stripe/events/v1_cash_balance_funds_available_event
    stripe/events/v1_charge_captured_event
    stripe/events/v1_charge_dispute_closed_event
    stripe/events/v1_charge_dispute_created_event
    stripe/events/v1_charge_dispute_funds_reinstated_event
    stripe/events/v1_charge_dispute_funds_withdrawn_event
    stripe/events/v1_charge_dispute_updated_event
    stripe/events/v1_charge_expired_event
    stripe/events/v1_charge_failed_event
    stripe/events/v1_charge_pending_event
    stripe/events/v1_charge_refund_updated_event
    stripe/events/v1_charge_refunded_event
    stripe/events/v1_charge_succeeded_event
    stripe/events/v1_charge_updated_event
    stripe/events/v1_checkout_session_async_payment_failed_event
    stripe/events/v1_checkout_session_async_payment_succeeded_event
    stripe/events/v1_checkout_session_completed_event
    stripe/events/v1_checkout_session_expired_event
    stripe/events/v1_climate_order_canceled_event
    stripe/events/v1_climate_order_created_event
    stripe/events/v1_climate_order_delayed_event
    stripe/events/v1_climate_order_delivered_event
    stripe/events/v1_climate_order_product_substituted_event
    stripe/events/v1_climate_product_created_event
    stripe/events/v1_climate_product_pricing_updated_event
    stripe/events/v1_coupon_created_event
    stripe/events/v1_coupon_deleted_event
    stripe/events/v1_coupon_updated_event
    stripe/events/v1_credit_note_created_event
    stripe/events/v1_credit_note_updated_event
    stripe/events/v1_credit_note_voided_event
    stripe/events/v1_customer_cash_balance_transaction_created_event
    stripe/events/v1_customer_created_event
    stripe/events/v1_customer_deleted_event
    stripe/events/v1_customer_subscription_created_event
    stripe/events/v1_customer_subscription_deleted_event
    stripe/events/v1_customer_subscription_paused_event
    stripe/events/v1_customer_subscription_pending_update_applied_event
    stripe/events/v1_customer_subscription_pending_update_expired_event
    stripe/events/v1_customer_subscription_resumed_event
    stripe/events/v1_customer_subscription_trial_will_end_event
    stripe/events/v1_customer_subscription_updated_event
    stripe/events/v1_customer_tax_id_created_event
    stripe/events/v1_customer_tax_id_deleted_event
    stripe/events/v1_customer_tax_id_updated_event
    stripe/events/v1_customer_updated_event
    stripe/events/v1_entitlements_active_entitlement_summary_updated_event
    stripe/events/v1_file_created_event
    stripe/events/v1_financial_connections_account_created_event
    stripe/events/v1_financial_connections_account_deactivated_event
    stripe/events/v1_financial_connections_account_disconnected_event
    stripe/events/v1_financial_connections_account_reactivated_event
    stripe/events/v1_financial_connections_account_refreshed_balance_event
    stripe/events/v1_financial_connections_account_refreshed_ownership_event
    stripe/events/v1_financial_connections_account_refreshed_transactions_event
    stripe/events/v1_identity_verification_session_canceled_event
    stripe/events/v1_identity_verification_session_created_event
    stripe/events/v1_identity_verification_session_processing_event
    stripe/events/v1_identity_verification_session_redacted_event
    stripe/events/v1_identity_verification_session_requires_input_event
    stripe/events/v1_identity_verification_session_verified_event
    stripe/events/v1_invoice_created_event
    stripe/events/v1_invoice_deleted_event
    stripe/events/v1_invoice_finalization_failed_event
    stripe/events/v1_invoice_finalized_event
    stripe/events/v1_invoice_marked_uncollectible_event
    stripe/events/v1_invoice_overdue_event
    stripe/events/v1_invoice_overpaid_event
    stripe/events/v1_invoice_paid_event
    stripe/events/v1_invoice_payment_action_required_event
    stripe/events/v1_invoice_payment_failed_event
    stripe/events/v1_invoice_payment_paid_event
    stripe/events/v1_invoice_payment_succeeded_event
    stripe/events/v1_invoice_sent_event
    stripe/events/v1_invoice_upcoming_event
    stripe/events/v1_invoice_updated_event
    stripe/events/v1_invoice_voided_event
    stripe/events/v1_invoice_will_be_due_event
    stripe/events/v1_invoiceitem_created_event
    stripe/events/v1_invoiceitem_deleted_event
    stripe/events/v1_issuing_authorization_created_event
    stripe/events/v1_issuing_authorization_request_event
    stripe/events/v1_issuing_authorization_updated_event
    stripe/events/v1_issuing_card_created_event
    stripe/events/v1_issuing_card_updated_event
    stripe/events/v1_issuing_cardholder_created_event
    stripe/events/v1_issuing_cardholder_updated_event
    stripe/events/v1_issuing_dispute_closed_event
    stripe/events/v1_issuing_dispute_created_event
    stripe/events/v1_issuing_dispute_funds_reinstated_event
    stripe/events/v1_issuing_dispute_funds_rescinded_event
    stripe/events/v1_issuing_dispute_submitted_event
    stripe/events/v1_issuing_dispute_updated_event
    stripe/events/v1_issuing_personalization_design_activated_event
    stripe/events/v1_issuing_personalization_design_deactivated_event
    stripe/events/v1_issuing_personalization_design_rejected_event
    stripe/events/v1_issuing_personalization_design_updated_event
    stripe/events/v1_issuing_token_created_event
    stripe/events/v1_issuing_token_updated_event
    stripe/events/v1_issuing_transaction_created_event
    stripe/events/v1_issuing_transaction_purchase_details_receipt_updated_event
    stripe/events/v1_issuing_transaction_updated_event
    stripe/events/v1_mandate_updated_event
    stripe/events/v1_payment_intent_amount_capturable_updated_event
    stripe/events/v1_payment_intent_canceled_event
    stripe/events/v1_payment_intent_created_event
    stripe/events/v1_payment_intent_partially_funded_event
    stripe/events/v1_payment_intent_payment_failed_event
    stripe/events/v1_payment_intent_processing_event
    stripe/events/v1_payment_intent_requires_action_event
    stripe/events/v1_payment_intent_succeeded_event
    stripe/events/v1_payment_link_created_event
    stripe/events/v1_payment_link_updated_event
    stripe/events/v1_payment_method_attached_event
    stripe/events/v1_payment_method_automatically_updated_event
    stripe/events/v1_payment_method_detached_event
    stripe/events/v1_payment_method_updated_event
    stripe/events/v1_payout_canceled_event
    stripe/events/v1_payout_created_event
    stripe/events/v1_payout_failed_event
    stripe/events/v1_payout_paid_event
    stripe/events/v1_payout_reconciliation_completed_event
    stripe/events/v1_payout_updated_event
    stripe/events/v1_person_created_event
    stripe/events/v1_person_deleted_event
    stripe/events/v1_person_updated_event
    stripe/events/v1_plan_created_event
    stripe/events/v1_plan_deleted_event
    stripe/events/v1_plan_updated_event
    stripe/events/v1_price_created_event
    stripe/events/v1_price_deleted_event
    stripe/events/v1_price_updated_event
    stripe/events/v1_product_created_event
    stripe/events/v1_product_deleted_event
    stripe/events/v1_product_updated_event
    stripe/events/v1_promotion_code_created_event
    stripe/events/v1_promotion_code_updated_event
    stripe/events/v1_quote_accepted_event
    stripe/events/v1_quote_canceled_event
    stripe/events/v1_quote_created_event
    stripe/events/v1_quote_finalized_event
    stripe/events/v1_radar_early_fraud_warning_created_event
    stripe/events/v1_radar_early_fraud_warning_updated_event
    stripe/events/v1_refund_created_event
    stripe/events/v1_refund_failed_event
    stripe/events/v1_refund_updated_event
    stripe/events/v1_review_closed_event
    stripe/events/v1_review_opened_event
    stripe/events/v1_setup_intent_canceled_event
    stripe/events/v1_setup_intent_created_event
    stripe/events/v1_setup_intent_requires_action_event
    stripe/events/v1_setup_intent_setup_failed_event
    stripe/events/v1_setup_intent_succeeded_event
    stripe/events/v1_sigma_scheduled_query_run_created_event
    stripe/events/v1_source_canceled_event
    stripe/events/v1_source_chargeable_event
    stripe/events/v1_source_failed_event
    stripe/events/v1_source_refund_attributes_required_event
    stripe/events/v1_subscription_schedule_aborted_event
    stripe/events/v1_subscription_schedule_canceled_event
    stripe/events/v1_subscription_schedule_completed_event
    stripe/events/v1_subscription_schedule_created_event
    stripe/events/v1_subscription_schedule_expiring_event
    stripe/events/v1_subscription_schedule_released_event
    stripe/events/v1_subscription_schedule_updated_event
    stripe/events/v1_tax_rate_created_event
    stripe/events/v1_tax_rate_updated_event
    stripe/events/v1_tax_settings_updated_event
    stripe/events/v1_terminal_reader_action_failed_event
    stripe/events/v1_terminal_reader_action_succeeded_event
    stripe/events/v1_terminal_reader_action_updated_event
    stripe/events/v1_test_helpers_test_clock_advancing_event
    stripe/events/v1_test_helpers_test_clock_created_event
    stripe/events/v1_test_helpers_test_clock_deleted_event
    stripe/events/v1_test_helpers_test_clock_internal_failure_event
    stripe/events/v1_test_helpers_test_clock_ready_event
    stripe/events/v1_topup_canceled_event
    stripe/events/v1_topup_created_event
    stripe/events/v1_topup_failed_event
    stripe/events/v1_topup_reversed_event
    stripe/events/v1_topup_succeeded_event
    stripe/events/v1_transfer_created_event
    stripe/events/v1_transfer_reversed_event
    stripe/events/v1_transfer_updated_event
    stripe/events/v2_billing_cadence_billed_event
    stripe/events/v2_billing_cadence_canceled_event
    stripe/events/v2_billing_cadence_created_event
    stripe/events/v2_billing_license_fee_created_event
    stripe/events/v2_billing_license_fee_updated_event
    stripe/events/v2_billing_license_fee_version_created_event
    stripe/events/v2_billing_licensed_item_created_event
    stripe/events/v2_billing_licensed_item_updated_event
    stripe/events/v2_billing_metered_item_created_event
    stripe/events/v2_billing_metered_item_updated_event
    stripe/events/v2_billing_pricing_plan_component_created_event
    stripe/events/v2_billing_pricing_plan_component_updated_event
    stripe/events/v2_billing_pricing_plan_created_event
    stripe/events/v2_billing_pricing_plan_subscription_collection_awaiting_customer_action_event
    stripe/events/v2_billing_pricing_plan_subscription_collection_current_event
    stripe/events/v2_billing_pricing_plan_subscription_collection_past_due_event
    stripe/events/v2_billing_pricing_plan_subscription_collection_paused_event
    stripe/events/v2_billing_pricing_plan_subscription_collection_unpaid_event
    stripe/events/v2_billing_pricing_plan_subscription_servicing_activated_event
    stripe/events/v2_billing_pricing_plan_subscription_servicing_canceled_event
    stripe/events/v2_billing_pricing_plan_subscription_servicing_paused_event
    stripe/events/v2_billing_pricing_plan_updated_event
    stripe/events/v2_billing_pricing_plan_version_created_event
    stripe/events/v2_billing_rate_card_created_event
    stripe/events/v2_billing_rate_card_custom_pricing_unit_overage_rate_created_event
    stripe/events/v2_billing_rate_card_rate_created_event
    stripe/events/v2_billing_rate_card_subscription_activated_event
    stripe/events/v2_billing_rate_card_subscription_canceled_event
    stripe/events/v2_billing_rate_card_subscription_collection_awaiting_customer_action_event
    stripe/events/v2_billing_rate_card_subscription_collection_current_event
    stripe/events/v2_billing_rate_card_subscription_collection_past_due_event
    stripe/events/v2_billing_rate_card_subscription_collection_paused_event
    stripe/events/v2_billing_rate_card_subscription_collection_unpaid_event
    stripe/events/v2_billing_rate_card_subscription_servicing_activated_event
    stripe/events/v2_billing_rate_card_subscription_servicing_canceled_event
    stripe/events/v2_billing_rate_card_subscription_servicing_paused_event
    stripe/events/v2_billing_rate_card_updated_event
    stripe/events/v2_billing_rate_card_version_created_event
    stripe/events/v2_commerce_product_catalog_imports_failed_event
    stripe/events/v2_commerce_product_catalog_imports_processing_event
    stripe/events/v2_commerce_product_catalog_imports_succeeded_event
    stripe/events/v2_commerce_product_catalog_imports_succeeded_with_errors_event
    stripe/events/v2_core_account_closed_event
    stripe/events/v2_core_account_created_event
    stripe/events/v2_core_account_including_configuration_card_creator_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_card_creator_updated_event
    stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_customer_updated_event
    stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_merchant_updated_event
    stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_recipient_updated_event
    stripe/events/v2_core_account_including_configuration_storer_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_storer_updated_event
    stripe/events/v2_core_account_including_defaults_updated_event
    stripe/events/v2_core_account_including_future_requirements_updated_event
    stripe/events/v2_core_account_including_identity_updated_event
    stripe/events/v2_core_account_including_requirements_updated_event
    stripe/events/v2_core_account_link_returned_event
    stripe/events/v2_core_account_person_created_event
    stripe/events/v2_core_account_person_deleted_event
    stripe/events/v2_core_account_person_updated_event
    stripe/events/v2_core_account_signals_fraudulent_website_ready_event
    stripe/events/v2_core_account_updated_event
    stripe/events/v2_core_approval_request_approved_event
    stripe/events/v2_core_approval_request_canceled_event
    stripe/events/v2_core_approval_request_created_event
    stripe/events/v2_core_approval_request_expired_event
    stripe/events/v2_core_approval_request_failed_event
    stripe/events/v2_core_approval_request_rejected_event
    stripe/events/v2_core_approval_request_succeeded_event
    stripe/events/v2_core_batch_job_batch_failed_event
    stripe/events/v2_core_batch_job_canceled_event
    stripe/events/v2_core_batch_job_completed_event
    stripe/events/v2_core_batch_job_created_event
    stripe/events/v2_core_batch_job_ready_for_upload_event
    stripe/events/v2_core_batch_job_timeout_event
    stripe/events/v2_core_batch_job_updated_event
    stripe/events/v2_core_batch_job_upload_timeout_event
    stripe/events/v2_core_batch_job_validating_event
    stripe/events/v2_core_batch_job_validation_failed_event
    stripe/events/v2_core_claimable_sandbox_claimed_event
    stripe/events/v2_core_claimable_sandbox_created_event
    stripe/events/v2_core_claimable_sandbox_expired_event
    stripe/events/v2_core_claimable_sandbox_expiring_event
    stripe/events/v2_core_claimable_sandbox_updated_event
    stripe/events/v2_core_event_destination_ping_event
    stripe/events/v2_core_health_api_error_firing_event
    stripe/events/v2_core_health_api_error_resolved_event
    stripe/events/v2_core_health_api_latency_firing_event
    stripe/events/v2_core_health_api_latency_resolved_event
    stripe/events/v2_core_health_authorization_rate_drop_firing_event
    stripe/events/v2_core_health_authorization_rate_drop_resolved_event
    stripe/events/v2_core_health_elements_error_firing_event
    stripe/events/v2_core_health_elements_error_resolved_event
    stripe/events/v2_core_health_event_generation_failure_resolved_event
    stripe/events/v2_core_health_fraud_rate_increased_event
    stripe/events/v2_core_health_invoice_count_dropped_firing_event
    stripe/events/v2_core_health_invoice_count_dropped_resolved_event
    stripe/events/v2_core_health_issuing_authorization_request_errors_firing_event
    stripe/events/v2_core_health_issuing_authorization_request_errors_resolved_event
    stripe/events/v2_core_health_issuing_authorization_request_timeout_firing_event
    stripe/events/v2_core_health_issuing_authorization_request_timeout_resolved_event
    stripe/events/v2_core_health_meter_event_summaries_delayed_firing_event
    stripe/events/v2_core_health_meter_event_summaries_delayed_resolved_event
    stripe/events/v2_core_health_payment_method_error_firing_event
    stripe/events/v2_core_health_payment_method_error_resolved_event
    stripe/events/v2_core_health_sepa_debit_delayed_firing_event
    stripe/events/v2_core_health_sepa_debit_delayed_resolved_event
    stripe/events/v2_core_health_traffic_volume_drop_firing_event
    stripe/events/v2_core_health_traffic_volume_drop_resolved_event
    stripe/events/v2_core_health_webhook_latency_firing_event
    stripe/events/v2_core_health_webhook_latency_resolved_event
    stripe/events/v2_data_reporting_query_run_created_event
    stripe/events/v2_data_reporting_query_run_failed_event
    stripe/events/v2_data_reporting_query_run_succeeded_event
    stripe/events/v2_data_reporting_query_run_updated_event
    stripe/events/v2_extend_extension_run_failed_event
    stripe/events/v2_extend_workflow_run_failed_event
    stripe/events/v2_extend_workflow_run_started_event
    stripe/events/v2_extend_workflow_run_succeeded_event
    stripe/events/v2_iam_api_key_created_event
    stripe/events/v2_iam_api_key_default_secret_revealed_event
    stripe/events/v2_iam_api_key_expired_event
    stripe/events/v2_iam_api_key_permissions_updated_event
    stripe/events/v2_iam_api_key_rotated_event
    stripe/events/v2_iam_api_key_updated_event
    stripe/events/v2_iam_stripe_access_grant_approved_event
    stripe/events/v2_iam_stripe_access_grant_canceled_event
    stripe/events/v2_iam_stripe_access_grant_denied_event
    stripe/events/v2_iam_stripe_access_grant_removed_event
    stripe/events/v2_iam_stripe_access_grant_requested_event
    stripe/events/v2_iam_stripe_access_grant_updated_event
    stripe/events/v2_money_management_adjustment_created_event
    stripe/events/v2_money_management_financial_account_created_event
    stripe/events/v2_money_management_financial_account_statement_created_event
    stripe/events/v2_money_management_financial_account_statement_restated_event
    stripe/events/v2_money_management_financial_account_updated_event
    stripe/events/v2_money_management_financial_address_activated_event
    stripe/events/v2_money_management_financial_address_failed_event
    stripe/events/v2_money_management_inbound_transfer_available_event
    stripe/events/v2_money_management_inbound_transfer_bank_debit_failed_event
    stripe/events/v2_money_management_inbound_transfer_bank_debit_processing_event
    stripe/events/v2_money_management_inbound_transfer_bank_debit_queued_event
    stripe/events/v2_money_management_inbound_transfer_bank_debit_returned_event
    stripe/events/v2_money_management_inbound_transfer_bank_debit_succeeded_event
    stripe/events/v2_money_management_outbound_payment_canceled_event
    stripe/events/v2_money_management_outbound_payment_created_event
    stripe/events/v2_money_management_outbound_payment_failed_event
    stripe/events/v2_money_management_outbound_payment_posted_event
    stripe/events/v2_money_management_outbound_payment_returned_event
    stripe/events/v2_money_management_outbound_payment_updated_event
    stripe/events/v2_money_management_outbound_transfer_canceled_event
    stripe/events/v2_money_management_outbound_transfer_created_event
    stripe/events/v2_money_management_outbound_transfer_failed_event
    stripe/events/v2_money_management_outbound_transfer_posted_event
    stripe/events/v2_money_management_outbound_transfer_returned_event
    stripe/events/v2_money_management_outbound_transfer_updated_event
    stripe/events/v2_money_management_payout_method_created_event
    stripe/events/v2_money_management_payout_method_updated_event
    stripe/events/v2_money_management_received_credit_available_event
    stripe/events/v2_money_management_received_credit_failed_event
    stripe/events/v2_money_management_received_credit_returned_event
    stripe/events/v2_money_management_received_credit_succeeded_event
    stripe/events/v2_money_management_received_debit_canceled_event
    stripe/events/v2_money_management_received_debit_failed_event
    stripe/events/v2_money_management_received_debit_pending_event
    stripe/events/v2_money_management_received_debit_succeeded_event
    stripe/events/v2_money_management_received_debit_updated_event
    stripe/events/v2_money_management_recipient_verification_created_event
    stripe/events/v2_money_management_recipient_verification_updated_event
    stripe/events/v2_money_management_transaction_created_event
    stripe/events/v2_money_management_transaction_updated_event
    stripe/events/v2_orchestrated_commerce_agreement_confirmed_event
    stripe/events/v2_orchestrated_commerce_agreement_created_event
    stripe/events/v2_orchestrated_commerce_agreement_partially_confirmed_event
    stripe/events/v2_orchestrated_commerce_agreement_terminated_event
    stripe/events/v2_payments_off_session_payment_attempt_failed_event
    stripe/events/v2_payments_off_session_payment_attempt_started_event
    stripe/events/v2_payments_off_session_payment_authorization_attempt_failed_event
    stripe/events/v2_payments_off_session_payment_authorization_attempt_started_event
    stripe/events/v2_payments_off_session_payment_canceled_event
    stripe/events/v2_payments_off_session_payment_created_event
    stripe/events/v2_payments_off_session_payment_failed_event
    stripe/events/v2_payments_off_session_payment_paused_event
    stripe/events/v2_payments_off_session_payment_requires_capture_event
    stripe/events/v2_payments_off_session_payment_resumed_event
    stripe/events/v2_payments_off_session_payment_succeeded_event
    stripe/events/v2_payments_settlement_allocation_intent_canceled_event
    stripe/events/v2_payments_settlement_allocation_intent_created_event
    stripe/events/v2_payments_settlement_allocation_intent_errored_event
    stripe/events/v2_payments_settlement_allocation_intent_funds_not_received_event
    stripe/events/v2_payments_settlement_allocation_intent_matched_event
    stripe/events/v2_payments_settlement_allocation_intent_not_found_event
    stripe/events/v2_payments_settlement_allocation_intent_settled_event
    stripe/events/v2_payments_settlement_allocation_intent_split_canceled_event
    stripe/events/v2_payments_settlement_allocation_intent_split_created_event
    stripe/events/v2_payments_settlement_allocation_intent_split_settled_event
    stripe/events/v2_payments_settlement_allocation_intent_submitted_event
    stripe/events/v2_reporting_report_run_created_event
    stripe/events/v2_reporting_report_run_failed_event
    stripe/events/v2_reporting_report_run_succeeded_event
    stripe/events/v2_reporting_report_run_updated_event
    stripe/events/v2_signals_account_signal_fraudulent_merchant_ready_event
    stripe/events/v2_signals_account_signal_merchant_delinquency_ready_event
  ].freeze
  # rubocop:enable Metrics/CollectionLiteralLength
end
