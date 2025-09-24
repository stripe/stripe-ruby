# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.thin_event_names_to_classes
      {
        # The beginning of the section generated from our OpenAPI spec
        V1AccountUpdatedEvent.lookup_type => V1AccountUpdatedEvent,
        V1ApplicationFeeCreatedEvent.lookup_type => V1ApplicationFeeCreatedEvent,
        V1ApplicationFeeRefundedEvent.lookup_type => V1ApplicationFeeRefundedEvent,
        V1BillingMeterErrorReportTriggeredEvent.lookup_type => V1BillingMeterErrorReportTriggeredEvent,
        V1BillingMeterNoMeterFoundEvent.lookup_type => V1BillingMeterNoMeterFoundEvent,
        V1BillingPortalConfigurationCreatedEvent.lookup_type => V1BillingPortalConfigurationCreatedEvent,
        V1BillingPortalConfigurationUpdatedEvent.lookup_type => V1BillingPortalConfigurationUpdatedEvent,
        V1CapabilityUpdatedEvent.lookup_type => V1CapabilityUpdatedEvent,
        V1ChargeCapturedEvent.lookup_type => V1ChargeCapturedEvent,
        V1ChargeDisputeClosedEvent.lookup_type => V1ChargeDisputeClosedEvent,
        V1ChargeDisputeCreatedEvent.lookup_type => V1ChargeDisputeCreatedEvent,
        V1ChargeDisputeFundsReinstatedEvent.lookup_type => V1ChargeDisputeFundsReinstatedEvent,
        V1ChargeDisputeFundsWithdrawnEvent.lookup_type => V1ChargeDisputeFundsWithdrawnEvent,
        V1ChargeDisputeUpdatedEvent.lookup_type => V1ChargeDisputeUpdatedEvent,
        V1ChargeExpiredEvent.lookup_type => V1ChargeExpiredEvent,
        V1ChargeFailedEvent.lookup_type => V1ChargeFailedEvent,
        V1ChargePendingEvent.lookup_type => V1ChargePendingEvent,
        V1ChargeRefundUpdatedEvent.lookup_type => V1ChargeRefundUpdatedEvent,
        V1ChargeRefundedEvent.lookup_type => V1ChargeRefundedEvent,
        V1ChargeSucceededEvent.lookup_type => V1ChargeSucceededEvent,
        V1ChargeUpdatedEvent.lookup_type => V1ChargeUpdatedEvent,
        V1CheckoutSessionAsyncPaymentFailedEvent.lookup_type => V1CheckoutSessionAsyncPaymentFailedEvent,
        V1CheckoutSessionAsyncPaymentSucceededEvent.lookup_type =>
        V1CheckoutSessionAsyncPaymentSucceededEvent,
        V1CheckoutSessionCompletedEvent.lookup_type => V1CheckoutSessionCompletedEvent,
        V1CheckoutSessionExpiredEvent.lookup_type => V1CheckoutSessionExpiredEvent,
        V1ClimateOrderCanceledEvent.lookup_type => V1ClimateOrderCanceledEvent,
        V1ClimateOrderCreatedEvent.lookup_type => V1ClimateOrderCreatedEvent,
        V1ClimateOrderDelayedEvent.lookup_type => V1ClimateOrderDelayedEvent,
        V1ClimateOrderDeliveredEvent.lookup_type => V1ClimateOrderDeliveredEvent,
        V1ClimateOrderProductSubstitutedEvent.lookup_type => V1ClimateOrderProductSubstitutedEvent,
        V1ClimateProductCreatedEvent.lookup_type => V1ClimateProductCreatedEvent,
        V1ClimateProductPricingUpdatedEvent.lookup_type => V1ClimateProductPricingUpdatedEvent,
        V1CouponCreatedEvent.lookup_type => V1CouponCreatedEvent,
        V1CouponDeletedEvent.lookup_type => V1CouponDeletedEvent,
        V1CouponUpdatedEvent.lookup_type => V1CouponUpdatedEvent,
        V1CreditNoteCreatedEvent.lookup_type => V1CreditNoteCreatedEvent,
        V1CreditNoteUpdatedEvent.lookup_type => V1CreditNoteUpdatedEvent,
        V1CreditNoteVoidedEvent.lookup_type => V1CreditNoteVoidedEvent,
        V1CustomerCreatedEvent.lookup_type => V1CustomerCreatedEvent,
        V1CustomerDeletedEvent.lookup_type => V1CustomerDeletedEvent,
        V1CustomerDiscountCreatedEvent.lookup_type => V1CustomerDiscountCreatedEvent,
        V1CustomerDiscountDeletedEvent.lookup_type => V1CustomerDiscountDeletedEvent,
        V1CustomerDiscountUpdatedEvent.lookup_type => V1CustomerDiscountUpdatedEvent,
        V1CustomerSubscriptionCreatedEvent.lookup_type => V1CustomerSubscriptionCreatedEvent,
        V1CustomerSubscriptionDeletedEvent.lookup_type => V1CustomerSubscriptionDeletedEvent,
        V1CustomerSubscriptionPausedEvent.lookup_type => V1CustomerSubscriptionPausedEvent,
        V1CustomerSubscriptionPendingUpdateAppliedEvent.lookup_type =>
        V1CustomerSubscriptionPendingUpdateAppliedEvent,
        V1CustomerSubscriptionPendingUpdateExpiredEvent.lookup_type =>
        V1CustomerSubscriptionPendingUpdateExpiredEvent,
        V1CustomerSubscriptionResumedEvent.lookup_type => V1CustomerSubscriptionResumedEvent,
        V1CustomerSubscriptionTrialWillEndEvent.lookup_type => V1CustomerSubscriptionTrialWillEndEvent,
        V1CustomerSubscriptionUpdatedEvent.lookup_type => V1CustomerSubscriptionUpdatedEvent,
        V1CustomerTaxIdCreatedEvent.lookup_type => V1CustomerTaxIdCreatedEvent,
        V1CustomerTaxIdDeletedEvent.lookup_type => V1CustomerTaxIdDeletedEvent,
        V1CustomerTaxIdUpdatedEvent.lookup_type => V1CustomerTaxIdUpdatedEvent,
        V1CustomerUpdatedEvent.lookup_type => V1CustomerUpdatedEvent,
        V1FileCreatedEvent.lookup_type => V1FileCreatedEvent,
        V1FinancialConnectionsAccountCreatedEvent.lookup_type => V1FinancialConnectionsAccountCreatedEvent,
        V1FinancialConnectionsAccountDeactivatedEvent.lookup_type =>
        V1FinancialConnectionsAccountDeactivatedEvent,
        V1FinancialConnectionsAccountDisconnectedEvent.lookup_type =>
        V1FinancialConnectionsAccountDisconnectedEvent,
        V1FinancialConnectionsAccountReactivatedEvent.lookup_type =>
        V1FinancialConnectionsAccountReactivatedEvent,
        V1FinancialConnectionsAccountRefreshedBalanceEvent.lookup_type =>
        V1FinancialConnectionsAccountRefreshedBalanceEvent,
        V1FinancialConnectionsAccountRefreshedOwnershipEvent.lookup_type =>
        V1FinancialConnectionsAccountRefreshedOwnershipEvent,
        V1FinancialConnectionsAccountRefreshedTransactionsEvent.lookup_type =>
        V1FinancialConnectionsAccountRefreshedTransactionsEvent,
        V1IdentityVerificationSessionCanceledEvent.lookup_type =>
        V1IdentityVerificationSessionCanceledEvent,
        V1IdentityVerificationSessionCreatedEvent.lookup_type => V1IdentityVerificationSessionCreatedEvent,
        V1IdentityVerificationSessionProcessingEvent.lookup_type =>
        V1IdentityVerificationSessionProcessingEvent,
        V1IdentityVerificationSessionRedactedEvent.lookup_type =>
        V1IdentityVerificationSessionRedactedEvent,
        V1IdentityVerificationSessionRequiresInputEvent.lookup_type =>
        V1IdentityVerificationSessionRequiresInputEvent,
        V1IdentityVerificationSessionVerifiedEvent.lookup_type =>
        V1IdentityVerificationSessionVerifiedEvent,
        V1InvoiceCreatedEvent.lookup_type => V1InvoiceCreatedEvent,
        V1InvoiceDeletedEvent.lookup_type => V1InvoiceDeletedEvent,
        V1InvoiceFinalizationFailedEvent.lookup_type => V1InvoiceFinalizationFailedEvent,
        V1InvoiceFinalizedEvent.lookup_type => V1InvoiceFinalizedEvent,
        V1InvoiceMarkedUncollectibleEvent.lookup_type => V1InvoiceMarkedUncollectibleEvent,
        V1InvoiceOverdueEvent.lookup_type => V1InvoiceOverdueEvent,
        V1InvoiceOverpaidEvent.lookup_type => V1InvoiceOverpaidEvent,
        V1InvoicePaidEvent.lookup_type => V1InvoicePaidEvent,
        V1InvoicePaymentActionRequiredEvent.lookup_type => V1InvoicePaymentActionRequiredEvent,
        V1InvoicePaymentFailedEvent.lookup_type => V1InvoicePaymentFailedEvent,
        V1InvoicePaymentPaidEvent.lookup_type => V1InvoicePaymentPaidEvent,
        V1InvoicePaymentSucceededEvent.lookup_type => V1InvoicePaymentSucceededEvent,
        V1InvoiceSentEvent.lookup_type => V1InvoiceSentEvent,
        V1InvoiceUpcomingEvent.lookup_type => V1InvoiceUpcomingEvent,
        V1InvoiceUpdatedEvent.lookup_type => V1InvoiceUpdatedEvent,
        V1InvoiceVoidedEvent.lookup_type => V1InvoiceVoidedEvent,
        V1InvoiceWillBeDueEvent.lookup_type => V1InvoiceWillBeDueEvent,
        V1InvoiceitemCreatedEvent.lookup_type => V1InvoiceitemCreatedEvent,
        V1InvoiceitemDeletedEvent.lookup_type => V1InvoiceitemDeletedEvent,
        V1IssuingAuthorizationCreatedEvent.lookup_type => V1IssuingAuthorizationCreatedEvent,
        V1IssuingAuthorizationRequestEvent.lookup_type => V1IssuingAuthorizationRequestEvent,
        V1IssuingAuthorizationUpdatedEvent.lookup_type => V1IssuingAuthorizationUpdatedEvent,
        V1IssuingCardCreatedEvent.lookup_type => V1IssuingCardCreatedEvent,
        V1IssuingCardUpdatedEvent.lookup_type => V1IssuingCardUpdatedEvent,
        V1IssuingCardholderCreatedEvent.lookup_type => V1IssuingCardholderCreatedEvent,
        V1IssuingCardholderUpdatedEvent.lookup_type => V1IssuingCardholderUpdatedEvent,
        V1IssuingDisputeClosedEvent.lookup_type => V1IssuingDisputeClosedEvent,
        V1IssuingDisputeCreatedEvent.lookup_type => V1IssuingDisputeCreatedEvent,
        V1IssuingDisputeFundsReinstatedEvent.lookup_type => V1IssuingDisputeFundsReinstatedEvent,
        V1IssuingDisputeFundsRescindedEvent.lookup_type => V1IssuingDisputeFundsRescindedEvent,
        V1IssuingDisputeSubmittedEvent.lookup_type => V1IssuingDisputeSubmittedEvent,
        V1IssuingDisputeUpdatedEvent.lookup_type => V1IssuingDisputeUpdatedEvent,
        V1IssuingPersonalizationDesignActivatedEvent.lookup_type =>
        V1IssuingPersonalizationDesignActivatedEvent,
        V1IssuingPersonalizationDesignDeactivatedEvent.lookup_type =>
        V1IssuingPersonalizationDesignDeactivatedEvent,
        V1IssuingPersonalizationDesignRejectedEvent.lookup_type =>
        V1IssuingPersonalizationDesignRejectedEvent,
        V1IssuingPersonalizationDesignUpdatedEvent.lookup_type =>
        V1IssuingPersonalizationDesignUpdatedEvent,
        V1IssuingTokenCreatedEvent.lookup_type => V1IssuingTokenCreatedEvent,
        V1IssuingTokenUpdatedEvent.lookup_type => V1IssuingTokenUpdatedEvent,
        V1IssuingTransactionCreatedEvent.lookup_type => V1IssuingTransactionCreatedEvent,
        V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent.lookup_type =>
        V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent,
        V1IssuingTransactionUpdatedEvent.lookup_type => V1IssuingTransactionUpdatedEvent,
        V1MandateUpdatedEvent.lookup_type => V1MandateUpdatedEvent,
        V1PaymentIntentAmountCapturableUpdatedEvent.lookup_type =>
        V1PaymentIntentAmountCapturableUpdatedEvent,
        V1PaymentIntentCanceledEvent.lookup_type => V1PaymentIntentCanceledEvent,
        V1PaymentIntentCreatedEvent.lookup_type => V1PaymentIntentCreatedEvent,
        V1PaymentIntentPartiallyFundedEvent.lookup_type => V1PaymentIntentPartiallyFundedEvent,
        V1PaymentIntentPaymentFailedEvent.lookup_type => V1PaymentIntentPaymentFailedEvent,
        V1PaymentIntentProcessingEvent.lookup_type => V1PaymentIntentProcessingEvent,
        V1PaymentIntentRequiresActionEvent.lookup_type => V1PaymentIntentRequiresActionEvent,
        V1PaymentIntentSucceededEvent.lookup_type => V1PaymentIntentSucceededEvent,
        V1PaymentLinkCreatedEvent.lookup_type => V1PaymentLinkCreatedEvent,
        V1PaymentLinkUpdatedEvent.lookup_type => V1PaymentLinkUpdatedEvent,
        V1PaymentMethodAttachedEvent.lookup_type => V1PaymentMethodAttachedEvent,
        V1PaymentMethodAutomaticallyUpdatedEvent.lookup_type => V1PaymentMethodAutomaticallyUpdatedEvent,
        V1PaymentMethodDetachedEvent.lookup_type => V1PaymentMethodDetachedEvent,
        V1PaymentMethodUpdatedEvent.lookup_type => V1PaymentMethodUpdatedEvent,
        V1PayoutCanceledEvent.lookup_type => V1PayoutCanceledEvent,
        V1PayoutCreatedEvent.lookup_type => V1PayoutCreatedEvent,
        V1PayoutFailedEvent.lookup_type => V1PayoutFailedEvent,
        V1PayoutPaidEvent.lookup_type => V1PayoutPaidEvent,
        V1PayoutReconciliationCompletedEvent.lookup_type => V1PayoutReconciliationCompletedEvent,
        V1PayoutUpdatedEvent.lookup_type => V1PayoutUpdatedEvent,
        V1PersonCreatedEvent.lookup_type => V1PersonCreatedEvent,
        V1PersonDeletedEvent.lookup_type => V1PersonDeletedEvent,
        V1PersonUpdatedEvent.lookup_type => V1PersonUpdatedEvent,
        V1PlanCreatedEvent.lookup_type => V1PlanCreatedEvent,
        V1PlanDeletedEvent.lookup_type => V1PlanDeletedEvent,
        V1PlanUpdatedEvent.lookup_type => V1PlanUpdatedEvent,
        V1PriceCreatedEvent.lookup_type => V1PriceCreatedEvent,
        V1PriceDeletedEvent.lookup_type => V1PriceDeletedEvent,
        V1PriceUpdatedEvent.lookup_type => V1PriceUpdatedEvent,
        V1ProductCreatedEvent.lookup_type => V1ProductCreatedEvent,
        V1ProductDeletedEvent.lookup_type => V1ProductDeletedEvent,
        V1ProductUpdatedEvent.lookup_type => V1ProductUpdatedEvent,
        V1PromotionCodeCreatedEvent.lookup_type => V1PromotionCodeCreatedEvent,
        V1PromotionCodeUpdatedEvent.lookup_type => V1PromotionCodeUpdatedEvent,
        V1QuoteAcceptedEvent.lookup_type => V1QuoteAcceptedEvent,
        V1QuoteCanceledEvent.lookup_type => V1QuoteCanceledEvent,
        V1QuoteCreatedEvent.lookup_type => V1QuoteCreatedEvent,
        V1QuoteFinalizedEvent.lookup_type => V1QuoteFinalizedEvent,
        V1RadarEarlyFraudWarningCreatedEvent.lookup_type => V1RadarEarlyFraudWarningCreatedEvent,
        V1RadarEarlyFraudWarningUpdatedEvent.lookup_type => V1RadarEarlyFraudWarningUpdatedEvent,
        V1RefundCreatedEvent.lookup_type => V1RefundCreatedEvent,
        V1RefundFailedEvent.lookup_type => V1RefundFailedEvent,
        V1RefundUpdatedEvent.lookup_type => V1RefundUpdatedEvent,
        V1ReviewClosedEvent.lookup_type => V1ReviewClosedEvent,
        V1ReviewOpenedEvent.lookup_type => V1ReviewOpenedEvent,
        V1SetupIntentCanceledEvent.lookup_type => V1SetupIntentCanceledEvent,
        V1SetupIntentCreatedEvent.lookup_type => V1SetupIntentCreatedEvent,
        V1SetupIntentRequiresActionEvent.lookup_type => V1SetupIntentRequiresActionEvent,
        V1SetupIntentSetupFailedEvent.lookup_type => V1SetupIntentSetupFailedEvent,
        V1SetupIntentSucceededEvent.lookup_type => V1SetupIntentSucceededEvent,
        V1SigmaScheduledQueryRunCreatedEvent.lookup_type => V1SigmaScheduledQueryRunCreatedEvent,
        V1SourceCanceledEvent.lookup_type => V1SourceCanceledEvent,
        V1SourceChargeableEvent.lookup_type => V1SourceChargeableEvent,
        V1SourceFailedEvent.lookup_type => V1SourceFailedEvent,
        V1SourceRefundAttributesRequiredEvent.lookup_type => V1SourceRefundAttributesRequiredEvent,
        V1SubscriptionScheduleAbortedEvent.lookup_type => V1SubscriptionScheduleAbortedEvent,
        V1SubscriptionScheduleCanceledEvent.lookup_type => V1SubscriptionScheduleCanceledEvent,
        V1SubscriptionScheduleCompletedEvent.lookup_type => V1SubscriptionScheduleCompletedEvent,
        V1SubscriptionScheduleCreatedEvent.lookup_type => V1SubscriptionScheduleCreatedEvent,
        V1SubscriptionScheduleExpiringEvent.lookup_type => V1SubscriptionScheduleExpiringEvent,
        V1SubscriptionScheduleReleasedEvent.lookup_type => V1SubscriptionScheduleReleasedEvent,
        V1SubscriptionScheduleUpdatedEvent.lookup_type => V1SubscriptionScheduleUpdatedEvent,
        V1TaxRateCreatedEvent.lookup_type => V1TaxRateCreatedEvent,
        V1TaxRateUpdatedEvent.lookup_type => V1TaxRateUpdatedEvent,
        V1TerminalReaderActionFailedEvent.lookup_type => V1TerminalReaderActionFailedEvent,
        V1TerminalReaderActionSucceededEvent.lookup_type => V1TerminalReaderActionSucceededEvent,
        V1TerminalReaderActionUpdatedEvent.lookup_type => V1TerminalReaderActionUpdatedEvent,
        V1TestHelpersTestClockAdvancingEvent.lookup_type => V1TestHelpersTestClockAdvancingEvent,
        V1TestHelpersTestClockCreatedEvent.lookup_type => V1TestHelpersTestClockCreatedEvent,
        V1TestHelpersTestClockDeletedEvent.lookup_type => V1TestHelpersTestClockDeletedEvent,
        V1TestHelpersTestClockInternalFailureEvent.lookup_type =>
        V1TestHelpersTestClockInternalFailureEvent,
        V1TestHelpersTestClockReadyEvent.lookup_type => V1TestHelpersTestClockReadyEvent,
        V1TopupCanceledEvent.lookup_type => V1TopupCanceledEvent,
        V1TopupCreatedEvent.lookup_type => V1TopupCreatedEvent,
        V1TopupFailedEvent.lookup_type => V1TopupFailedEvent,
        V1TopupReversedEvent.lookup_type => V1TopupReversedEvent,
        V1TopupSucceededEvent.lookup_type => V1TopupSucceededEvent,
        V1TransferCreatedEvent.lookup_type => V1TransferCreatedEvent,
        V1TransferReversedEvent.lookup_type => V1TransferReversedEvent,
        V1TransferUpdatedEvent.lookup_type => V1TransferUpdatedEvent,
        V2BillingBillSettingUpdatedEvent.lookup_type => V2BillingBillSettingUpdatedEvent,
        V2BillingCadenceBilledEvent.lookup_type => V2BillingCadenceBilledEvent,
        V2BillingCadenceCanceledEvent.lookup_type => V2BillingCadenceCanceledEvent,
        V2BillingCadenceCreatedEvent.lookup_type => V2BillingCadenceCreatedEvent,
        V2BillingLicenseFeeCreatedEvent.lookup_type => V2BillingLicenseFeeCreatedEvent,
        V2BillingLicenseFeeUpdatedEvent.lookup_type => V2BillingLicenseFeeUpdatedEvent,
        V2BillingLicenseFeeVersionCreatedEvent.lookup_type => V2BillingLicenseFeeVersionCreatedEvent,
        V2BillingLicensedItemCreatedEvent.lookup_type => V2BillingLicensedItemCreatedEvent,
        V2BillingLicensedItemUpdatedEvent.lookup_type => V2BillingLicensedItemUpdatedEvent,
        V2BillingMeteredItemCreatedEvent.lookup_type => V2BillingMeteredItemCreatedEvent,
        V2BillingMeteredItemUpdatedEvent.lookup_type => V2BillingMeteredItemUpdatedEvent,
        V2BillingPricingPlanComponentCreatedEvent.lookup_type => V2BillingPricingPlanComponentCreatedEvent,
        V2BillingPricingPlanComponentUpdatedEvent.lookup_type => V2BillingPricingPlanComponentUpdatedEvent,
        V2BillingPricingPlanCreatedEvent.lookup_type => V2BillingPricingPlanCreatedEvent,
        V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent,
        V2BillingPricingPlanSubscriptionCollectionCurrentEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionCollectionCurrentEvent,
        V2BillingPricingPlanSubscriptionCollectionPastDueEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionCollectionPastDueEvent,
        V2BillingPricingPlanSubscriptionCollectionPausedEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionCollectionPausedEvent,
        V2BillingPricingPlanSubscriptionCollectionUnpaidEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionCollectionUnpaidEvent,
        V2BillingPricingPlanSubscriptionServicingActivatedEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionServicingActivatedEvent,
        V2BillingPricingPlanSubscriptionServicingCanceledEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionServicingCanceledEvent,
        V2BillingPricingPlanSubscriptionServicingPausedEvent.lookup_type =>
        V2BillingPricingPlanSubscriptionServicingPausedEvent,
        V2BillingPricingPlanUpdatedEvent.lookup_type => V2BillingPricingPlanUpdatedEvent,
        V2BillingPricingPlanVersionCreatedEvent.lookup_type => V2BillingPricingPlanVersionCreatedEvent,
        V2BillingRateCardCreatedEvent.lookup_type => V2BillingRateCardCreatedEvent,
        V2BillingRateCardRateCreatedEvent.lookup_type => V2BillingRateCardRateCreatedEvent,
        V2BillingRateCardSubscriptionActivatedEvent.lookup_type =>
        V2BillingRateCardSubscriptionActivatedEvent,
        V2BillingRateCardSubscriptionCanceledEvent.lookup_type =>
        V2BillingRateCardSubscriptionCanceledEvent,
        V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent.lookup_type =>
        V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent,
        V2BillingRateCardSubscriptionCollectionCurrentEvent.lookup_type =>
        V2BillingRateCardSubscriptionCollectionCurrentEvent,
        V2BillingRateCardSubscriptionCollectionPastDueEvent.lookup_type =>
        V2BillingRateCardSubscriptionCollectionPastDueEvent,
        V2BillingRateCardSubscriptionCollectionPausedEvent.lookup_type =>
        V2BillingRateCardSubscriptionCollectionPausedEvent,
        V2BillingRateCardSubscriptionCollectionUnpaidEvent.lookup_type =>
        V2BillingRateCardSubscriptionCollectionUnpaidEvent,
        V2BillingRateCardSubscriptionServicingActivatedEvent.lookup_type =>
        V2BillingRateCardSubscriptionServicingActivatedEvent,
        V2BillingRateCardSubscriptionServicingCanceledEvent.lookup_type =>
        V2BillingRateCardSubscriptionServicingCanceledEvent,
        V2BillingRateCardSubscriptionServicingPausedEvent.lookup_type =>
        V2BillingRateCardSubscriptionServicingPausedEvent,
        V2BillingRateCardUpdatedEvent.lookup_type => V2BillingRateCardUpdatedEvent,
        V2BillingRateCardVersionCreatedEvent.lookup_type => V2BillingRateCardVersionCreatedEvent,
        V2CoreAccountClosedEvent.lookup_type => V2CoreAccountClosedEvent,
        V2CoreAccountCreatedEvent.lookup_type => V2CoreAccountCreatedEvent,
        V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent,
        V2CoreAccountIncludingConfigurationCustomerUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationCustomerUpdatedEvent,
        V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent,
        V2CoreAccountIncludingConfigurationMerchantUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationMerchantUpdatedEvent,
        V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent,
        V2CoreAccountIncludingConfigurationRecipientUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationRecipientUpdatedEvent,
        V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent,
        V2CoreAccountIncludingConfigurationStorerUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingConfigurationStorerUpdatedEvent,
        V2CoreAccountIncludingDefaultsUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingDefaultsUpdatedEvent,
        V2CoreAccountIncludingIdentityUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingIdentityUpdatedEvent,
        V2CoreAccountIncludingRequirementsUpdatedEvent.lookup_type =>
        V2CoreAccountIncludingRequirementsUpdatedEvent,
        V2CoreAccountLinkReturnedEvent.lookup_type => V2CoreAccountLinkReturnedEvent,
        V2CoreAccountPersonCreatedEvent.lookup_type => V2CoreAccountPersonCreatedEvent,
        V2CoreAccountPersonDeletedEvent.lookup_type => V2CoreAccountPersonDeletedEvent,
        V2CoreAccountPersonUpdatedEvent.lookup_type => V2CoreAccountPersonUpdatedEvent,
        V2CoreAccountUpdatedEvent.lookup_type => V2CoreAccountUpdatedEvent,
        V2CoreClaimableSandboxClaimedEvent.lookup_type => V2CoreClaimableSandboxClaimedEvent,
        V2CoreClaimableSandboxCreatedEvent.lookup_type => V2CoreClaimableSandboxCreatedEvent,
        V2CoreClaimableSandboxExpiredEvent.lookup_type => V2CoreClaimableSandboxExpiredEvent,
        V2CoreClaimableSandboxExpiringEvent.lookup_type => V2CoreClaimableSandboxExpiringEvent,
        V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent.lookup_type =>
        V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent,
        V2CoreEventDestinationPingEvent.lookup_type => V2CoreEventDestinationPingEvent,
        V2CoreHealthApiErrorFiringEvent.lookup_type => V2CoreHealthApiErrorFiringEvent,
        V2CoreHealthApiErrorResolvedEvent.lookup_type => V2CoreHealthApiErrorResolvedEvent,
        V2CoreHealthApiLatencyFiringEvent.lookup_type => V2CoreHealthApiLatencyFiringEvent,
        V2CoreHealthApiLatencyResolvedEvent.lookup_type => V2CoreHealthApiLatencyResolvedEvent,
        V2CoreHealthAuthorizationRateDropFiringEvent.lookup_type =>
        V2CoreHealthAuthorizationRateDropFiringEvent,
        V2CoreHealthAuthorizationRateDropResolvedEvent.lookup_type =>
        V2CoreHealthAuthorizationRateDropResolvedEvent,
        V2CoreHealthEventGenerationFailureResolvedEvent.lookup_type =>
        V2CoreHealthEventGenerationFailureResolvedEvent,
        V2CoreHealthFraudRateIncreasedEvent.lookup_type => V2CoreHealthFraudRateIncreasedEvent,
        V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.lookup_type =>
        V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent,
        V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.lookup_type =>
        V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent,
        V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.lookup_type =>
        V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent,
        V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.lookup_type =>
        V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent,
        V2CoreHealthPaymentMethodErrorFiringEvent.lookup_type => V2CoreHealthPaymentMethodErrorFiringEvent,
        V2CoreHealthPaymentMethodErrorResolvedEvent.lookup_type =>
        V2CoreHealthPaymentMethodErrorResolvedEvent,
        V2CoreHealthTrafficVolumeDropFiringEvent.lookup_type => V2CoreHealthTrafficVolumeDropFiringEvent,
        V2CoreHealthTrafficVolumeDropResolvedEvent.lookup_type =>
        V2CoreHealthTrafficVolumeDropResolvedEvent,
        V2CoreHealthWebhookLatencyFiringEvent.lookup_type => V2CoreHealthWebhookLatencyFiringEvent,
        V2CoreHealthWebhookLatencyResolvedEvent.lookup_type => V2CoreHealthWebhookLatencyResolvedEvent,
        V2MoneyManagementAdjustmentCreatedEvent.lookup_type => V2MoneyManagementAdjustmentCreatedEvent,
        V2MoneyManagementFinancialAccountCreatedEvent.lookup_type =>
        V2MoneyManagementFinancialAccountCreatedEvent,
        V2MoneyManagementFinancialAccountUpdatedEvent.lookup_type =>
        V2MoneyManagementFinancialAccountUpdatedEvent,
        V2MoneyManagementFinancialAddressActivatedEvent.lookup_type =>
        V2MoneyManagementFinancialAddressActivatedEvent,
        V2MoneyManagementFinancialAddressFailedEvent.lookup_type =>
        V2MoneyManagementFinancialAddressFailedEvent,
        V2MoneyManagementInboundTransferAvailableEvent.lookup_type =>
        V2MoneyManagementInboundTransferAvailableEvent,
        V2MoneyManagementInboundTransferBankDebitFailedEvent.lookup_type =>
        V2MoneyManagementInboundTransferBankDebitFailedEvent,
        V2MoneyManagementInboundTransferBankDebitProcessingEvent.lookup_type =>
        V2MoneyManagementInboundTransferBankDebitProcessingEvent,
        V2MoneyManagementInboundTransferBankDebitQueuedEvent.lookup_type =>
        V2MoneyManagementInboundTransferBankDebitQueuedEvent,
        V2MoneyManagementInboundTransferBankDebitReturnedEvent.lookup_type =>
        V2MoneyManagementInboundTransferBankDebitReturnedEvent,
        V2MoneyManagementInboundTransferBankDebitSucceededEvent.lookup_type =>
        V2MoneyManagementInboundTransferBankDebitSucceededEvent,
        V2MoneyManagementOutboundPaymentCanceledEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentCanceledEvent,
        V2MoneyManagementOutboundPaymentCreatedEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentCreatedEvent,
        V2MoneyManagementOutboundPaymentFailedEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentFailedEvent,
        V2MoneyManagementOutboundPaymentPostedEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentPostedEvent,
        V2MoneyManagementOutboundPaymentReturnedEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentReturnedEvent,
        V2MoneyManagementOutboundPaymentUpdatedEvent.lookup_type =>
        V2MoneyManagementOutboundPaymentUpdatedEvent,
        V2MoneyManagementOutboundTransferCanceledEvent.lookup_type =>
        V2MoneyManagementOutboundTransferCanceledEvent,
        V2MoneyManagementOutboundTransferCreatedEvent.lookup_type =>
        V2MoneyManagementOutboundTransferCreatedEvent,
        V2MoneyManagementOutboundTransferFailedEvent.lookup_type =>
        V2MoneyManagementOutboundTransferFailedEvent,
        V2MoneyManagementOutboundTransferPostedEvent.lookup_type =>
        V2MoneyManagementOutboundTransferPostedEvent,
        V2MoneyManagementOutboundTransferReturnedEvent.lookup_type =>
        V2MoneyManagementOutboundTransferReturnedEvent,
        V2MoneyManagementOutboundTransferUpdatedEvent.lookup_type =>
        V2MoneyManagementOutboundTransferUpdatedEvent,
        V2MoneyManagementPayoutMethodUpdatedEvent.lookup_type => V2MoneyManagementPayoutMethodUpdatedEvent,
        V2MoneyManagementReceivedCreditAvailableEvent.lookup_type =>
        V2MoneyManagementReceivedCreditAvailableEvent,
        V2MoneyManagementReceivedCreditFailedEvent.lookup_type =>
        V2MoneyManagementReceivedCreditFailedEvent,
        V2MoneyManagementReceivedCreditReturnedEvent.lookup_type =>
        V2MoneyManagementReceivedCreditReturnedEvent,
        V2MoneyManagementReceivedCreditSucceededEvent.lookup_type =>
        V2MoneyManagementReceivedCreditSucceededEvent,
        V2MoneyManagementReceivedDebitCanceledEvent.lookup_type =>
        V2MoneyManagementReceivedDebitCanceledEvent,
        V2MoneyManagementReceivedDebitFailedEvent.lookup_type => V2MoneyManagementReceivedDebitFailedEvent,
        V2MoneyManagementReceivedDebitPendingEvent.lookup_type =>
        V2MoneyManagementReceivedDebitPendingEvent,
        V2MoneyManagementReceivedDebitSucceededEvent.lookup_type =>
        V2MoneyManagementReceivedDebitSucceededEvent,
        V2MoneyManagementReceivedDebitUpdatedEvent.lookup_type =>
        V2MoneyManagementReceivedDebitUpdatedEvent,
        V2MoneyManagementRecipientVerificationCreatedEvent.lookup_type =>
        V2MoneyManagementRecipientVerificationCreatedEvent,
        V2MoneyManagementRecipientVerificationUpdatedEvent.lookup_type =>
        V2MoneyManagementRecipientVerificationUpdatedEvent,
        V2MoneyManagementTransactionCreatedEvent.lookup_type => V2MoneyManagementTransactionCreatedEvent,
        V2MoneyManagementTransactionUpdatedEvent.lookup_type => V2MoneyManagementTransactionUpdatedEvent,
        V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent.lookup_type =>
        V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent,
        V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent.lookup_type =>
        V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent,
        V2PaymentsOffSessionPaymentCanceledEvent.lookup_type => V2PaymentsOffSessionPaymentCanceledEvent,
        V2PaymentsOffSessionPaymentCreatedEvent.lookup_type => V2PaymentsOffSessionPaymentCreatedEvent,
        V2PaymentsOffSessionPaymentFailedEvent.lookup_type => V2PaymentsOffSessionPaymentFailedEvent,
        V2PaymentsOffSessionPaymentSucceededEvent.lookup_type => V2PaymentsOffSessionPaymentSucceededEvent,
        # The end of the section generated from our OpenAPI spec
      }
    end
  end
end
