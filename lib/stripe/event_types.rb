# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.thin_event_names_to_classes
      {
        # The beginning of the section generated from our OpenAPI spec
        AccountConfigurationRecipientDataAccountLinkCompletedEvent.lookup_type =>
        AccountConfigurationRecipientDataAccountLinkCompletedEvent,
        AccountConfigurationRecipientDataFeatureStatusUpdatedEvent.lookup_type =>
        AccountConfigurationRecipientDataFeatureStatusUpdatedEvent,
        AccountRequirementsUpdatedEvent.lookup_type => AccountRequirementsUpdatedEvent,
        FinancialAccountBalanceOpenedEvent.lookup_type => FinancialAccountBalanceOpenedEvent,
        FinancialAccountCreatedEvent.lookup_type => FinancialAccountCreatedEvent,
        FinancialAddressActivatedEvent.lookup_type => FinancialAddressActivatedEvent,
        FinancialAddressFailedEvent.lookup_type => FinancialAddressFailedEvent,
        InboundTransferBankDebitSucceededEvent.lookup_type => InboundTransferBankDebitSucceededEvent,
        OutboundPaymentCanceledEvent.lookup_type => OutboundPaymentCanceledEvent,
        OutboundPaymentCreatedEvent.lookup_type => OutboundPaymentCreatedEvent,
        OutboundPaymentFailedEvent.lookup_type => OutboundPaymentFailedEvent,
        OutboundPaymentPostedEvent.lookup_type => OutboundPaymentPostedEvent,
        OutboundPaymentReturnedEvent.lookup_type => OutboundPaymentReturnedEvent,
        OutboundTransferCanceledEvent.lookup_type => OutboundTransferCanceledEvent,
        OutboundTransferCreatedEvent.lookup_type => OutboundTransferCreatedEvent,
        OutboundTransferFailedEvent.lookup_type => OutboundTransferFailedEvent,
        OutboundTransferPostedEvent.lookup_type => OutboundTransferPostedEvent,
        OutboundTransferReturnedEvent.lookup_type => OutboundTransferReturnedEvent,
        ReceivedCreditAvailableEvent.lookup_type => ReceivedCreditAvailableEvent,
        ReceivedCreditFailedEvent.lookup_type => ReceivedCreditFailedEvent,
        ReceivedCreditReturnedEvent.lookup_type => ReceivedCreditReturnedEvent,
        ReceivedCreditSucceededEvent.lookup_type => ReceivedCreditSucceededEvent,
        V1BillingMeterErrorReportTriggeredEvent.lookup_type => V1BillingMeterErrorReportTriggeredEvent,
        V1BillingMeterNoMeterFoundEvent.lookup_type => V1BillingMeterNoMeterFoundEvent,
        V2CoreEventDestinationPingEvent.lookup_type => V2CoreEventDestinationPingEvent,
        # The end of the section generated from our OpenAPI spec
      }
    end
  end
end
