# frozen_string_literal: true
# typed: true

module Stripe
  class UnhandledNotificationDetails
    sig { returns(T::Boolean) }
    def is_known_event_type; end
  end

  class StripeEventNotificationHandler
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
    def on_v1_billing_meter_error_report_triggered(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V1BillingMeterNoMeterFoundEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v1_billing_meter_no_meter_found(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountClosedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_closed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_customer_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_customer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_merchant_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_merchant_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_recipient_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_recipient_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_storer_capability_status_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_configuration_storer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingDefaultsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_defaults_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_future_requirements_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingIdentityUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_identity_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountIncludingRequirementsUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_including_requirements_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountLinkReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_link_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonDeletedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_deleted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreAccountPersonUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_account_person_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreEventDestinationPingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_event_destination_ping(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2CoreHealthEventGenerationFailureResolvedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_core_health_event_generation_failure_resolved(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementAdjustmentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_adjustment_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAccountUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_account_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressActivatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_address_activated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementFinancialAddressFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_financial_address_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitProcessingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_processing(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitQueuedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_queued(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementInboundTransferBankDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_inbound_transfer_bank_debit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_posted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundPaymentUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_payment_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferPostedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_posted(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementOutboundTransferUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_outbound_transfer_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementPayoutMethodCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_payout_method_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementPayoutMethodUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_payout_method_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditAvailableEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_available(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditReturnedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_returned(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedCreditSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_credit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitCanceledEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_canceled(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitFailedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_failed(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitPendingEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_pending(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitSucceededEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_succeeded(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementReceivedDebitUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_received_debit_updated(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionCreatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_transaction_created(&blk);
    end
    
    sig do
      params(blk: T.proc.params(event_notification: ::Stripe::Events::V2MoneyManagementTransactionUpdatedEventNotification, client: ::Stripe::StripeClient).void).void
    end
    def on_v2_money_management_transaction_updated(&blk);
    end
    
    
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
