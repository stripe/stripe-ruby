# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.thin_event_names_to_classes
      {
        # The beginning of the section generated from our OpenAPI spec
        V1BillingMeterErrorReportTriggeredEvent.lookup_type => V1BillingMeterErrorReportTriggeredEvent,
        V1BillingMeterNoMeterFoundEvent.lookup_type => V1BillingMeterNoMeterFoundEvent,
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
        V2CoreAccountLinkCompletedEvent.lookup_type => V2CoreAccountLinkCompletedEvent,
        V2CoreAccountPersonCreatedEvent.lookup_type => V2CoreAccountPersonCreatedEvent,
        V2CoreAccountPersonDeletedEvent.lookup_type => V2CoreAccountPersonDeletedEvent,
        V2CoreAccountPersonUpdatedEvent.lookup_type => V2CoreAccountPersonUpdatedEvent,
        V2CoreAccountUpdatedEvent.lookup_type => V2CoreAccountUpdatedEvent,
        V2CoreEventDestinationPingEvent.lookup_type => V2CoreEventDestinationPingEvent,
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
