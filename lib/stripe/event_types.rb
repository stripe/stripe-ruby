# frozen_string_literal: true

module Stripe
  module EventTypes
    def self.thin_event_names_to_classes
      {
        # The beginning of the section generated from our OpenAPI spec
        V2::AccountConfigurationRecipientDataAccountLinkCompletedEvent.lookup_type =>
        V2::AccountConfigurationRecipientDataAccountLinkCompletedEvent,
        V2::AccountConfigurationRecipientDataFeatureStatusUpdatedEvent.lookup_type =>
        V2::AccountConfigurationRecipientDataFeatureStatusUpdatedEvent,
        V2::AccountRequirementsUpdatedEvent.lookup_type => V2::AccountRequirementsUpdatedEvent,
        V2::EventDestinationPingEvent.lookup_type => V2::EventDestinationPingEvent,
        V2::FinancialAccountBalanceOpenedEvent.lookup_type => V2::FinancialAccountBalanceOpenedEvent,
        V2::FinancialAccountCreatedEvent.lookup_type => V2::FinancialAccountCreatedEvent,
        V2::FinancialAddressActivatedEvent.lookup_type => V2::FinancialAddressActivatedEvent,
        V2::FinancialAddressFailedEvent.lookup_type => V2::FinancialAddressFailedEvent,
        V2::InboundTransferBankDebitSucceededEvent.lookup_type =>
        V2::InboundTransferBankDebitSucceededEvent,
        V2::OutboundPaymentCanceledEvent.lookup_type => V2::OutboundPaymentCanceledEvent,
        V2::OutboundPaymentCreatedEvent.lookup_type => V2::OutboundPaymentCreatedEvent,
        V2::OutboundPaymentFailedEvent.lookup_type => V2::OutboundPaymentFailedEvent,
        V2::OutboundPaymentPostedEvent.lookup_type => V2::OutboundPaymentPostedEvent,
        V2::OutboundPaymentReturnedEvent.lookup_type => V2::OutboundPaymentReturnedEvent,
        V2::OutboundTransferCanceledEvent.lookup_type => V2::OutboundTransferCanceledEvent,
        V2::OutboundTransferCreatedEvent.lookup_type => V2::OutboundTransferCreatedEvent,
        V2::OutboundTransferFailedEvent.lookup_type => V2::OutboundTransferFailedEvent,
        V2::OutboundTransferPostedEvent.lookup_type => V2::OutboundTransferPostedEvent,
        V2::OutboundTransferReturnedEvent.lookup_type => V2::OutboundTransferReturnedEvent,
        V2::ReceivedCreditAvailableEvent.lookup_type => V2::ReceivedCreditAvailableEvent,
        V2::ReceivedCreditFailedEvent.lookup_type => V2::ReceivedCreditFailedEvent,
        V2::ReceivedCreditReturnedEvent.lookup_type => V2::ReceivedCreditReturnedEvent,
        V2::ReceivedCreditSucceededEvent.lookup_type => V2::ReceivedCreditSucceededEvent,
        # The end of the section generated from our OpenAPI spec
      }
    end
  end
end
