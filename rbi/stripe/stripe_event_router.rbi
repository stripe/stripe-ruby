# frozen_string_literal: true
# typed: true

module Stripe
  class UnhandledNotificationDetails
    sig { returns(T::Boolean) }
    def is_known_event_type; end
  end

  class StripeEventRouter
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
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V1BillingMeterErrorReportTriggeredEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingMeterNoMeterFoundEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V1BillingMeterNoMeterFoundEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountClosedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingDefaultsUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingIdentityUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingIdentityUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingRequirementsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountIncludingRequirementsUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountLinkReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountLinkReturnedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountPersonCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountPersonDeletedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreAccountPersonUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreEventDestinationPingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreEventDestinationPingEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthEventGenerationFailureResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2CoreHealthEventGenerationFailureResolvedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementAdjustmentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementAdjustmentCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementFinancialAccountCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementFinancialAccountUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementFinancialAddressActivatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementFinancialAddressFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferAvailableEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferBankDebitFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferBankDebitProcessingEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitQueuedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferBankDebitQueuedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferBankDebitReturnedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementInboundTransferBankDebitSucceededEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentCanceledEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentPostedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentReturnedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundPaymentUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferCanceledEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferPostedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferReturnedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementOutboundTransferUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementPayoutMethodUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementPayoutMethodUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedCreditAvailableEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedCreditFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedCreditReturnedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedCreditSucceededEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedDebitCanceledEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedDebitFailedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitPendingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedDebitPendingEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedDebitSucceededEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementReceivedDebitUpdatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementTransactionCreatedEventNotification(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_V2MoneyManagementTransactionUpdatedEventNotification(&blk);
    end
    
    
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
