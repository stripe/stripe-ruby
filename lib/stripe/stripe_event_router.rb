# frozen_string_literal: true

module Stripe
  class UnhandledNotificationDetails
    attr_reader :is_known_event_type

    def initialize(is_known_event_type)
      @is_known_event_type = is_known_event_type
    end
  end

  class StripeEventRouter
    def initialize(client, webhook_secret, &on_unhandled_handler)
      raise ArgumentError, "You must pass a block to respond to unhandled events" if on_unhandled_handler.nil?

      @client = client
      @webhook_secret = webhook_secret
      @on_unhandled_handler = on_unhandled_handler

      @registered_handlers = {}
      @has_handled_events = false
    end

    def handle(webhook_body, sig_header)
      @has_handled_events = true

      notif = @client.parse_event_notification(
        webhook_body,
        sig_header,
        @webhook_secret
      )

      @handler = @registered_handlers[notif.type]
      if @handler
        @handler.call(notif, @client)
      else
        @on_unhandled_handler.call(notif, @client,
                                   UnhandledNotificationDetails.new(notif.is_a?(Stripe::Events::UnknownEventNotification)))
      end
    end

    def registered_event_types
      @registered_handlers.keys
    end

    private def register(event_type, &handler)
      raise "Cannot register new event handlers after handling events" if @has_handled_events
      if @registered_handlers.key?(event_type)
        raise ArgumentError, "Handler already registered for event type: #{event_type}"
      end

      @registered_handlers[event_type] = handler
    end

    # def on_UnknownEventNotification(event_notification, _client)
    #   raise "Received event type that the SDK doesn't have a corresponding class for: \"#{event_notification.type}\". Consider upgrading your SDK to handle this more gracefully."
    # end

    # event-handler-methods: The beginning of the section generated from our OpenAPI spec
    def on_V1BillingMeterErrorReportTriggeredEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.error_report_triggered", &handler)
    end

    def on_V1BillingMeterNoMeterFoundEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v1.billing.meter.no_meter_found", &handler)
    end

    def on_V2CoreAccountClosedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.closed", &handler)
    end

    def on_V2CoreAccountCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.created", &handler)
    end

    def on_V2CoreAccountUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account.updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.customer].capability_status_updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.customer].updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.merchant].capability_status_updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.merchant].updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification(
      &handler
    )
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.recipient].capability_status_updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.recipient].updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.storer].capability_status_updated", &handler)
    end

    def on_V2CoreAccountIncludingConfigurationStorerUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[configuration.storer].updated", &handler)
    end

    def on_V2CoreAccountIncludingDefaultsUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[defaults].updated", &handler)
    end

    def on_V2CoreAccountIncludingIdentityUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[identity].updated", &handler)
    end

    def on_V2CoreAccountIncludingRequirementsUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account[requirements].updated", &handler)
    end

    def on_V2CoreAccountLinkReturnedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_link.returned", &handler)
    end

    def on_V2CoreAccountPersonCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.created", &handler)
    end

    def on_V2CoreAccountPersonDeletedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.deleted", &handler)
    end

    def on_V2CoreAccountPersonUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.account_person.updated", &handler)
    end

    def on_V2CoreEventDestinationPingEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.core.event_destination.ping", &handler)
    end

    def on_V2MoneyManagementAdjustmentCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.adjustment.created", &handler)
    end

    def on_V2MoneyManagementFinancialAccountCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.created", &handler)
    end

    def on_V2MoneyManagementFinancialAccountUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_account.updated", &handler)
    end

    def on_V2MoneyManagementFinancialAddressActivatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_address.activated", &handler)
    end

    def on_V2MoneyManagementFinancialAddressFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.financial_address.failed", &handler)
    end

    def on_V2MoneyManagementInboundTransferAvailableEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.available", &handler)
    end

    def on_V2MoneyManagementInboundTransferBankDebitFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_failed", &handler)
    end

    def on_V2MoneyManagementInboundTransferBankDebitProcessingEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_processing", &handler)
    end

    def on_V2MoneyManagementInboundTransferBankDebitQueuedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_queued", &handler)
    end

    def on_V2MoneyManagementInboundTransferBankDebitReturnedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_returned", &handler)
    end

    def on_V2MoneyManagementInboundTransferBankDebitSucceededEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.inbound_transfer.bank_debit_succeeded", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentCanceledEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.canceled", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.created", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.failed", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentPostedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.posted", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentReturnedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.returned", &handler)
    end

    def on_V2MoneyManagementOutboundPaymentUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_payment.updated", &handler)
    end

    def on_V2MoneyManagementOutboundTransferCanceledEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.canceled", &handler)
    end

    def on_V2MoneyManagementOutboundTransferCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.created", &handler)
    end

    def on_V2MoneyManagementOutboundTransferFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.failed", &handler)
    end

    def on_V2MoneyManagementOutboundTransferPostedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.posted", &handler)
    end

    def on_V2MoneyManagementOutboundTransferReturnedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.returned", &handler)
    end

    def on_V2MoneyManagementOutboundTransferUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.outbound_transfer.updated", &handler)
    end

    def on_V2MoneyManagementPayoutMethodUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.payout_method.updated", &handler)
    end

    def on_V2MoneyManagementReceivedCreditAvailableEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.available", &handler)
    end

    def on_V2MoneyManagementReceivedCreditFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.failed", &handler)
    end

    def on_V2MoneyManagementReceivedCreditReturnedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.returned", &handler)
    end

    def on_V2MoneyManagementReceivedCreditSucceededEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_credit.succeeded", &handler)
    end

    def on_V2MoneyManagementReceivedDebitCanceledEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.canceled", &handler)
    end

    def on_V2MoneyManagementReceivedDebitFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.failed", &handler)
    end

    def on_V2MoneyManagementReceivedDebitPendingEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.pending", &handler)
    end

    def on_V2MoneyManagementReceivedDebitSucceededEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.succeeded", &handler)
    end

    def on_V2MoneyManagementReceivedDebitUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.received_debit.updated", &handler)
    end

    def on_V2MoneyManagementTransactionCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.created", &handler)
    end

    def on_V2MoneyManagementTransactionUpdatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.money_management.transaction.updated", &handler)
    end

    def on_V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.authorization_attempt_failed", &handler)
    end

    def on_V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.authorization_attempt_started", &handler)
    end

    def on_V2PaymentsOffSessionPaymentCanceledEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.canceled", &handler)
    end

    def on_V2PaymentsOffSessionPaymentCreatedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.created", &handler)
    end

    def on_V2PaymentsOffSessionPaymentFailedEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.failed", &handler)
    end

    def on_V2PaymentsOffSessionPaymentRequiresCaptureEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.requires_capture", &handler)
    end

    def on_V2PaymentsOffSessionPaymentSucceededEventNotification(&handler)
      raise ArgumentError, "Block required to register event handler" if handler.nil?

      register("v2.payments.off_session_payment.succeeded", &handler)
    end
    # event-handler-methods: The end of the section generated from our OpenAPI spec
  end
end
