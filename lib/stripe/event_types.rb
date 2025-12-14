# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.v2_event_types_to_classes
      {
        # v2 event types: The beginning of the section generated from our OpenAPI spec
        Events::V1BillingMeterErrorReportTriggeredEvent.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEvent,
        Events::V1BillingMeterNoMeterFoundEvent.lookup_type => Events::V1BillingMeterNoMeterFoundEvent,
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
        Events::V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEvent,
        Events::V2CoreAccountIncludingConfigurationCardCreatorUpdatedEvent.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCardCreatorUpdatedEvent,
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
        Events::V2CoreHealthSepaDebitDelayedFiringEvent.lookup_type =>
        Events::V2CoreHealthSepaDebitDelayedFiringEvent,
        Events::V2CoreHealthSepaDebitDelayedResolvedEvent.lookup_type =>
        Events::V2CoreHealthSepaDebitDelayedResolvedEvent,
        Events::V2CoreHealthTrafficVolumeDropFiringEvent.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropFiringEvent,
        Events::V2CoreHealthTrafficVolumeDropResolvedEvent.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropResolvedEvent,
        Events::V2CoreHealthWebhookLatencyFiringEvent.lookup_type =>
        Events::V2CoreHealthWebhookLatencyFiringEvent,
        Events::V2CoreHealthWebhookLatencyResolvedEvent.lookup_type =>
        Events::V2CoreHealthWebhookLatencyResolvedEvent,
        Events::V2IamApiKeyCreatedEvent.lookup_type => Events::V2IamApiKeyCreatedEvent,
        Events::V2IamApiKeyDefaultSecretRevealedEvent.lookup_type =>
        Events::V2IamApiKeyDefaultSecretRevealedEvent,
        Events::V2IamApiKeyExpiredEvent.lookup_type => Events::V2IamApiKeyExpiredEvent,
        Events::V2IamApiKeyPermissionsUpdatedEvent.lookup_type =>
        Events::V2IamApiKeyPermissionsUpdatedEvent,
        Events::V2IamApiKeyRotatedEvent.lookup_type => Events::V2IamApiKeyRotatedEvent,
        Events::V2IamApiKeyUpdatedEvent.lookup_type => Events::V2IamApiKeyUpdatedEvent,
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
        Events::V2MoneyManagementRecipientVerificationCreatedEvent.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationCreatedEvent,
        Events::V2MoneyManagementRecipientVerificationUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationUpdatedEvent,
        Events::V2MoneyManagementTransactionCreatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEvent,
        Events::V2MoneyManagementTransactionUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEvent,
        Events::V2PaymentsOffSessionPaymentAttemptFailedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAttemptFailedEvent,
        Events::V2PaymentsOffSessionPaymentAttemptStartedEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAttemptStartedEvent,
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
        Events::V2PaymentsOffSessionPaymentRequiresCaptureEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentRequiresCaptureEvent,
        Events::V2PaymentsOffSessionPaymentSucceededEvent.lookup_type =>
        Events::V2PaymentsOffSessionPaymentSucceededEvent,
        Events::V2PaymentsSettlementAllocationIntentCanceledEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentCanceledEvent,
        Events::V2PaymentsSettlementAllocationIntentCreatedEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentCreatedEvent,
        Events::V2PaymentsSettlementAllocationIntentErroredEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentErroredEvent,
        Events::V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent,
        Events::V2PaymentsSettlementAllocationIntentMatchedEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentMatchedEvent,
        Events::V2PaymentsSettlementAllocationIntentNotFoundEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentNotFoundEvent,
        Events::V2PaymentsSettlementAllocationIntentSettledEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSettledEvent,
        Events::V2PaymentsSettlementAllocationIntentSplitCanceledEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitCanceledEvent,
        Events::V2PaymentsSettlementAllocationIntentSplitCreatedEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitCreatedEvent,
        Events::V2PaymentsSettlementAllocationIntentSplitSettledEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitSettledEvent,
        Events::V2PaymentsSettlementAllocationIntentSubmittedEvent.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSubmittedEvent,
        Events::V2ReportingReportRunCreatedEvent.lookup_type => Events::V2ReportingReportRunCreatedEvent,
        Events::V2ReportingReportRunFailedEvent.lookup_type => Events::V2ReportingReportRunFailedEvent,
        Events::V2ReportingReportRunSucceededEvent.lookup_type =>
        Events::V2ReportingReportRunSucceededEvent,
        Events::V2ReportingReportRunUpdatedEvent.lookup_type => Events::V2ReportingReportRunUpdatedEvent,
        # v2 event types: The end of the section generated from our OpenAPI spec
      }
    end

    def self.event_notification_types_to_classes
      {
        # event notification types: The beginning of the section generated from our OpenAPI spec
        Events::V1BillingMeterErrorReportTriggeredEventNotification.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEventNotification,
        Events::V1BillingMeterNoMeterFoundEventNotification.lookup_type =>
        Events::V1BillingMeterNoMeterFoundEventNotification,
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
        Events::V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEventNotification,
        Events::V2CoreAccountIncludingConfigurationCardCreatorUpdatedEventNotification.lookup_type =>
        Events::V2CoreAccountIncludingConfigurationCardCreatorUpdatedEventNotification,
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
        Events::V2CoreHealthSepaDebitDelayedFiringEventNotification.lookup_type =>
        Events::V2CoreHealthSepaDebitDelayedFiringEventNotification,
        Events::V2CoreHealthSepaDebitDelayedResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthSepaDebitDelayedResolvedEventNotification,
        Events::V2CoreHealthTrafficVolumeDropFiringEventNotification.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropFiringEventNotification,
        Events::V2CoreHealthTrafficVolumeDropResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthTrafficVolumeDropResolvedEventNotification,
        Events::V2CoreHealthWebhookLatencyFiringEventNotification.lookup_type =>
        Events::V2CoreHealthWebhookLatencyFiringEventNotification,
        Events::V2CoreHealthWebhookLatencyResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthWebhookLatencyResolvedEventNotification,
        Events::V2IamApiKeyCreatedEventNotification.lookup_type =>
        Events::V2IamApiKeyCreatedEventNotification,
        Events::V2IamApiKeyDefaultSecretRevealedEventNotification.lookup_type =>
        Events::V2IamApiKeyDefaultSecretRevealedEventNotification,
        Events::V2IamApiKeyExpiredEventNotification.lookup_type =>
        Events::V2IamApiKeyExpiredEventNotification,
        Events::V2IamApiKeyPermissionsUpdatedEventNotification.lookup_type =>
        Events::V2IamApiKeyPermissionsUpdatedEventNotification,
        Events::V2IamApiKeyRotatedEventNotification.lookup_type =>
        Events::V2IamApiKeyRotatedEventNotification,
        Events::V2IamApiKeyUpdatedEventNotification.lookup_type =>
        Events::V2IamApiKeyUpdatedEventNotification,
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
        Events::V2MoneyManagementRecipientVerificationCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationCreatedEventNotification,
        Events::V2MoneyManagementRecipientVerificationUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementRecipientVerificationUpdatedEventNotification,
        Events::V2MoneyManagementTransactionCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEventNotification,
        Events::V2MoneyManagementTransactionUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEventNotification,
        Events::V2PaymentsOffSessionPaymentAttemptFailedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAttemptFailedEventNotification,
        Events::V2PaymentsOffSessionPaymentAttemptStartedEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentAttemptStartedEventNotification,
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
        Events::V2PaymentsOffSessionPaymentRequiresCaptureEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentRequiresCaptureEventNotification,
        Events::V2PaymentsOffSessionPaymentSucceededEventNotification.lookup_type =>
        Events::V2PaymentsOffSessionPaymentSucceededEventNotification,
        Events::V2PaymentsSettlementAllocationIntentCanceledEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentCanceledEventNotification,
        Events::V2PaymentsSettlementAllocationIntentCreatedEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentCreatedEventNotification,
        Events::V2PaymentsSettlementAllocationIntentErroredEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentErroredEventNotification,
        Events::V2PaymentsSettlementAllocationIntentFundsNotReceivedEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentFundsNotReceivedEventNotification,
        Events::V2PaymentsSettlementAllocationIntentMatchedEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentMatchedEventNotification,
        Events::V2PaymentsSettlementAllocationIntentNotFoundEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentNotFoundEventNotification,
        Events::V2PaymentsSettlementAllocationIntentSettledEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSettledEventNotification,
        Events::V2PaymentsSettlementAllocationIntentSplitCanceledEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitCanceledEventNotification,
        Events::V2PaymentsSettlementAllocationIntentSplitCreatedEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitCreatedEventNotification,
        Events::V2PaymentsSettlementAllocationIntentSplitSettledEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSplitSettledEventNotification,
        Events::V2PaymentsSettlementAllocationIntentSubmittedEventNotification.lookup_type =>
        Events::V2PaymentsSettlementAllocationIntentSubmittedEventNotification,
        Events::V2ReportingReportRunCreatedEventNotification.lookup_type =>
        Events::V2ReportingReportRunCreatedEventNotification,
        Events::V2ReportingReportRunFailedEventNotification.lookup_type =>
        Events::V2ReportingReportRunFailedEventNotification,
        Events::V2ReportingReportRunSucceededEventNotification.lookup_type =>
        Events::V2ReportingReportRunSucceededEventNotification,
        Events::V2ReportingReportRunUpdatedEventNotification.lookup_type =>
        Events::V2ReportingReportRunUpdatedEventNotification,
        # event notification types: The end of the section generated from our OpenAPI spec
      }
    end
  end
end
