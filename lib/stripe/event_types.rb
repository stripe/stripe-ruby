# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.v2_event_types_to_classes
      {
        # v2 event types: The beginning of the section generated from our OpenAPI spec
        Events::V1AccountApplicationAuthorizedEvent.lookup_type =>
        Events::V1AccountApplicationAuthorizedEvent,
        Events::V1AccountApplicationDeauthorizedEvent.lookup_type =>
        Events::V1AccountApplicationDeauthorizedEvent,
        Events::V1AccountExternalAccountCreatedEvent.lookup_type =>
        Events::V1AccountExternalAccountCreatedEvent,
        Events::V1AccountExternalAccountDeletedEvent.lookup_type =>
        Events::V1AccountExternalAccountDeletedEvent,
        Events::V1AccountExternalAccountUpdatedEvent.lookup_type =>
        Events::V1AccountExternalAccountUpdatedEvent,
        Events::V1AccountUpdatedEvent.lookup_type => Events::V1AccountUpdatedEvent,
        Events::V1ApplicationFeeCreatedEvent.lookup_type => Events::V1ApplicationFeeCreatedEvent,
        Events::V1ApplicationFeeRefundUpdatedEvent.lookup_type =>
        Events::V1ApplicationFeeRefundUpdatedEvent,
        Events::V1ApplicationFeeRefundedEvent.lookup_type => Events::V1ApplicationFeeRefundedEvent,
        Events::V1BalanceAvailableEvent.lookup_type => Events::V1BalanceAvailableEvent,
        Events::V1BalanceSettingsUpdatedEvent.lookup_type => Events::V1BalanceSettingsUpdatedEvent,
        Events::V1BillingAlertTriggeredEvent.lookup_type => Events::V1BillingAlertTriggeredEvent,
        Events::V1BillingCreditBalanceTransactionCreatedEvent.lookup_type =>
        Events::V1BillingCreditBalanceTransactionCreatedEvent,
        Events::V1BillingCreditGrantCreatedEvent.lookup_type => Events::V1BillingCreditGrantCreatedEvent,
        Events::V1BillingCreditGrantUpdatedEvent.lookup_type => Events::V1BillingCreditGrantUpdatedEvent,
        Events::V1BillingMeterCreatedEvent.lookup_type => Events::V1BillingMeterCreatedEvent,
        Events::V1BillingMeterDeactivatedEvent.lookup_type => Events::V1BillingMeterDeactivatedEvent,
        Events::V1BillingMeterErrorReportTriggeredEvent.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEvent,
        Events::V1BillingMeterNoMeterFoundEvent.lookup_type => Events::V1BillingMeterNoMeterFoundEvent,
        Events::V1BillingMeterReactivatedEvent.lookup_type => Events::V1BillingMeterReactivatedEvent,
        Events::V1BillingMeterUpdatedEvent.lookup_type => Events::V1BillingMeterUpdatedEvent,
        Events::V1BillingPortalConfigurationCreatedEvent.lookup_type =>
        Events::V1BillingPortalConfigurationCreatedEvent,
        Events::V1BillingPortalConfigurationUpdatedEvent.lookup_type =>
        Events::V1BillingPortalConfigurationUpdatedEvent,
        Events::V1BillingPortalSessionCreatedEvent.lookup_type =>
        Events::V1BillingPortalSessionCreatedEvent,
        Events::V1CapabilityUpdatedEvent.lookup_type => Events::V1CapabilityUpdatedEvent,
        Events::V1CashBalanceFundsAvailableEvent.lookup_type => Events::V1CashBalanceFundsAvailableEvent,
        Events::V1ChargeCapturedEvent.lookup_type => Events::V1ChargeCapturedEvent,
        Events::V1ChargeDisputeClosedEvent.lookup_type => Events::V1ChargeDisputeClosedEvent,
        Events::V1ChargeDisputeCreatedEvent.lookup_type => Events::V1ChargeDisputeCreatedEvent,
        Events::V1ChargeDisputeFundsReinstatedEvent.lookup_type =>
        Events::V1ChargeDisputeFundsReinstatedEvent,
        Events::V1ChargeDisputeFundsWithdrawnEvent.lookup_type =>
        Events::V1ChargeDisputeFundsWithdrawnEvent,
        Events::V1ChargeDisputeUpdatedEvent.lookup_type => Events::V1ChargeDisputeUpdatedEvent,
        Events::V1ChargeExpiredEvent.lookup_type => Events::V1ChargeExpiredEvent,
        Events::V1ChargeFailedEvent.lookup_type => Events::V1ChargeFailedEvent,
        Events::V1ChargePendingEvent.lookup_type => Events::V1ChargePendingEvent,
        Events::V1ChargeRefundUpdatedEvent.lookup_type => Events::V1ChargeRefundUpdatedEvent,
        Events::V1ChargeRefundedEvent.lookup_type => Events::V1ChargeRefundedEvent,
        Events::V1ChargeSucceededEvent.lookup_type => Events::V1ChargeSucceededEvent,
        Events::V1ChargeUpdatedEvent.lookup_type => Events::V1ChargeUpdatedEvent,
        Events::V1CheckoutSessionAsyncPaymentFailedEvent.lookup_type =>
        Events::V1CheckoutSessionAsyncPaymentFailedEvent,
        Events::V1CheckoutSessionAsyncPaymentSucceededEvent.lookup_type =>
        Events::V1CheckoutSessionAsyncPaymentSucceededEvent,
        Events::V1CheckoutSessionCompletedEvent.lookup_type => Events::V1CheckoutSessionCompletedEvent,
        Events::V1CheckoutSessionExpiredEvent.lookup_type => Events::V1CheckoutSessionExpiredEvent,
        Events::V1ClimateOrderCanceledEvent.lookup_type => Events::V1ClimateOrderCanceledEvent,
        Events::V1ClimateOrderCreatedEvent.lookup_type => Events::V1ClimateOrderCreatedEvent,
        Events::V1ClimateOrderDelayedEvent.lookup_type => Events::V1ClimateOrderDelayedEvent,
        Events::V1ClimateOrderDeliveredEvent.lookup_type => Events::V1ClimateOrderDeliveredEvent,
        Events::V1ClimateOrderProductSubstitutedEvent.lookup_type =>
        Events::V1ClimateOrderProductSubstitutedEvent,
        Events::V1ClimateProductCreatedEvent.lookup_type => Events::V1ClimateProductCreatedEvent,
        Events::V1ClimateProductPricingUpdatedEvent.lookup_type =>
        Events::V1ClimateProductPricingUpdatedEvent,
        Events::V1CouponCreatedEvent.lookup_type => Events::V1CouponCreatedEvent,
        Events::V1CouponDeletedEvent.lookup_type => Events::V1CouponDeletedEvent,
        Events::V1CouponUpdatedEvent.lookup_type => Events::V1CouponUpdatedEvent,
        Events::V1CreditNoteCreatedEvent.lookup_type => Events::V1CreditNoteCreatedEvent,
        Events::V1CreditNoteUpdatedEvent.lookup_type => Events::V1CreditNoteUpdatedEvent,
        Events::V1CreditNoteVoidedEvent.lookup_type => Events::V1CreditNoteVoidedEvent,
        Events::V1CustomerCashBalanceTransactionCreatedEvent.lookup_type =>
        Events::V1CustomerCashBalanceTransactionCreatedEvent,
        Events::V1CustomerCreatedEvent.lookup_type => Events::V1CustomerCreatedEvent,
        Events::V1CustomerDeletedEvent.lookup_type => Events::V1CustomerDeletedEvent,
        Events::V1CustomerDiscountCreatedEvent.lookup_type => Events::V1CustomerDiscountCreatedEvent,
        Events::V1CustomerDiscountDeletedEvent.lookup_type => Events::V1CustomerDiscountDeletedEvent,
        Events::V1CustomerDiscountUpdatedEvent.lookup_type => Events::V1CustomerDiscountUpdatedEvent,
        Events::V1CustomerSubscriptionCreatedEvent.lookup_type =>
        Events::V1CustomerSubscriptionCreatedEvent,
        Events::V1CustomerSubscriptionDeletedEvent.lookup_type =>
        Events::V1CustomerSubscriptionDeletedEvent,
        Events::V1CustomerSubscriptionPausedEvent.lookup_type => Events::V1CustomerSubscriptionPausedEvent,
        Events::V1CustomerSubscriptionPendingUpdateAppliedEvent.lookup_type =>
        Events::V1CustomerSubscriptionPendingUpdateAppliedEvent,
        Events::V1CustomerSubscriptionPendingUpdateExpiredEvent.lookup_type =>
        Events::V1CustomerSubscriptionPendingUpdateExpiredEvent,
        Events::V1CustomerSubscriptionResumedEvent.lookup_type =>
        Events::V1CustomerSubscriptionResumedEvent,
        Events::V1CustomerSubscriptionTrialWillEndEvent.lookup_type =>
        Events::V1CustomerSubscriptionTrialWillEndEvent,
        Events::V1CustomerSubscriptionUpdatedEvent.lookup_type =>
        Events::V1CustomerSubscriptionUpdatedEvent,
        Events::V1CustomerTaxIdCreatedEvent.lookup_type => Events::V1CustomerTaxIdCreatedEvent,
        Events::V1CustomerTaxIdDeletedEvent.lookup_type => Events::V1CustomerTaxIdDeletedEvent,
        Events::V1CustomerTaxIdUpdatedEvent.lookup_type => Events::V1CustomerTaxIdUpdatedEvent,
        Events::V1CustomerUpdatedEvent.lookup_type => Events::V1CustomerUpdatedEvent,
        Events::V1EntitlementsActiveEntitlementSummaryUpdatedEvent.lookup_type =>
        Events::V1EntitlementsActiveEntitlementSummaryUpdatedEvent,
        Events::V1FileCreatedEvent.lookup_type => Events::V1FileCreatedEvent,
        Events::V1FinancialConnectionsAccountAccountNumbersUpdatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountAccountNumbersUpdatedEvent,
        Events::V1FinancialConnectionsAccountCreatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountCreatedEvent,
        Events::V1FinancialConnectionsAccountDeactivatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountDeactivatedEvent,
        Events::V1FinancialConnectionsAccountDisconnectedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountDisconnectedEvent,
        Events::V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEvent,
        Events::V1FinancialConnectionsAccountReactivatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountReactivatedEvent,
        Events::V1FinancialConnectionsAccountRefreshedBalanceEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedBalanceEvent,
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEvent,
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEvent,
        Events::V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEvent,
        Events::V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEvent,
        Events::V1FinancialConnectionsAccountUpcomingDeactivationEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountUpcomingDeactivationEvent,
        Events::V1IdentityVerificationSessionCanceledEvent.lookup_type =>
        Events::V1IdentityVerificationSessionCanceledEvent,
        Events::V1IdentityVerificationSessionCreatedEvent.lookup_type =>
        Events::V1IdentityVerificationSessionCreatedEvent,
        Events::V1IdentityVerificationSessionProcessingEvent.lookup_type =>
        Events::V1IdentityVerificationSessionProcessingEvent,
        Events::V1IdentityVerificationSessionRedactedEvent.lookup_type =>
        Events::V1IdentityVerificationSessionRedactedEvent,
        Events::V1IdentityVerificationSessionRequiresInputEvent.lookup_type =>
        Events::V1IdentityVerificationSessionRequiresInputEvent,
        Events::V1IdentityVerificationSessionVerifiedEvent.lookup_type =>
        Events::V1IdentityVerificationSessionVerifiedEvent,
        Events::V1InvoiceCreatedEvent.lookup_type => Events::V1InvoiceCreatedEvent,
        Events::V1InvoiceDeletedEvent.lookup_type => Events::V1InvoiceDeletedEvent,
        Events::V1InvoiceFinalizationFailedEvent.lookup_type => Events::V1InvoiceFinalizationFailedEvent,
        Events::V1InvoiceFinalizedEvent.lookup_type => Events::V1InvoiceFinalizedEvent,
        Events::V1InvoiceMarkedUncollectibleEvent.lookup_type => Events::V1InvoiceMarkedUncollectibleEvent,
        Events::V1InvoiceOverdueEvent.lookup_type => Events::V1InvoiceOverdueEvent,
        Events::V1InvoiceOverpaidEvent.lookup_type => Events::V1InvoiceOverpaidEvent,
        Events::V1InvoicePaidEvent.lookup_type => Events::V1InvoicePaidEvent,
        Events::V1InvoicePaymentActionRequiredEvent.lookup_type =>
        Events::V1InvoicePaymentActionRequiredEvent,
        Events::V1InvoicePaymentAttemptRequiredEvent.lookup_type =>
        Events::V1InvoicePaymentAttemptRequiredEvent,
        Events::V1InvoicePaymentFailedEvent.lookup_type => Events::V1InvoicePaymentFailedEvent,
        Events::V1InvoicePaymentPaidEvent.lookup_type => Events::V1InvoicePaymentPaidEvent,
        Events::V1InvoicePaymentSucceededEvent.lookup_type => Events::V1InvoicePaymentSucceededEvent,
        Events::V1InvoiceSentEvent.lookup_type => Events::V1InvoiceSentEvent,
        Events::V1InvoiceUpcomingEvent.lookup_type => Events::V1InvoiceUpcomingEvent,
        Events::V1InvoiceUpdatedEvent.lookup_type => Events::V1InvoiceUpdatedEvent,
        Events::V1InvoiceVoidedEvent.lookup_type => Events::V1InvoiceVoidedEvent,
        Events::V1InvoiceWillBeDueEvent.lookup_type => Events::V1InvoiceWillBeDueEvent,
        Events::V1InvoiceitemCreatedEvent.lookup_type => Events::V1InvoiceitemCreatedEvent,
        Events::V1InvoiceitemDeletedEvent.lookup_type => Events::V1InvoiceitemDeletedEvent,
        Events::V1IssuingAuthorizationCreatedEvent.lookup_type =>
        Events::V1IssuingAuthorizationCreatedEvent,
        Events::V1IssuingAuthorizationRequestEvent.lookup_type =>
        Events::V1IssuingAuthorizationRequestEvent,
        Events::V1IssuingAuthorizationUpdatedEvent.lookup_type =>
        Events::V1IssuingAuthorizationUpdatedEvent,
        Events::V1IssuingCardCreatedEvent.lookup_type => Events::V1IssuingCardCreatedEvent,
        Events::V1IssuingCardUpdatedEvent.lookup_type => Events::V1IssuingCardUpdatedEvent,
        Events::V1IssuingCardholderCreatedEvent.lookup_type => Events::V1IssuingCardholderCreatedEvent,
        Events::V1IssuingCardholderUpdatedEvent.lookup_type => Events::V1IssuingCardholderUpdatedEvent,
        Events::V1IssuingDisputeClosedEvent.lookup_type => Events::V1IssuingDisputeClosedEvent,
        Events::V1IssuingDisputeCreatedEvent.lookup_type => Events::V1IssuingDisputeCreatedEvent,
        Events::V1IssuingDisputeFundsReinstatedEvent.lookup_type =>
        Events::V1IssuingDisputeFundsReinstatedEvent,
        Events::V1IssuingDisputeFundsRescindedEvent.lookup_type =>
        Events::V1IssuingDisputeFundsRescindedEvent,
        Events::V1IssuingDisputeSubmittedEvent.lookup_type => Events::V1IssuingDisputeSubmittedEvent,
        Events::V1IssuingDisputeUpdatedEvent.lookup_type => Events::V1IssuingDisputeUpdatedEvent,
        Events::V1IssuingPersonalizationDesignActivatedEvent.lookup_type =>
        Events::V1IssuingPersonalizationDesignActivatedEvent,
        Events::V1IssuingPersonalizationDesignDeactivatedEvent.lookup_type =>
        Events::V1IssuingPersonalizationDesignDeactivatedEvent,
        Events::V1IssuingPersonalizationDesignRejectedEvent.lookup_type =>
        Events::V1IssuingPersonalizationDesignRejectedEvent,
        Events::V1IssuingPersonalizationDesignUpdatedEvent.lookup_type =>
        Events::V1IssuingPersonalizationDesignUpdatedEvent,
        Events::V1IssuingTokenCreatedEvent.lookup_type => Events::V1IssuingTokenCreatedEvent,
        Events::V1IssuingTokenUpdatedEvent.lookup_type => Events::V1IssuingTokenUpdatedEvent,
        Events::V1IssuingTransactionCreatedEvent.lookup_type => Events::V1IssuingTransactionCreatedEvent,
        Events::V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent.lookup_type =>
        Events::V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent,
        Events::V1IssuingTransactionUpdatedEvent.lookup_type => Events::V1IssuingTransactionUpdatedEvent,
        Events::V1MandateUpdatedEvent.lookup_type => Events::V1MandateUpdatedEvent,
        Events::V1PaymentIntentAmountCapturableUpdatedEvent.lookup_type =>
        Events::V1PaymentIntentAmountCapturableUpdatedEvent,
        Events::V1PaymentIntentCanceledEvent.lookup_type => Events::V1PaymentIntentCanceledEvent,
        Events::V1PaymentIntentCreatedEvent.lookup_type => Events::V1PaymentIntentCreatedEvent,
        Events::V1PaymentIntentPartiallyFundedEvent.lookup_type =>
        Events::V1PaymentIntentPartiallyFundedEvent,
        Events::V1PaymentIntentPaymentFailedEvent.lookup_type => Events::V1PaymentIntentPaymentFailedEvent,
        Events::V1PaymentIntentProcessingEvent.lookup_type => Events::V1PaymentIntentProcessingEvent,
        Events::V1PaymentIntentRequiresActionEvent.lookup_type =>
        Events::V1PaymentIntentRequiresActionEvent,
        Events::V1PaymentIntentSucceededEvent.lookup_type => Events::V1PaymentIntentSucceededEvent,
        Events::V1PaymentLinkCreatedEvent.lookup_type => Events::V1PaymentLinkCreatedEvent,
        Events::V1PaymentLinkUpdatedEvent.lookup_type => Events::V1PaymentLinkUpdatedEvent,
        Events::V1PaymentMethodAttachedEvent.lookup_type => Events::V1PaymentMethodAttachedEvent,
        Events::V1PaymentMethodAutomaticallyUpdatedEvent.lookup_type =>
        Events::V1PaymentMethodAutomaticallyUpdatedEvent,
        Events::V1PaymentMethodDetachedEvent.lookup_type => Events::V1PaymentMethodDetachedEvent,
        Events::V1PaymentMethodUpdatedEvent.lookup_type => Events::V1PaymentMethodUpdatedEvent,
        Events::V1PayoutCanceledEvent.lookup_type => Events::V1PayoutCanceledEvent,
        Events::V1PayoutCreatedEvent.lookup_type => Events::V1PayoutCreatedEvent,
        Events::V1PayoutFailedEvent.lookup_type => Events::V1PayoutFailedEvent,
        Events::V1PayoutPaidEvent.lookup_type => Events::V1PayoutPaidEvent,
        Events::V1PayoutReconciliationCompletedEvent.lookup_type =>
        Events::V1PayoutReconciliationCompletedEvent,
        Events::V1PayoutUpdatedEvent.lookup_type => Events::V1PayoutUpdatedEvent,
        Events::V1PersonCreatedEvent.lookup_type => Events::V1PersonCreatedEvent,
        Events::V1PersonDeletedEvent.lookup_type => Events::V1PersonDeletedEvent,
        Events::V1PersonUpdatedEvent.lookup_type => Events::V1PersonUpdatedEvent,
        Events::V1PlanCreatedEvent.lookup_type => Events::V1PlanCreatedEvent,
        Events::V1PlanDeletedEvent.lookup_type => Events::V1PlanDeletedEvent,
        Events::V1PlanUpdatedEvent.lookup_type => Events::V1PlanUpdatedEvent,
        Events::V1PriceCreatedEvent.lookup_type => Events::V1PriceCreatedEvent,
        Events::V1PriceDeletedEvent.lookup_type => Events::V1PriceDeletedEvent,
        Events::V1PriceUpdatedEvent.lookup_type => Events::V1PriceUpdatedEvent,
        Events::V1ProductCreatedEvent.lookup_type => Events::V1ProductCreatedEvent,
        Events::V1ProductDeletedEvent.lookup_type => Events::V1ProductDeletedEvent,
        Events::V1ProductUpdatedEvent.lookup_type => Events::V1ProductUpdatedEvent,
        Events::V1PromotionCodeCreatedEvent.lookup_type => Events::V1PromotionCodeCreatedEvent,
        Events::V1PromotionCodeUpdatedEvent.lookup_type => Events::V1PromotionCodeUpdatedEvent,
        Events::V1QuoteAcceptedEvent.lookup_type => Events::V1QuoteAcceptedEvent,
        Events::V1QuoteCanceledEvent.lookup_type => Events::V1QuoteCanceledEvent,
        Events::V1QuoteCreatedEvent.lookup_type => Events::V1QuoteCreatedEvent,
        Events::V1QuoteFinalizedEvent.lookup_type => Events::V1QuoteFinalizedEvent,
        Events::V1RadarEarlyFraudWarningCreatedEvent.lookup_type =>
        Events::V1RadarEarlyFraudWarningCreatedEvent,
        Events::V1RadarEarlyFraudWarningUpdatedEvent.lookup_type =>
        Events::V1RadarEarlyFraudWarningUpdatedEvent,
        Events::V1RefundCreatedEvent.lookup_type => Events::V1RefundCreatedEvent,
        Events::V1RefundFailedEvent.lookup_type => Events::V1RefundFailedEvent,
        Events::V1RefundUpdatedEvent.lookup_type => Events::V1RefundUpdatedEvent,
        Events::V1ReviewClosedEvent.lookup_type => Events::V1ReviewClosedEvent,
        Events::V1ReviewOpenedEvent.lookup_type => Events::V1ReviewOpenedEvent,
        Events::V1SetupIntentCanceledEvent.lookup_type => Events::V1SetupIntentCanceledEvent,
        Events::V1SetupIntentCreatedEvent.lookup_type => Events::V1SetupIntentCreatedEvent,
        Events::V1SetupIntentRequiresActionEvent.lookup_type => Events::V1SetupIntentRequiresActionEvent,
        Events::V1SetupIntentSetupFailedEvent.lookup_type => Events::V1SetupIntentSetupFailedEvent,
        Events::V1SetupIntentSucceededEvent.lookup_type => Events::V1SetupIntentSucceededEvent,
        Events::V1SigmaScheduledQueryRunCreatedEvent.lookup_type =>
        Events::V1SigmaScheduledQueryRunCreatedEvent,
        Events::V1SourceCanceledEvent.lookup_type => Events::V1SourceCanceledEvent,
        Events::V1SourceChargeableEvent.lookup_type => Events::V1SourceChargeableEvent,
        Events::V1SourceFailedEvent.lookup_type => Events::V1SourceFailedEvent,
        Events::V1SourceRefundAttributesRequiredEvent.lookup_type =>
        Events::V1SourceRefundAttributesRequiredEvent,
        Events::V1SubscriptionScheduleAbortedEvent.lookup_type =>
        Events::V1SubscriptionScheduleAbortedEvent,
        Events::V1SubscriptionScheduleCanceledEvent.lookup_type =>
        Events::V1SubscriptionScheduleCanceledEvent,
        Events::V1SubscriptionScheduleCompletedEvent.lookup_type =>
        Events::V1SubscriptionScheduleCompletedEvent,
        Events::V1SubscriptionScheduleCreatedEvent.lookup_type =>
        Events::V1SubscriptionScheduleCreatedEvent,
        Events::V1SubscriptionScheduleExpiringEvent.lookup_type =>
        Events::V1SubscriptionScheduleExpiringEvent,
        Events::V1SubscriptionScheduleReleasedEvent.lookup_type =>
        Events::V1SubscriptionScheduleReleasedEvent,
        Events::V1SubscriptionScheduleUpdatedEvent.lookup_type =>
        Events::V1SubscriptionScheduleUpdatedEvent,
        Events::V1TaxRateCreatedEvent.lookup_type => Events::V1TaxRateCreatedEvent,
        Events::V1TaxRateUpdatedEvent.lookup_type => Events::V1TaxRateUpdatedEvent,
        Events::V1TaxSettingsUpdatedEvent.lookup_type => Events::V1TaxSettingsUpdatedEvent,
        Events::V1TerminalReaderActionFailedEvent.lookup_type => Events::V1TerminalReaderActionFailedEvent,
        Events::V1TerminalReaderActionSucceededEvent.lookup_type =>
        Events::V1TerminalReaderActionSucceededEvent,
        Events::V1TerminalReaderActionUpdatedEvent.lookup_type =>
        Events::V1TerminalReaderActionUpdatedEvent,
        Events::V1TestHelpersTestClockAdvancingEvent.lookup_type =>
        Events::V1TestHelpersTestClockAdvancingEvent,
        Events::V1TestHelpersTestClockCreatedEvent.lookup_type =>
        Events::V1TestHelpersTestClockCreatedEvent,
        Events::V1TestHelpersTestClockDeletedEvent.lookup_type =>
        Events::V1TestHelpersTestClockDeletedEvent,
        Events::V1TestHelpersTestClockInternalFailureEvent.lookup_type =>
        Events::V1TestHelpersTestClockInternalFailureEvent,
        Events::V1TestHelpersTestClockReadyEvent.lookup_type => Events::V1TestHelpersTestClockReadyEvent,
        Events::V1TopupCanceledEvent.lookup_type => Events::V1TopupCanceledEvent,
        Events::V1TopupCreatedEvent.lookup_type => Events::V1TopupCreatedEvent,
        Events::V1TopupFailedEvent.lookup_type => Events::V1TopupFailedEvent,
        Events::V1TopupReversedEvent.lookup_type => Events::V1TopupReversedEvent,
        Events::V1TopupSucceededEvent.lookup_type => Events::V1TopupSucceededEvent,
        Events::V1TransferCreatedEvent.lookup_type => Events::V1TransferCreatedEvent,
        Events::V1TransferReversedEvent.lookup_type => Events::V1TransferReversedEvent,
        Events::V1TransferUpdatedEvent.lookup_type => Events::V1TransferUpdatedEvent,
        Events::V2CommerceProductCatalogImportsFailedEvent.lookup_type =>
        Events::V2CommerceProductCatalogImportsFailedEvent,
        Events::V2CommerceProductCatalogImportsProcessingEvent.lookup_type =>
        Events::V2CommerceProductCatalogImportsProcessingEvent,
        Events::V2CommerceProductCatalogImportsSucceededEvent.lookup_type =>
        Events::V2CommerceProductCatalogImportsSucceededEvent,
        Events::V2CommerceProductCatalogImportsSucceededWithErrorsEvent.lookup_type =>
        Events::V2CommerceProductCatalogImportsSucceededWithErrorsEvent,
        Events::V2CoreAccountClosedEvent.lookup_type => Events::V2CoreAccountClosedEvent,
        Events::V2CoreAccountCreatedEvent.lookup_type => Events::V2CoreAccountCreatedEvent,
        Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEvent,
        Events::V2CoreAccountIncludingDefaultsUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingDefaultsUpdatedEvent,
        Events::V2CoreAccountIncludingFutureRequirementsUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingFutureRequirementsUpdatedEvent,
        Events::V2CoreAccountIncludingIdentityUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingIdentityUpdatedEvent,
        Events::V2CoreAccountIncludingRequirementsUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingRequirementsUpdatedEvent,
        Events::V2CoreAccountLinkReturnedEvent.lookup_type => Events::V2CoreAccountLinkReturnedEvent,
        Events::V2CoreAccountPersonCreatedEvent.lookup_type => Events::V2CoreAccountPersonCreatedEvent,
        Events::V2CoreAccountPersonDeletedEvent.lookup_type => Events::V2CoreAccountPersonDeletedEvent,
        Events::V2CoreAccountPersonUpdatedEvent.lookup_type => Events::V2CoreAccountPersonUpdatedEvent,
        Events::V2CoreAccountUpdatedEvent.lookup_type => Events::V2CoreAccountUpdatedEvent,
        Events::V2CoreApprovalRequestApprovedEvent.lookup_type =>
        Events::V2CoreApprovalRequestApprovedEvent,
        Events::V2CoreApprovalRequestCanceledEvent.lookup_type =>
        Events::V2CoreApprovalRequestCanceledEvent,
        Events::V2CoreApprovalRequestCreatedEvent.lookup_type => Events::V2CoreApprovalRequestCreatedEvent,
        Events::V2CoreApprovalRequestExpiredEvent.lookup_type => Events::V2CoreApprovalRequestExpiredEvent,
        Events::V2CoreApprovalRequestFailedEvent.lookup_type => Events::V2CoreApprovalRequestFailedEvent,
        Events::V2CoreApprovalRequestRejectedEvent.lookup_type =>
        Events::V2CoreApprovalRequestRejectedEvent,
        Events::V2CoreApprovalRequestSucceededEvent.lookup_type =>
        Events::V2CoreApprovalRequestSucceededEvent,
        Events::V2CoreBatchJobBatchFailedEvent.lookup_type => Events::V2CoreBatchJobBatchFailedEvent,
        Events::V2CoreBatchJobCanceledEvent.lookup_type => Events::V2CoreBatchJobCanceledEvent,
        Events::V2CoreBatchJobCompletedEvent.lookup_type => Events::V2CoreBatchJobCompletedEvent,
        Events::V2CoreBatchJobCreatedEvent.lookup_type => Events::V2CoreBatchJobCreatedEvent,
        Events::V2CoreBatchJobReadyForUploadEvent.lookup_type => Events::V2CoreBatchJobReadyForUploadEvent,
        Events::V2CoreBatchJobTimeoutEvent.lookup_type => Events::V2CoreBatchJobTimeoutEvent,
        Events::V2CoreBatchJobUpdatedEvent.lookup_type => Events::V2CoreBatchJobUpdatedEvent,
        Events::V2CoreBatchJobUploadTimeoutEvent.lookup_type => Events::V2CoreBatchJobUploadTimeoutEvent,
        Events::V2CoreBatchJobValidatingEvent.lookup_type => Events::V2CoreBatchJobValidatingEvent,
        Events::V2CoreBatchJobValidationFailedEvent.lookup_type =>
        Events::V2CoreBatchJobValidationFailedEvent,
        Events::V2CoreEventDestinationPingEvent.lookup_type => Events::V2CoreEventDestinationPingEvent,
        Events::V2CoreHealthEventGenerationFailureResolvedEvent.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEvent,
        Events::V2DataReportingQueryRunCreatedEvent.lookup_type =>
        Events::V2DataReportingQueryRunCreatedEvent,
        Events::V2DataReportingQueryRunFailedEvent.lookup_type =>
        Events::V2DataReportingQueryRunFailedEvent,
        Events::V2DataReportingQueryRunSucceededEvent.lookup_type =>
        Events::V2DataReportingQueryRunSucceededEvent,
        Events::V2DataReportingQueryRunUpdatedEvent.lookup_type =>
        Events::V2DataReportingQueryRunUpdatedEvent,
        Events::V2ExtendWorkflowRunFailedEvent.lookup_type => Events::V2ExtendWorkflowRunFailedEvent,
        Events::V2ExtendWorkflowRunStartedEvent.lookup_type => Events::V2ExtendWorkflowRunStartedEvent,
        Events::V2ExtendWorkflowRunSucceededEvent.lookup_type => Events::V2ExtendWorkflowRunSucceededEvent,
        Events::V2MoneyManagementAdjustmentCreatedEvent.lookup_type =>
        Events::V2MoneyManagementAdjustmentCreatedEvent,
        Events::V2MoneyManagementFinancialAccountCreatedEvent.lookup_type =>
        Events::V2MoneyManagementFinancialAccountCreatedEvent,
        Events::V2MoneyManagementFinancialAccountUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementFinancialAccountUpdatedEvent,
        Events::V2MoneyManagementFinancialAddressActivatedEvent.lookup_type =>
        Events::V2MoneyManagementFinancialAddressActivatedEvent,
        Events::V2MoneyManagementFinancialAddressFailedEvent.lookup_type =>
        Events::V2MoneyManagementFinancialAddressFailedEvent,
        Events::V2MoneyManagementInboundTransferAvailableEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferAvailableEvent,
        Events::V2MoneyManagementInboundTransferBankDebitFailedEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitFailedEvent,
        Events::V2MoneyManagementInboundTransferBankDebitProcessingEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitProcessingEvent,
        Events::V2MoneyManagementInboundTransferBankDebitQueuedEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitQueuedEvent,
        Events::V2MoneyManagementInboundTransferBankDebitReturnedEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitReturnedEvent,
        Events::V2MoneyManagementInboundTransferBankDebitSucceededEvent.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitSucceededEvent,
        Events::V2MoneyManagementOutboundPaymentCanceledEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentCanceledEvent,
        Events::V2MoneyManagementOutboundPaymentCreatedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentCreatedEvent,
        Events::V2MoneyManagementOutboundPaymentFailedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentFailedEvent,
        Events::V2MoneyManagementOutboundPaymentPostedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentPostedEvent,
        Events::V2MoneyManagementOutboundPaymentReturnedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentReturnedEvent,
        Events::V2MoneyManagementOutboundPaymentUnderReviewEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentUnderReviewEvent,
        Events::V2MoneyManagementOutboundPaymentUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentUpdatedEvent,
        Events::V2MoneyManagementOutboundTransferCanceledEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferCanceledEvent,
        Events::V2MoneyManagementOutboundTransferCreatedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferCreatedEvent,
        Events::V2MoneyManagementOutboundTransferFailedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferFailedEvent,
        Events::V2MoneyManagementOutboundTransferPostedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferPostedEvent,
        Events::V2MoneyManagementOutboundTransferReturnedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferReturnedEvent,
        Events::V2MoneyManagementOutboundTransferUnderReviewEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUnderReviewEvent,
        Events::V2MoneyManagementOutboundTransferUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUpdatedEvent,
        Events::V2MoneyManagementPayoutMethodCreatedEvent.lookup_type =>
        Events::V2MoneyManagementPayoutMethodCreatedEvent,
        Events::V2MoneyManagementPayoutMethodUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementPayoutMethodUpdatedEvent,
        Events::V2MoneyManagementReceivedCreditAvailableEvent.lookup_type =>
        Events::V2MoneyManagementReceivedCreditAvailableEvent,
        Events::V2MoneyManagementReceivedCreditFailedEvent.lookup_type =>
        Events::V2MoneyManagementReceivedCreditFailedEvent,
        Events::V2MoneyManagementReceivedCreditReturnedEvent.lookup_type =>
        Events::V2MoneyManagementReceivedCreditReturnedEvent,
        Events::V2MoneyManagementReceivedCreditSucceededEvent.lookup_type =>
        Events::V2MoneyManagementReceivedCreditSucceededEvent,
        Events::V2MoneyManagementReceivedDebitCanceledEvent.lookup_type =>
        Events::V2MoneyManagementReceivedDebitCanceledEvent,
        Events::V2MoneyManagementReceivedDebitFailedEvent.lookup_type =>
        Events::V2MoneyManagementReceivedDebitFailedEvent,
        Events::V2MoneyManagementReceivedDebitPendingEvent.lookup_type =>
        Events::V2MoneyManagementReceivedDebitPendingEvent,
        Events::V2MoneyManagementReceivedDebitSucceededEvent.lookup_type =>
        Events::V2MoneyManagementReceivedDebitSucceededEvent,
        Events::V2MoneyManagementReceivedDebitUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementReceivedDebitUpdatedEvent,
        Events::V2MoneyManagementTransactionCreatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEvent,
        Events::V2MoneyManagementTransactionUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEvent,
        Events::V2OrchestratedCommerceAgreementConfirmedEvent.lookup_type =>
        Events::V2OrchestratedCommerceAgreementConfirmedEvent,
        Events::V2OrchestratedCommerceAgreementCreatedEvent.lookup_type =>
        Events::V2OrchestratedCommerceAgreementCreatedEvent,
        Events::V2OrchestratedCommerceAgreementPartiallyConfirmedEvent.lookup_type =>
        Events::V2OrchestratedCommerceAgreementPartiallyConfirmedEvent,
        Events::V2OrchestratedCommerceAgreementTerminatedEvent.lookup_type =>
        Events::V2OrchestratedCommerceAgreementTerminatedEvent,
        Events::V2SignalsAccountEvaluationCompleteEvent.lookup_type =>
        Events::V2SignalsAccountEvaluationCompleteEvent,
        Events::V2SignalsAccountSignalFraudulentMerchantReadyEvent.lookup_type =>
        Events::V2SignalsAccountSignalFraudulentMerchantReadyEvent,
        Events::V2SignalsAccountSignalFraudulentWebsiteReadyEvent.lookup_type =>
        Events::V2SignalsAccountSignalFraudulentWebsiteReadyEvent,
        # v2 event types: The end of the section generated from our OpenAPI spec
      }
    end

    def self.event_notification_types_to_classes
      {
        # event notification types: The beginning of the section generated from our OpenAPI spec
        Events::V1AccountApplicationAuthorizedEventNotification.lookup_type =>
        Events::V1AccountApplicationAuthorizedEventNotification,
        Events::V1AccountApplicationDeauthorizedEventNotification.lookup_type =>
        Events::V1AccountApplicationDeauthorizedEventNotification,
        Events::V1AccountExternalAccountCreatedEventNotification.lookup_type =>
        Events::V1AccountExternalAccountCreatedEventNotification,
        Events::V1AccountExternalAccountDeletedEventNotification.lookup_type =>
        Events::V1AccountExternalAccountDeletedEventNotification,
        Events::V1AccountExternalAccountUpdatedEventNotification.lookup_type =>
        Events::V1AccountExternalAccountUpdatedEventNotification,
        Events::V1AccountUpdatedEventNotification.lookup_type => Events::V1AccountUpdatedEventNotification,
        Events::V1ApplicationFeeCreatedEventNotification.lookup_type =>
        Events::V1ApplicationFeeCreatedEventNotification,
        Events::V1ApplicationFeeRefundUpdatedEventNotification.lookup_type =>
        Events::V1ApplicationFeeRefundUpdatedEventNotification,
        Events::V1ApplicationFeeRefundedEventNotification.lookup_type =>
        Events::V1ApplicationFeeRefundedEventNotification,
        Events::V1BalanceAvailableEventNotification.lookup_type =>
        Events::V1BalanceAvailableEventNotification,
        Events::V1BalanceSettingsUpdatedEventNotification.lookup_type =>
        Events::V1BalanceSettingsUpdatedEventNotification,
        Events::V1BillingAlertTriggeredEventNotification.lookup_type =>
        Events::V1BillingAlertTriggeredEventNotification,
        Events::V1BillingCreditBalanceTransactionCreatedEventNotification.lookup_type =>
        Events::V1BillingCreditBalanceTransactionCreatedEventNotification,
        Events::V1BillingCreditGrantCreatedEventNotification.lookup_type =>
        Events::V1BillingCreditGrantCreatedEventNotification,
        Events::V1BillingCreditGrantUpdatedEventNotification.lookup_type =>
        Events::V1BillingCreditGrantUpdatedEventNotification,
        Events::V1BillingMeterCreatedEventNotification.lookup_type =>
        Events::V1BillingMeterCreatedEventNotification,
        Events::V1BillingMeterDeactivatedEventNotification.lookup_type =>
        Events::V1BillingMeterDeactivatedEventNotification,
        Events::V1BillingMeterErrorReportTriggeredEventNotification.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEventNotification,
        Events::V1BillingMeterNoMeterFoundEventNotification.lookup_type =>
        Events::V1BillingMeterNoMeterFoundEventNotification,
        Events::V1BillingMeterReactivatedEventNotification.lookup_type =>
        Events::V1BillingMeterReactivatedEventNotification,
        Events::V1BillingMeterUpdatedEventNotification.lookup_type =>
        Events::V1BillingMeterUpdatedEventNotification,
        Events::V1BillingPortalConfigurationCreatedEventNotification.lookup_type =>
        Events::V1BillingPortalConfigurationCreatedEventNotification,
        Events::V1BillingPortalConfigurationUpdatedEventNotification.lookup_type =>
        Events::V1BillingPortalConfigurationUpdatedEventNotification,
        Events::V1BillingPortalSessionCreatedEventNotification.lookup_type =>
        Events::V1BillingPortalSessionCreatedEventNotification,
        Events::V1CapabilityUpdatedEventNotification.lookup_type =>
        Events::V1CapabilityUpdatedEventNotification,
        Events::V1CashBalanceFundsAvailableEventNotification.lookup_type =>
        Events::V1CashBalanceFundsAvailableEventNotification,
        Events::V1ChargeCapturedEventNotification.lookup_type => Events::V1ChargeCapturedEventNotification,
        Events::V1ChargeDisputeClosedEventNotification.lookup_type =>
        Events::V1ChargeDisputeClosedEventNotification,
        Events::V1ChargeDisputeCreatedEventNotification.lookup_type =>
        Events::V1ChargeDisputeCreatedEventNotification,
        Events::V1ChargeDisputeFundsReinstatedEventNotification.lookup_type =>
        Events::V1ChargeDisputeFundsReinstatedEventNotification,
        Events::V1ChargeDisputeFundsWithdrawnEventNotification.lookup_type =>
        Events::V1ChargeDisputeFundsWithdrawnEventNotification,
        Events::V1ChargeDisputeUpdatedEventNotification.lookup_type =>
        Events::V1ChargeDisputeUpdatedEventNotification,
        Events::V1ChargeExpiredEventNotification.lookup_type => Events::V1ChargeExpiredEventNotification,
        Events::V1ChargeFailedEventNotification.lookup_type => Events::V1ChargeFailedEventNotification,
        Events::V1ChargePendingEventNotification.lookup_type => Events::V1ChargePendingEventNotification,
        Events::V1ChargeRefundUpdatedEventNotification.lookup_type =>
        Events::V1ChargeRefundUpdatedEventNotification,
        Events::V1ChargeRefundedEventNotification.lookup_type => Events::V1ChargeRefundedEventNotification,
        Events::V1ChargeSucceededEventNotification.lookup_type =>
        Events::V1ChargeSucceededEventNotification,
        Events::V1ChargeUpdatedEventNotification.lookup_type => Events::V1ChargeUpdatedEventNotification,
        Events::V1CheckoutSessionAsyncPaymentFailedEventNotification.lookup_type =>
        Events::V1CheckoutSessionAsyncPaymentFailedEventNotification,
        Events::V1CheckoutSessionAsyncPaymentSucceededEventNotification.lookup_type =>
        Events::V1CheckoutSessionAsyncPaymentSucceededEventNotification,
        Events::V1CheckoutSessionCompletedEventNotification.lookup_type =>
        Events::V1CheckoutSessionCompletedEventNotification,
        Events::V1CheckoutSessionExpiredEventNotification.lookup_type =>
        Events::V1CheckoutSessionExpiredEventNotification,
        Events::V1ClimateOrderCanceledEventNotification.lookup_type =>
        Events::V1ClimateOrderCanceledEventNotification,
        Events::V1ClimateOrderCreatedEventNotification.lookup_type =>
        Events::V1ClimateOrderCreatedEventNotification,
        Events::V1ClimateOrderDelayedEventNotification.lookup_type =>
        Events::V1ClimateOrderDelayedEventNotification,
        Events::V1ClimateOrderDeliveredEventNotification.lookup_type =>
        Events::V1ClimateOrderDeliveredEventNotification,
        Events::V1ClimateOrderProductSubstitutedEventNotification.lookup_type =>
        Events::V1ClimateOrderProductSubstitutedEventNotification,
        Events::V1ClimateProductCreatedEventNotification.lookup_type =>
        Events::V1ClimateProductCreatedEventNotification,
        Events::V1ClimateProductPricingUpdatedEventNotification.lookup_type =>
        Events::V1ClimateProductPricingUpdatedEventNotification,
        Events::V1CouponCreatedEventNotification.lookup_type => Events::V1CouponCreatedEventNotification,
        Events::V1CouponDeletedEventNotification.lookup_type => Events::V1CouponDeletedEventNotification,
        Events::V1CouponUpdatedEventNotification.lookup_type => Events::V1CouponUpdatedEventNotification,
        Events::V1CreditNoteCreatedEventNotification.lookup_type =>
        Events::V1CreditNoteCreatedEventNotification,
        Events::V1CreditNoteUpdatedEventNotification.lookup_type =>
        Events::V1CreditNoteUpdatedEventNotification,
        Events::V1CreditNoteVoidedEventNotification.lookup_type =>
        Events::V1CreditNoteVoidedEventNotification,
        Events::V1CustomerCashBalanceTransactionCreatedEventNotification.lookup_type =>
        Events::V1CustomerCashBalanceTransactionCreatedEventNotification,
        Events::V1CustomerCreatedEventNotification.lookup_type =>
        Events::V1CustomerCreatedEventNotification,
        Events::V1CustomerDeletedEventNotification.lookup_type =>
        Events::V1CustomerDeletedEventNotification,
        Events::V1CustomerDiscountCreatedEventNotification.lookup_type =>
        Events::V1CustomerDiscountCreatedEventNotification,
        Events::V1CustomerDiscountDeletedEventNotification.lookup_type =>
        Events::V1CustomerDiscountDeletedEventNotification,
        Events::V1CustomerDiscountUpdatedEventNotification.lookup_type =>
        Events::V1CustomerDiscountUpdatedEventNotification,
        Events::V1CustomerSubscriptionCreatedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionCreatedEventNotification,
        Events::V1CustomerSubscriptionDeletedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionDeletedEventNotification,
        Events::V1CustomerSubscriptionPausedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionPausedEventNotification,
        Events::V1CustomerSubscriptionPendingUpdateAppliedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionPendingUpdateAppliedEventNotification,
        Events::V1CustomerSubscriptionPendingUpdateExpiredEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionPendingUpdateExpiredEventNotification,
        Events::V1CustomerSubscriptionResumedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionResumedEventNotification,
        Events::V1CustomerSubscriptionTrialWillEndEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionTrialWillEndEventNotification,
        Events::V1CustomerSubscriptionUpdatedEventNotification.lookup_type =>
        Events::V1CustomerSubscriptionUpdatedEventNotification,
        Events::V1CustomerTaxIdCreatedEventNotification.lookup_type =>
        Events::V1CustomerTaxIdCreatedEventNotification,
        Events::V1CustomerTaxIdDeletedEventNotification.lookup_type =>
        Events::V1CustomerTaxIdDeletedEventNotification,
        Events::V1CustomerTaxIdUpdatedEventNotification.lookup_type =>
        Events::V1CustomerTaxIdUpdatedEventNotification,
        Events::V1CustomerUpdatedEventNotification.lookup_type =>
        Events::V1CustomerUpdatedEventNotification,
        Events::V1EntitlementsActiveEntitlementSummaryUpdatedEventNotification.lookup_type =>
        Events::V1EntitlementsActiveEntitlementSummaryUpdatedEventNotification,
        Events::V1FileCreatedEventNotification.lookup_type => Events::V1FileCreatedEventNotification,
        Events::V1FinancialConnectionsAccountAccountNumbersUpdatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountAccountNumbersUpdatedEventNotification,
        Events::V1FinancialConnectionsAccountCreatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountCreatedEventNotification,
        Events::V1FinancialConnectionsAccountDeactivatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountDeactivatedEventNotification,
        Events::V1FinancialConnectionsAccountDisconnectedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountDisconnectedEventNotification,
        Events::V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEventNotification,
        Events::V1FinancialConnectionsAccountReactivatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountReactivatedEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedBalanceEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedBalanceEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEventNotification,
        Events::V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEventNotification,
        Events::V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEventNotification,
        Events::V1FinancialConnectionsAccountUpcomingDeactivationEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountUpcomingDeactivationEventNotification,
        Events::V1IdentityVerificationSessionCanceledEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionCanceledEventNotification,
        Events::V1IdentityVerificationSessionCreatedEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionCreatedEventNotification,
        Events::V1IdentityVerificationSessionProcessingEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionProcessingEventNotification,
        Events::V1IdentityVerificationSessionRedactedEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionRedactedEventNotification,
        Events::V1IdentityVerificationSessionRequiresInputEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionRequiresInputEventNotification,
        Events::V1IdentityVerificationSessionVerifiedEventNotification.lookup_type =>
        Events::V1IdentityVerificationSessionVerifiedEventNotification,
        Events::V1InvoiceCreatedEventNotification.lookup_type => Events::V1InvoiceCreatedEventNotification,
        Events::V1InvoiceDeletedEventNotification.lookup_type => Events::V1InvoiceDeletedEventNotification,
        Events::V1InvoiceFinalizationFailedEventNotification.lookup_type =>
        Events::V1InvoiceFinalizationFailedEventNotification,
        Events::V1InvoiceFinalizedEventNotification.lookup_type =>
        Events::V1InvoiceFinalizedEventNotification,
        Events::V1InvoiceMarkedUncollectibleEventNotification.lookup_type =>
        Events::V1InvoiceMarkedUncollectibleEventNotification,
        Events::V1InvoiceOverdueEventNotification.lookup_type => Events::V1InvoiceOverdueEventNotification,
        Events::V1InvoiceOverpaidEventNotification.lookup_type =>
        Events::V1InvoiceOverpaidEventNotification,
        Events::V1InvoicePaidEventNotification.lookup_type => Events::V1InvoicePaidEventNotification,
        Events::V1InvoicePaymentActionRequiredEventNotification.lookup_type =>
        Events::V1InvoicePaymentActionRequiredEventNotification,
        Events::V1InvoicePaymentAttemptRequiredEventNotification.lookup_type =>
        Events::V1InvoicePaymentAttemptRequiredEventNotification,
        Events::V1InvoicePaymentFailedEventNotification.lookup_type =>
        Events::V1InvoicePaymentFailedEventNotification,
        Events::V1InvoicePaymentPaidEventNotification.lookup_type =>
        Events::V1InvoicePaymentPaidEventNotification,
        Events::V1InvoicePaymentSucceededEventNotification.lookup_type =>
        Events::V1InvoicePaymentSucceededEventNotification,
        Events::V1InvoiceSentEventNotification.lookup_type => Events::V1InvoiceSentEventNotification,
        Events::V1InvoiceUpcomingEventNotification.lookup_type =>
        Events::V1InvoiceUpcomingEventNotification,
        Events::V1InvoiceUpdatedEventNotification.lookup_type => Events::V1InvoiceUpdatedEventNotification,
        Events::V1InvoiceVoidedEventNotification.lookup_type => Events::V1InvoiceVoidedEventNotification,
        Events::V1InvoiceWillBeDueEventNotification.lookup_type =>
        Events::V1InvoiceWillBeDueEventNotification,
        Events::V1InvoiceitemCreatedEventNotification.lookup_type =>
        Events::V1InvoiceitemCreatedEventNotification,
        Events::V1InvoiceitemDeletedEventNotification.lookup_type =>
        Events::V1InvoiceitemDeletedEventNotification,
        Events::V1IssuingAuthorizationCreatedEventNotification.lookup_type =>
        Events::V1IssuingAuthorizationCreatedEventNotification,
        Events::V1IssuingAuthorizationRequestEventNotification.lookup_type =>
        Events::V1IssuingAuthorizationRequestEventNotification,
        Events::V1IssuingAuthorizationUpdatedEventNotification.lookup_type =>
        Events::V1IssuingAuthorizationUpdatedEventNotification,
        Events::V1IssuingCardCreatedEventNotification.lookup_type =>
        Events::V1IssuingCardCreatedEventNotification,
        Events::V1IssuingCardUpdatedEventNotification.lookup_type =>
        Events::V1IssuingCardUpdatedEventNotification,
        Events::V1IssuingCardholderCreatedEventNotification.lookup_type =>
        Events::V1IssuingCardholderCreatedEventNotification,
        Events::V1IssuingCardholderUpdatedEventNotification.lookup_type =>
        Events::V1IssuingCardholderUpdatedEventNotification,
        Events::V1IssuingDisputeClosedEventNotification.lookup_type =>
        Events::V1IssuingDisputeClosedEventNotification,
        Events::V1IssuingDisputeCreatedEventNotification.lookup_type =>
        Events::V1IssuingDisputeCreatedEventNotification,
        Events::V1IssuingDisputeFundsReinstatedEventNotification.lookup_type =>
        Events::V1IssuingDisputeFundsReinstatedEventNotification,
        Events::V1IssuingDisputeFundsRescindedEventNotification.lookup_type =>
        Events::V1IssuingDisputeFundsRescindedEventNotification,
        Events::V1IssuingDisputeSubmittedEventNotification.lookup_type =>
        Events::V1IssuingDisputeSubmittedEventNotification,
        Events::V1IssuingDisputeUpdatedEventNotification.lookup_type =>
        Events::V1IssuingDisputeUpdatedEventNotification,
        Events::V1IssuingPersonalizationDesignActivatedEventNotification.lookup_type =>
        Events::V1IssuingPersonalizationDesignActivatedEventNotification,
        Events::V1IssuingPersonalizationDesignDeactivatedEventNotification.lookup_type =>
        Events::V1IssuingPersonalizationDesignDeactivatedEventNotification,
        Events::V1IssuingPersonalizationDesignRejectedEventNotification.lookup_type =>
        Events::V1IssuingPersonalizationDesignRejectedEventNotification,
        Events::V1IssuingPersonalizationDesignUpdatedEventNotification.lookup_type =>
        Events::V1IssuingPersonalizationDesignUpdatedEventNotification,
        Events::V1IssuingTokenCreatedEventNotification.lookup_type =>
        Events::V1IssuingTokenCreatedEventNotification,
        Events::V1IssuingTokenUpdatedEventNotification.lookup_type =>
        Events::V1IssuingTokenUpdatedEventNotification,
        Events::V1IssuingTransactionCreatedEventNotification.lookup_type =>
        Events::V1IssuingTransactionCreatedEventNotification,
        Events::V1IssuingTransactionPurchaseDetailsReceiptUpdatedEventNotification.lookup_type =>
        Events::V1IssuingTransactionPurchaseDetailsReceiptUpdatedEventNotification,
        Events::V1IssuingTransactionUpdatedEventNotification.lookup_type =>
        Events::V1IssuingTransactionUpdatedEventNotification,
        Events::V1MandateUpdatedEventNotification.lookup_type => Events::V1MandateUpdatedEventNotification,
        Events::V1PaymentIntentAmountCapturableUpdatedEventNotification.lookup_type =>
        Events::V1PaymentIntentAmountCapturableUpdatedEventNotification,
        Events::V1PaymentIntentCanceledEventNotification.lookup_type =>
        Events::V1PaymentIntentCanceledEventNotification,
        Events::V1PaymentIntentCreatedEventNotification.lookup_type =>
        Events::V1PaymentIntentCreatedEventNotification,
        Events::V1PaymentIntentPartiallyFundedEventNotification.lookup_type =>
        Events::V1PaymentIntentPartiallyFundedEventNotification,
        Events::V1PaymentIntentPaymentFailedEventNotification.lookup_type =>
        Events::V1PaymentIntentPaymentFailedEventNotification,
        Events::V1PaymentIntentProcessingEventNotification.lookup_type =>
        Events::V1PaymentIntentProcessingEventNotification,
        Events::V1PaymentIntentRequiresActionEventNotification.lookup_type =>
        Events::V1PaymentIntentRequiresActionEventNotification,
        Events::V1PaymentIntentSucceededEventNotification.lookup_type =>
        Events::V1PaymentIntentSucceededEventNotification,
        Events::V1PaymentLinkCreatedEventNotification.lookup_type =>
        Events::V1PaymentLinkCreatedEventNotification,
        Events::V1PaymentLinkUpdatedEventNotification.lookup_type =>
        Events::V1PaymentLinkUpdatedEventNotification,
        Events::V1PaymentMethodAttachedEventNotification.lookup_type =>
        Events::V1PaymentMethodAttachedEventNotification,
        Events::V1PaymentMethodAutomaticallyUpdatedEventNotification.lookup_type =>
        Events::V1PaymentMethodAutomaticallyUpdatedEventNotification,
        Events::V1PaymentMethodDetachedEventNotification.lookup_type =>
        Events::V1PaymentMethodDetachedEventNotification,
        Events::V1PaymentMethodUpdatedEventNotification.lookup_type =>
        Events::V1PaymentMethodUpdatedEventNotification,
        Events::V1PayoutCanceledEventNotification.lookup_type => Events::V1PayoutCanceledEventNotification,
        Events::V1PayoutCreatedEventNotification.lookup_type => Events::V1PayoutCreatedEventNotification,
        Events::V1PayoutFailedEventNotification.lookup_type => Events::V1PayoutFailedEventNotification,
        Events::V1PayoutPaidEventNotification.lookup_type => Events::V1PayoutPaidEventNotification,
        Events::V1PayoutReconciliationCompletedEventNotification.lookup_type =>
        Events::V1PayoutReconciliationCompletedEventNotification,
        Events::V1PayoutUpdatedEventNotification.lookup_type => Events::V1PayoutUpdatedEventNotification,
        Events::V1PersonCreatedEventNotification.lookup_type => Events::V1PersonCreatedEventNotification,
        Events::V1PersonDeletedEventNotification.lookup_type => Events::V1PersonDeletedEventNotification,
        Events::V1PersonUpdatedEventNotification.lookup_type => Events::V1PersonUpdatedEventNotification,
        Events::V1PlanCreatedEventNotification.lookup_type => Events::V1PlanCreatedEventNotification,
        Events::V1PlanDeletedEventNotification.lookup_type => Events::V1PlanDeletedEventNotification,
        Events::V1PlanUpdatedEventNotification.lookup_type => Events::V1PlanUpdatedEventNotification,
        Events::V1PriceCreatedEventNotification.lookup_type => Events::V1PriceCreatedEventNotification,
        Events::V1PriceDeletedEventNotification.lookup_type => Events::V1PriceDeletedEventNotification,
        Events::V1PriceUpdatedEventNotification.lookup_type => Events::V1PriceUpdatedEventNotification,
        Events::V1ProductCreatedEventNotification.lookup_type => Events::V1ProductCreatedEventNotification,
        Events::V1ProductDeletedEventNotification.lookup_type => Events::V1ProductDeletedEventNotification,
        Events::V1ProductUpdatedEventNotification.lookup_type => Events::V1ProductUpdatedEventNotification,
        Events::V1PromotionCodeCreatedEventNotification.lookup_type =>
        Events::V1PromotionCodeCreatedEventNotification,
        Events::V1PromotionCodeUpdatedEventNotification.lookup_type =>
        Events::V1PromotionCodeUpdatedEventNotification,
        Events::V1QuoteAcceptedEventNotification.lookup_type => Events::V1QuoteAcceptedEventNotification,
        Events::V1QuoteCanceledEventNotification.lookup_type => Events::V1QuoteCanceledEventNotification,
        Events::V1QuoteCreatedEventNotification.lookup_type => Events::V1QuoteCreatedEventNotification,
        Events::V1QuoteFinalizedEventNotification.lookup_type => Events::V1QuoteFinalizedEventNotification,
        Events::V1RadarEarlyFraudWarningCreatedEventNotification.lookup_type =>
        Events::V1RadarEarlyFraudWarningCreatedEventNotification,
        Events::V1RadarEarlyFraudWarningUpdatedEventNotification.lookup_type =>
        Events::V1RadarEarlyFraudWarningUpdatedEventNotification,
        Events::V1RefundCreatedEventNotification.lookup_type => Events::V1RefundCreatedEventNotification,
        Events::V1RefundFailedEventNotification.lookup_type => Events::V1RefundFailedEventNotification,
        Events::V1RefundUpdatedEventNotification.lookup_type => Events::V1RefundUpdatedEventNotification,
        Events::V1ReviewClosedEventNotification.lookup_type => Events::V1ReviewClosedEventNotification,
        Events::V1ReviewOpenedEventNotification.lookup_type => Events::V1ReviewOpenedEventNotification,
        Events::V1SetupIntentCanceledEventNotification.lookup_type =>
        Events::V1SetupIntentCanceledEventNotification,
        Events::V1SetupIntentCreatedEventNotification.lookup_type =>
        Events::V1SetupIntentCreatedEventNotification,
        Events::V1SetupIntentRequiresActionEventNotification.lookup_type =>
        Events::V1SetupIntentRequiresActionEventNotification,
        Events::V1SetupIntentSetupFailedEventNotification.lookup_type =>
        Events::V1SetupIntentSetupFailedEventNotification,
        Events::V1SetupIntentSucceededEventNotification.lookup_type =>
        Events::V1SetupIntentSucceededEventNotification,
        Events::V1SigmaScheduledQueryRunCreatedEventNotification.lookup_type =>
        Events::V1SigmaScheduledQueryRunCreatedEventNotification,
        Events::V1SourceCanceledEventNotification.lookup_type => Events::V1SourceCanceledEventNotification,
        Events::V1SourceChargeableEventNotification.lookup_type =>
        Events::V1SourceChargeableEventNotification,
        Events::V1SourceFailedEventNotification.lookup_type => Events::V1SourceFailedEventNotification,
        Events::V1SourceRefundAttributesRequiredEventNotification.lookup_type =>
        Events::V1SourceRefundAttributesRequiredEventNotification,
        Events::V1SubscriptionScheduleAbortedEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleAbortedEventNotification,
        Events::V1SubscriptionScheduleCanceledEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleCanceledEventNotification,
        Events::V1SubscriptionScheduleCompletedEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleCompletedEventNotification,
        Events::V1SubscriptionScheduleCreatedEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleCreatedEventNotification,
        Events::V1SubscriptionScheduleExpiringEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleExpiringEventNotification,
        Events::V1SubscriptionScheduleReleasedEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleReleasedEventNotification,
        Events::V1SubscriptionScheduleUpdatedEventNotification.lookup_type =>
        Events::V1SubscriptionScheduleUpdatedEventNotification,
        Events::V1TaxRateCreatedEventNotification.lookup_type => Events::V1TaxRateCreatedEventNotification,
        Events::V1TaxRateUpdatedEventNotification.lookup_type => Events::V1TaxRateUpdatedEventNotification,
        Events::V1TaxSettingsUpdatedEventNotification.lookup_type =>
        Events::V1TaxSettingsUpdatedEventNotification,
        Events::V1TerminalReaderActionFailedEventNotification.lookup_type =>
        Events::V1TerminalReaderActionFailedEventNotification,
        Events::V1TerminalReaderActionSucceededEventNotification.lookup_type =>
        Events::V1TerminalReaderActionSucceededEventNotification,
        Events::V1TerminalReaderActionUpdatedEventNotification.lookup_type =>
        Events::V1TerminalReaderActionUpdatedEventNotification,
        Events::V1TestHelpersTestClockAdvancingEventNotification.lookup_type =>
        Events::V1TestHelpersTestClockAdvancingEventNotification,
        Events::V1TestHelpersTestClockCreatedEventNotification.lookup_type =>
        Events::V1TestHelpersTestClockCreatedEventNotification,
        Events::V1TestHelpersTestClockDeletedEventNotification.lookup_type =>
        Events::V1TestHelpersTestClockDeletedEventNotification,
        Events::V1TestHelpersTestClockInternalFailureEventNotification.lookup_type =>
        Events::V1TestHelpersTestClockInternalFailureEventNotification,
        Events::V1TestHelpersTestClockReadyEventNotification.lookup_type =>
        Events::V1TestHelpersTestClockReadyEventNotification,
        Events::V1TopupCanceledEventNotification.lookup_type => Events::V1TopupCanceledEventNotification,
        Events::V1TopupCreatedEventNotification.lookup_type => Events::V1TopupCreatedEventNotification,
        Events::V1TopupFailedEventNotification.lookup_type => Events::V1TopupFailedEventNotification,
        Events::V1TopupReversedEventNotification.lookup_type => Events::V1TopupReversedEventNotification,
        Events::V1TopupSucceededEventNotification.lookup_type => Events::V1TopupSucceededEventNotification,
        Events::V1TransferCreatedEventNotification.lookup_type =>
        Events::V1TransferCreatedEventNotification,
        Events::V1TransferReversedEventNotification.lookup_type =>
        Events::V1TransferReversedEventNotification,
        Events::V1TransferUpdatedEventNotification.lookup_type =>
        Events::V1TransferUpdatedEventNotification,
        Events::V2CommerceProductCatalogImportsFailedEventNotification.lookup_type =>
        Events::V2CommerceProductCatalogImportsFailedEventNotification,
        Events::V2CommerceProductCatalogImportsProcessingEventNotification.lookup_type =>
        Events::V2CommerceProductCatalogImportsProcessingEventNotification,
        Events::V2CommerceProductCatalogImportsSucceededEventNotification.lookup_type =>
        Events::V2CommerceProductCatalogImportsSucceededEventNotification,
        Events::V2CommerceProductCatalogImportsSucceededWithErrorsEventNotification.lookup_type =>
        Events::V2CommerceProductCatalogImportsSucceededWithErrorsEventNotification,
        Events::V2CoreAccountClosedEventNotification.lookup_type =>
        Events::V2CoreAccountClosedEventNotification,
        Events::V2CoreAccountCreatedEventNotification.lookup_type =>
        Events::V2CoreAccountCreatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification,
        Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification,
        Events::V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification,
        Events::V2CoreAccountIncludingIdentityUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingIdentityUpdatedEventNotification,
        Events::V2CoreAccountIncludingRequirementsUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingRequirementsUpdatedEventNotification,
        Events::V2CoreAccountLinkReturnedEventNotification.lookup_type =>
        Events::V2CoreAccountLinkReturnedEventNotification,
        Events::V2CoreAccountPersonCreatedEventNotification.lookup_type =>
        Events::V2CoreAccountPersonCreatedEventNotification,
        Events::V2CoreAccountPersonDeletedEventNotification.lookup_type =>
        Events::V2CoreAccountPersonDeletedEventNotification,
        Events::V2CoreAccountPersonUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountPersonUpdatedEventNotification,
        Events::V2CoreAccountUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountUpdatedEventNotification,
        Events::V2CoreApprovalRequestApprovedEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestApprovedEventNotification,
        Events::V2CoreApprovalRequestCanceledEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestCanceledEventNotification,
        Events::V2CoreApprovalRequestCreatedEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestCreatedEventNotification,
        Events::V2CoreApprovalRequestExpiredEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestExpiredEventNotification,
        Events::V2CoreApprovalRequestFailedEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestFailedEventNotification,
        Events::V2CoreApprovalRequestRejectedEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestRejectedEventNotification,
        Events::V2CoreApprovalRequestSucceededEventNotification.lookup_type =>
        Events::V2CoreApprovalRequestSucceededEventNotification,
        Events::V2CoreBatchJobBatchFailedEventNotification.lookup_type =>
        Events::V2CoreBatchJobBatchFailedEventNotification,
        Events::V2CoreBatchJobCanceledEventNotification.lookup_type =>
        Events::V2CoreBatchJobCanceledEventNotification,
        Events::V2CoreBatchJobCompletedEventNotification.lookup_type =>
        Events::V2CoreBatchJobCompletedEventNotification,
        Events::V2CoreBatchJobCreatedEventNotification.lookup_type =>
        Events::V2CoreBatchJobCreatedEventNotification,
        Events::V2CoreBatchJobReadyForUploadEventNotification.lookup_type =>
        Events::V2CoreBatchJobReadyForUploadEventNotification,
        Events::V2CoreBatchJobTimeoutEventNotification.lookup_type =>
        Events::V2CoreBatchJobTimeoutEventNotification,
        Events::V2CoreBatchJobUpdatedEventNotification.lookup_type =>
        Events::V2CoreBatchJobUpdatedEventNotification,
        Events::V2CoreBatchJobUploadTimeoutEventNotification.lookup_type =>
        Events::V2CoreBatchJobUploadTimeoutEventNotification,
        Events::V2CoreBatchJobValidatingEventNotification.lookup_type =>
        Events::V2CoreBatchJobValidatingEventNotification,
        Events::V2CoreBatchJobValidationFailedEventNotification.lookup_type =>
        Events::V2CoreBatchJobValidationFailedEventNotification,
        Events::V2CoreEventDestinationPingEventNotification.lookup_type =>
        Events::V2CoreEventDestinationPingEventNotification,
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification,
        Events::V2DataReportingQueryRunCreatedEventNotification.lookup_type =>
        Events::V2DataReportingQueryRunCreatedEventNotification,
        Events::V2DataReportingQueryRunFailedEventNotification.lookup_type =>
        Events::V2DataReportingQueryRunFailedEventNotification,
        Events::V2DataReportingQueryRunSucceededEventNotification.lookup_type =>
        Events::V2DataReportingQueryRunSucceededEventNotification,
        Events::V2DataReportingQueryRunUpdatedEventNotification.lookup_type =>
        Events::V2DataReportingQueryRunUpdatedEventNotification,
        Events::V2ExtendWorkflowRunFailedEventNotification.lookup_type =>
        Events::V2ExtendWorkflowRunFailedEventNotification,
        Events::V2ExtendWorkflowRunStartedEventNotification.lookup_type =>
        Events::V2ExtendWorkflowRunStartedEventNotification,
        Events::V2ExtendWorkflowRunSucceededEventNotification.lookup_type =>
        Events::V2ExtendWorkflowRunSucceededEventNotification,
        Events::V2MoneyManagementAdjustmentCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementAdjustmentCreatedEventNotification,
        Events::V2MoneyManagementFinancialAccountCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementFinancialAccountCreatedEventNotification,
        Events::V2MoneyManagementFinancialAccountUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementFinancialAccountUpdatedEventNotification,
        Events::V2MoneyManagementFinancialAddressActivatedEventNotification.lookup_type =>
        Events::V2MoneyManagementFinancialAddressActivatedEventNotification,
        Events::V2MoneyManagementFinancialAddressFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementFinancialAddressFailedEventNotification,
        Events::V2MoneyManagementInboundTransferAvailableEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferAvailableEventNotification,
        Events::V2MoneyManagementInboundTransferBankDebitFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitFailedEventNotification,
        Events::V2MoneyManagementInboundTransferBankDebitProcessingEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitProcessingEventNotification,
        Events::V2MoneyManagementInboundTransferBankDebitQueuedEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitQueuedEventNotification,
        Events::V2MoneyManagementInboundTransferBankDebitReturnedEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitReturnedEventNotification,
        Events::V2MoneyManagementInboundTransferBankDebitSucceededEventNotification.lookup_type =>
        Events::V2MoneyManagementInboundTransferBankDebitSucceededEventNotification,
        Events::V2MoneyManagementOutboundPaymentCanceledEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentCanceledEventNotification,
        Events::V2MoneyManagementOutboundPaymentCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentCreatedEventNotification,
        Events::V2MoneyManagementOutboundPaymentFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentFailedEventNotification,
        Events::V2MoneyManagementOutboundPaymentPostedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentPostedEventNotification,
        Events::V2MoneyManagementOutboundPaymentReturnedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentReturnedEventNotification,
        Events::V2MoneyManagementOutboundPaymentUnderReviewEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentUnderReviewEventNotification,
        Events::V2MoneyManagementOutboundPaymentUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundPaymentUpdatedEventNotification,
        Events::V2MoneyManagementOutboundTransferCanceledEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferCanceledEventNotification,
        Events::V2MoneyManagementOutboundTransferCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferCreatedEventNotification,
        Events::V2MoneyManagementOutboundTransferFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferFailedEventNotification,
        Events::V2MoneyManagementOutboundTransferPostedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferPostedEventNotification,
        Events::V2MoneyManagementOutboundTransferReturnedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferReturnedEventNotification,
        Events::V2MoneyManagementOutboundTransferUnderReviewEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUnderReviewEventNotification,
        Events::V2MoneyManagementOutboundTransferUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUpdatedEventNotification,
        Events::V2MoneyManagementPayoutMethodCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementPayoutMethodCreatedEventNotification,
        Events::V2MoneyManagementPayoutMethodUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementPayoutMethodUpdatedEventNotification,
        Events::V2MoneyManagementReceivedCreditAvailableEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedCreditAvailableEventNotification,
        Events::V2MoneyManagementReceivedCreditFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedCreditFailedEventNotification,
        Events::V2MoneyManagementReceivedCreditReturnedEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedCreditReturnedEventNotification,
        Events::V2MoneyManagementReceivedCreditSucceededEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedCreditSucceededEventNotification,
        Events::V2MoneyManagementReceivedDebitCanceledEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedDebitCanceledEventNotification,
        Events::V2MoneyManagementReceivedDebitFailedEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedDebitFailedEventNotification,
        Events::V2MoneyManagementReceivedDebitPendingEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedDebitPendingEventNotification,
        Events::V2MoneyManagementReceivedDebitSucceededEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedDebitSucceededEventNotification,
        Events::V2MoneyManagementReceivedDebitUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementReceivedDebitUpdatedEventNotification,
        Events::V2MoneyManagementTransactionCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEventNotification,
        Events::V2MoneyManagementTransactionUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEventNotification,
        Events::V2OrchestratedCommerceAgreementConfirmedEventNotification.lookup_type =>
        Events::V2OrchestratedCommerceAgreementConfirmedEventNotification,
        Events::V2OrchestratedCommerceAgreementCreatedEventNotification.lookup_type =>
        Events::V2OrchestratedCommerceAgreementCreatedEventNotification,
        Events::V2OrchestratedCommerceAgreementPartiallyConfirmedEventNotification.lookup_type =>
        Events::V2OrchestratedCommerceAgreementPartiallyConfirmedEventNotification,
        Events::V2OrchestratedCommerceAgreementTerminatedEventNotification.lookup_type =>
        Events::V2OrchestratedCommerceAgreementTerminatedEventNotification,
        Events::V2SignalsAccountEvaluationCompleteEventNotification.lookup_type =>
        Events::V2SignalsAccountEvaluationCompleteEventNotification,
        Events::V2SignalsAccountSignalFraudulentMerchantReadyEventNotification.lookup_type =>
        Events::V2SignalsAccountSignalFraudulentMerchantReadyEventNotification,
        Events::V2SignalsAccountSignalFraudulentWebsiteReadyEventNotification.lookup_type =>
        Events::V2SignalsAccountSignalFraudulentWebsiteReadyEventNotification,
        # event notification types: The end of the section generated from our OpenAPI spec
      }
    end
  end
end
