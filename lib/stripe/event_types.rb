# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.v2_event_types_to_classes
      {
        # v2 event types: The beginning of the section generated from our OpenAPI spec
        Events::V1BillingMeterErrorReportTriggeredEvent.lookup_type =>
        Events::V1BillingMeterErrorReportTriggeredEvent,
        Events::V1BillingMeterNoMeterFoundEvent.lookup_type => Events::V1BillingMeterNoMeterFoundEvent,
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
        Events::V2CoreEventDestinationPingEvent.lookup_type => Events::V2CoreEventDestinationPingEvent,
        Events::V2CoreHealthEventGenerationFailureResolvedEvent.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEvent,
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
        Events::V2MoneyManagementTransactionCreatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEvent,
        Events::V2MoneyManagementTransactionUpdatedEvent.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEvent,
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
        Events::V2CoreEventDestinationPingEventNotification.lookup_type =>
        Events::V2CoreEventDestinationPingEventNotification,
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification.lookup_type =>
        Events::V2CoreHealthEventGenerationFailureResolvedEventNotification,
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
        Events::V2MoneyManagementTransactionCreatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionCreatedEventNotification,
        Events::V2MoneyManagementTransactionUpdatedEventNotification.lookup_type =>
        Events::V2MoneyManagementTransactionUpdatedEventNotification,
        # event notification types: The end of the section generated from our OpenAPI spec
      }
    end
  end
end
