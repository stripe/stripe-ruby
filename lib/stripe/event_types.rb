# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.v2_event_types_to_classes
      {
        # v2 event types: The beginning of the section generated from our OpenAPI spec
        Events::V1AccountUpdatedEvent.lookup_type => Events::V1AccountUpdatedEvent,
        Events::V1ApplicationFeeCreatedEvent.lookup_type => Events::V1ApplicationFeeCreatedEvent,
        Events::V1ApplicationFeeRefundedEvent.lookup_type => Events::V1ApplicationFeeRefundedEvent,
        Events::V1BillingMeterErrorReportTriggeredEvent.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEvent,
        Events::V1BillingMeterNoMeterFoundEvent.lookup_type => Events::V1BillingMeterNoMeterFoundEvent,
        Events::V1BillingPortalConfigurationCreatedEvent.lookup_type =>
        Events::V1BillingPortalConfigurationCreatedEvent,
        Events::V1BillingPortalConfigurationUpdatedEvent.lookup_type =>
        Events::V1BillingPortalConfigurationUpdatedEvent,
        Events::V1CapabilityUpdatedEvent.lookup_type => Events::V1CapabilityUpdatedEvent,
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
        Events::V1CustomerCreatedEvent.lookup_type => Events::V1CustomerCreatedEvent,
        Events::V1CustomerDeletedEvent.lookup_type => Events::V1CustomerDeletedEvent,
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
        Events::V1FileCreatedEvent.lookup_type => Events::V1FileCreatedEvent,
        Events::V1FinancialConnectionsAccountCreatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountCreatedEvent,
        Events::V1FinancialConnectionsAccountDeactivatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountDeactivatedEvent,
        Events::V1FinancialConnectionsAccountDisconnectedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountDisconnectedEvent,
        Events::V1FinancialConnectionsAccountReactivatedEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountReactivatedEvent,
        Events::V1FinancialConnectionsAccountRefreshedBalanceEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedBalanceEvent,
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEvent,
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEvent.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEvent,
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
        Events::V2BillingBillSettingUpdatedEvent.lookup_type => Events::V2BillingBillSettingUpdatedEvent,
        Events::V2BillingCadenceBilledEvent.lookup_type => Events::V2BillingCadenceBilledEvent,
        Events::V2BillingCadenceCanceledEvent.lookup_type => Events::V2BillingCadenceCanceledEvent,
        Events::V2BillingCadenceCreatedEvent.lookup_type => Events::V2BillingCadenceCreatedEvent,
        Events::V2BillingLicenseFeeCreatedEvent.lookup_type => Events::V2BillingLicenseFeeCreatedEvent,
        Events::V2BillingLicenseFeeUpdatedEvent.lookup_type => Events::V2BillingLicenseFeeUpdatedEvent,
        Events::V2BillingLicenseFeeVersionCreatedEvent.lookup_type =>
        Events::V2BillingLicenseFeeVersionCreatedEvent,
        Events::V2BillingLicensedItemCreatedEvent.lookup_type => Events::V2BillingLicensedItemCreatedEvent,
        Events::V2BillingLicensedItemUpdatedEvent.lookup_type => Events::V2BillingLicensedItemUpdatedEvent,
        Events::V2BillingMeteredItemCreatedEvent.lookup_type => Events::V2BillingMeteredItemCreatedEvent,
        Events::V2BillingMeteredItemUpdatedEvent.lookup_type => Events::V2BillingMeteredItemUpdatedEvent,
        Events::V2BillingPricingPlanComponentCreatedEvent.lookup_type =>
        Events::V2BillingPricingPlanComponentCreatedEvent,
        Events::V2BillingPricingPlanComponentUpdatedEvent.lookup_type =>
        Events::V2BillingPricingPlanComponentUpdatedEvent,
        Events::V2BillingPricingPlanCreatedEvent.lookup_type => Events::V2BillingPricingPlanCreatedEvent,
        Events::V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent,
        Events::V2BillingPricingPlanSubscriptionCollectionCurrentEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionCurrentEvent,
        Events::V2BillingPricingPlanSubscriptionCollectionPastDueEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionPastDueEvent,
        Events::V2BillingPricingPlanSubscriptionCollectionPausedEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionPausedEvent,
        Events::V2BillingPricingPlanSubscriptionCollectionUnpaidEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionUnpaidEvent,
        Events::V2BillingPricingPlanSubscriptionServicingActivatedEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingActivatedEvent,
        Events::V2BillingPricingPlanSubscriptionServicingCanceledEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingCanceledEvent,
        Events::V2BillingPricingPlanSubscriptionServicingPausedEvent.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingPausedEvent,
        Events::V2BillingPricingPlanUpdatedEvent.lookup_type => Events::V2BillingPricingPlanUpdatedEvent,
        Events::V2BillingPricingPlanVersionCreatedEvent.lookup_type =>
        Events::V2BillingPricingPlanVersionCreatedEvent,
        Events::V2BillingRateCardCreatedEvent.lookup_type => Events::V2BillingRateCardCreatedEvent,
        Events::V2BillingRateCardRateCreatedEvent.lookup_type => Events::V2BillingRateCardRateCreatedEvent,
        Events::V2BillingRateCardSubscriptionActivatedEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionActivatedEvent,
        Events::V2BillingRateCardSubscriptionCanceledEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCanceledEvent,
        Events::V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent,
        Events::V2BillingRateCardSubscriptionCollectionCurrentEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionCurrentEvent,
        Events::V2BillingRateCardSubscriptionCollectionPastDueEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionPastDueEvent,
        Events::V2BillingRateCardSubscriptionCollectionPausedEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionPausedEvent,
        Events::V2BillingRateCardSubscriptionCollectionUnpaidEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionUnpaidEvent,
        Events::V2BillingRateCardSubscriptionServicingActivatedEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingActivatedEvent,
        Events::V2BillingRateCardSubscriptionServicingCanceledEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingCanceledEvent,
        Events::V2BillingRateCardSubscriptionServicingPausedEvent.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingPausedEvent,
        Events::V2BillingRateCardUpdatedEvent.lookup_type => Events::V2BillingRateCardUpdatedEvent,
        Events::V2BillingRateCardVersionCreatedEvent.lookup_type =>
        Events::V2BillingRateCardVersionCreatedEvent,
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
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationStorerUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationStorerUpdatedEvent,
        Events::V2CoreAccountIncludingDefaultsUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingDefaultsUpdatedEvent,
        Events::V2CoreAccountIncludingIdentityUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingIdentityUpdatedEvent,
        Events::V2CoreAccountIncludingRequirementsUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingRequirementsUpdatedEvent,
        Events::V2CoreAccountLinkReturnedEvent.lookup_type => Events::V2CoreAccountLinkReturnedEvent,
        Events::V2CoreAccountPersonCreatedEvent.lookup_type => Events::V2CoreAccountPersonCreatedEvent,
        Events::V2CoreAccountPersonDeletedEvent.lookup_type => Events::V2CoreAccountPersonDeletedEvent,
        Events::V2CoreAccountPersonUpdatedEvent.lookup_type => Events::V2CoreAccountPersonUpdatedEvent,
        Events::V2CoreAccountUpdatedEvent.lookup_type => Events::V2CoreAccountUpdatedEvent,
        Events::V2CoreClaimableSandboxClaimedEvent.lookup_type =>
        Events::V2CoreClaimableSandboxClaimedEvent,
        Events::V2CoreClaimableSandboxCreatedEvent.lookup_type =>
        Events::V2CoreClaimableSandboxCreatedEvent,
        Events::V2CoreClaimableSandboxExpiredEvent.lookup_type =>
        Events::V2CoreClaimableSandboxExpiredEvent,
        Events::V2CoreClaimableSandboxExpiringEvent.lookup_type =>
        Events::V2CoreClaimableSandboxExpiringEvent,
        Events::V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent.lookup_type =>
        Events::V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent,
        Events::V2CoreEventDestinationPingEvent.lookup_type => Events::V2CoreEventDestinationPingEvent,
        Events::V2CoreHealthApiErrorFiringEvent.lookup_type => Events::V2CoreHealthApiErrorFiringEvent,
        Events::V2CoreHealthApiErrorResolvedEvent.lookup_type => Events::V2CoreHealthApiErrorResolvedEvent,
        Events::V2CoreHealthApiLatencyFiringEvent.lookup_type => Events::V2CoreHealthApiLatencyFiringEvent,
        Events::V2CoreHealthApiLatencyResolvedEvent.lookup_type =>
        Events::V2CoreHealthApiLatencyResolvedEvent,
        Events::V2CoreHealthAuthorizationRateDropFiringEvent.lookup_type =>
        Events::V2CoreHealthAuthorizationRateDropFiringEvent,
        Events::V2CoreHealthAuthorizationRateDropResolvedEvent.lookup_type =>
        Events::V2CoreHealthAuthorizationRateDropResolvedEvent,
        Events::V2CoreHealthEventGenerationFailureResolvedEvent.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEvent,
        Events::V2CoreHealthFraudRateIncreasedEvent.lookup_type =>
        Events::V2CoreHealthFraudRateIncreasedEvent,
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent,
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent,
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent,
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent,
        Events::V2CoreHealthPaymentMethodErrorFiringEvent.lookup_type =>
        Events::V2CoreHealthPaymentMethodErrorFiringEvent,
        Events::V2CoreHealthPaymentMethodErrorResolvedEvent.lookup_type =>
        Events::V2CoreHealthPaymentMethodErrorResolvedEvent,
        Events::V2CoreHealthTrafficVolumeDropFiringEvent.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropFiringEvent,
        Events::V2CoreHealthTrafficVolumeDropResolvedEvent.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropResolvedEvent,
        Events::V2CoreHealthWebhookLatencyFiringEvent.lookup_type =>
        Events::V2CoreHealthWebhookLatencyFiringEvent,
        Events::V2CoreHealthWebhookLatencyResolvedEvent.lookup_type =>
        Events::V2CoreHealthWebhookLatencyResolvedEvent,
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
        Events::V2MoneyManagementOutboundTransferUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUpdatedEvent,
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
        Events::V2MoneyManagementRecipientVerificationCreatedEvent.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationCreatedEvent,
        Events::V2MoneyManagementRecipientVerificationUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationUpdatedEvent,
        Events::V2MoneyManagementTransactionCreatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEvent,
        Events::V2MoneyManagementTransactionUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEvent,
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent,
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent,
        Events::V2PaymentsOffSessionPaymentCanceledEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentCanceledEvent,
        Events::V2PaymentsOffSessionPaymentCreatedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentCreatedEvent,
        Events::V2PaymentsOffSessionPaymentFailedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentFailedEvent,
        Events::V2PaymentsOffSessionPaymentSucceededEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentSucceededEvent,
        # v2 event types: The end of the section generated from our OpenAPI spec
      }
    end

    def self.event_notification_types_to_classes
      {
        # event notification types: The beginning of the section generated from our OpenAPI spec
        Events::V1AccountUpdatedEventNotification.lookup_type => Events::V1AccountUpdatedEventNotification,
        Events::V1ApplicationFeeCreatedEventNotification.lookup_type =>
        Events::V1ApplicationFeeCreatedEventNotification,
        Events::V1ApplicationFeeRefundedEventNotification.lookup_type =>
        Events::V1ApplicationFeeRefundedEventNotification,
        Events::V1BillingMeterErrorReportTriggeredEventNotification.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEventNotification,
        Events::V1BillingMeterNoMeterFoundEventNotification.lookup_type =>
        Events::V1BillingMeterNoMeterFoundEventNotification,
        Events::V1BillingPortalConfigurationCreatedEventNotification.lookup_type =>
        Events::V1BillingPortalConfigurationCreatedEventNotification,
        Events::V1BillingPortalConfigurationUpdatedEventNotification.lookup_type =>
        Events::V1BillingPortalConfigurationUpdatedEventNotification,
        Events::V1CapabilityUpdatedEventNotification.lookup_type =>
        Events::V1CapabilityUpdatedEventNotification,
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
        Events::V1CustomerCreatedEventNotification.lookup_type =>
        Events::V1CustomerCreatedEventNotification,
        Events::V1CustomerDeletedEventNotification.lookup_type =>
        Events::V1CustomerDeletedEventNotification,
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
        Events::V1FileCreatedEventNotification.lookup_type => Events::V1FileCreatedEventNotification,
        Events::V1FinancialConnectionsAccountCreatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountCreatedEventNotification,
        Events::V1FinancialConnectionsAccountDeactivatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountDeactivatedEventNotification,
        Events::V1FinancialConnectionsAccountDisconnectedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountDisconnectedEventNotification,
        Events::V1FinancialConnectionsAccountReactivatedEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountReactivatedEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedBalanceEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedBalanceEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedOwnershipEventNotification,
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEventNotification.lookup_type =>
        Events::V1FinancialConnectionsAccountRefreshedTransactionsEventNotification,
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
        Events::V2BillingBillSettingUpdatedEventNotification.lookup_type =>
        Events::V2BillingBillSettingUpdatedEventNotification,
        Events::V2BillingCadenceBilledEventNotification.lookup_type =>
        Events::V2BillingCadenceBilledEventNotification,
        Events::V2BillingCadenceCanceledEventNotification.lookup_type =>
        Events::V2BillingCadenceCanceledEventNotification,
        Events::V2BillingCadenceCreatedEventNotification.lookup_type =>
        Events::V2BillingCadenceCreatedEventNotification,
        Events::V2BillingLicenseFeeCreatedEventNotification.lookup_type =>
        Events::V2BillingLicenseFeeCreatedEventNotification,
        Events::V2BillingLicenseFeeUpdatedEventNotification.lookup_type =>
        Events::V2BillingLicenseFeeUpdatedEventNotification,
        Events::V2BillingLicenseFeeVersionCreatedEventNotification.lookup_type =>
        Events::V2BillingLicenseFeeVersionCreatedEventNotification,
        Events::V2BillingLicensedItemCreatedEventNotification.lookup_type =>
        Events::V2BillingLicensedItemCreatedEventNotification,
        Events::V2BillingLicensedItemUpdatedEventNotification.lookup_type =>
        Events::V2BillingLicensedItemUpdatedEventNotification,
        Events::V2BillingMeteredItemCreatedEventNotification.lookup_type =>
        Events::V2BillingMeteredItemCreatedEventNotification,
        Events::V2BillingMeteredItemUpdatedEventNotification.lookup_type =>
        Events::V2BillingMeteredItemUpdatedEventNotification,
        Events::V2BillingPricingPlanComponentCreatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanComponentCreatedEventNotification,
        Events::V2BillingPricingPlanComponentUpdatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanComponentUpdatedEventNotification,
        Events::V2BillingPricingPlanCreatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanCreatedEventNotification,
        Events::V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEventNotification,
        Events::V2BillingPricingPlanSubscriptionCollectionCurrentEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionCurrentEventNotification,
        Events::V2BillingPricingPlanSubscriptionCollectionPastDueEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionPastDueEventNotification,
        Events::V2BillingPricingPlanSubscriptionCollectionPausedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionPausedEventNotification,
        Events::V2BillingPricingPlanSubscriptionCollectionUnpaidEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionCollectionUnpaidEventNotification,
        Events::V2BillingPricingPlanSubscriptionServicingActivatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingActivatedEventNotification,
        Events::V2BillingPricingPlanSubscriptionServicingCanceledEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingCanceledEventNotification,
        Events::V2BillingPricingPlanSubscriptionServicingPausedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanSubscriptionServicingPausedEventNotification,
        Events::V2BillingPricingPlanUpdatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanUpdatedEventNotification,
        Events::V2BillingPricingPlanVersionCreatedEventNotification.lookup_type =>
        Events::V2BillingPricingPlanVersionCreatedEventNotification,
        Events::V2BillingRateCardCreatedEventNotification.lookup_type =>
        Events::V2BillingRateCardCreatedEventNotification,
        Events::V2BillingRateCardRateCreatedEventNotification.lookup_type =>
        Events::V2BillingRateCardRateCreatedEventNotification,
        Events::V2BillingRateCardSubscriptionActivatedEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionActivatedEventNotification,
        Events::V2BillingRateCardSubscriptionCanceledEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCanceledEventNotification,
        Events::V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEventNotification,
        Events::V2BillingRateCardSubscriptionCollectionCurrentEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionCurrentEventNotification,
        Events::V2BillingRateCardSubscriptionCollectionPastDueEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionPastDueEventNotification,
        Events::V2BillingRateCardSubscriptionCollectionPausedEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionPausedEventNotification,
        Events::V2BillingRateCardSubscriptionCollectionUnpaidEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionCollectionUnpaidEventNotification,
        Events::V2BillingRateCardSubscriptionServicingActivatedEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingActivatedEventNotification,
        Events::V2BillingRateCardSubscriptionServicingCanceledEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingCanceledEventNotification,
        Events::V2BillingRateCardSubscriptionServicingPausedEventNotification.lookup_type =>
        Events::V2BillingRateCardSubscriptionServicingPausedEventNotification,
        Events::V2BillingRateCardUpdatedEventNotification.lookup_type =>
        Events::V2BillingRateCardUpdatedEventNotification,
        Events::V2BillingRateCardVersionCreatedEventNotification.lookup_type =>
        Events::V2BillingRateCardVersionCreatedEventNotification,
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
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification,
        Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification,
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
        Events::V2CoreClaimableSandboxClaimedEventNotification.lookup_type =>
        Events::V2CoreClaimableSandboxClaimedEventNotification,
        Events::V2CoreClaimableSandboxCreatedEventNotification.lookup_type =>
        Events::V2CoreClaimableSandboxCreatedEventNotification,
        Events::V2CoreClaimableSandboxExpiredEventNotification.lookup_type =>
        Events::V2CoreClaimableSandboxExpiredEventNotification,
        Events::V2CoreClaimableSandboxExpiringEventNotification.lookup_type =>
        Events::V2CoreClaimableSandboxExpiringEventNotification,
        Events::V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEventNotification.lookup_type =>
        Events::V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEventNotification,
        Events::V2CoreEventDestinationPingEventNotification.lookup_type =>
        Events::V2CoreEventDestinationPingEventNotification,
        Events::V2CoreHealthApiErrorFiringEventNotification.lookup_type =>
        Events::V2CoreHealthApiErrorFiringEventNotification,
        Events::V2CoreHealthApiErrorResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthApiErrorResolvedEventNotification,
        Events::V2CoreHealthApiLatencyFiringEventNotification.lookup_type =>
        Events::V2CoreHealthApiLatencyFiringEventNotification,
        Events::V2CoreHealthApiLatencyResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthApiLatencyResolvedEventNotification,
        Events::V2CoreHealthAuthorizationRateDropFiringEventNotification.lookup_type =>
        Events::V2CoreHealthAuthorizationRateDropFiringEventNotification,
        Events::V2CoreHealthAuthorizationRateDropResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthAuthorizationRateDropResolvedEventNotification,
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification,
        Events::V2CoreHealthFraudRateIncreasedEventNotification.lookup_type =>
        Events::V2CoreHealthFraudRateIncreasedEventNotification,
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventNotification.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventNotification,
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEventNotification,
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEventNotification.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEventNotification,
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventNotification,
        Events::V2CoreHealthPaymentMethodErrorFiringEventNotification.lookup_type =>
        Events::V2CoreHealthPaymentMethodErrorFiringEventNotification,
        Events::V2CoreHealthPaymentMethodErrorResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthPaymentMethodErrorResolvedEventNotification,
        Events::V2CoreHealthTrafficVolumeDropFiringEventNotification.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropFiringEventNotification,
        Events::V2CoreHealthTrafficVolumeDropResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropResolvedEventNotification,
        Events::V2CoreHealthWebhookLatencyFiringEventNotification.lookup_type =>
        Events::V2CoreHealthWebhookLatencyFiringEventNotification,
        Events::V2CoreHealthWebhookLatencyResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthWebhookLatencyResolvedEventNotification,
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
        Events::V2MoneyManagementOutboundTransferUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementOutboundTransferUpdatedEventNotification,
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
        Events::V2MoneyManagementRecipientVerificationCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationCreatedEventNotification,
        Events::V2MoneyManagementRecipientVerificationUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationUpdatedEventNotification,
        Events::V2MoneyManagementTransactionCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEventNotification,
        Events::V2MoneyManagementTransactionUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEventNotification,
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEventNotification,
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEventNotification,
        Events::V2PaymentsOffSessionPaymentCanceledEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentCanceledEventNotification,
        Events::V2PaymentsOffSessionPaymentCreatedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentCreatedEventNotification,
        Events::V2PaymentsOffSessionPaymentFailedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentFailedEventNotification,
        Events::V2PaymentsOffSessionPaymentSucceededEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentSucceededEventNotification,
        # event notification types: The end of the section generated from our OpenAPI spec
      }
    end
  end
end
