---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2007
semver_level: minor
is_stripe_api_change: true
released_in_version: 20.1.0
---

* Add support for new resources `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::FinancialAccount`, `V2::MoneyManagement::FinancialAddressCreditSimulation`, `V2::MoneyManagement::FinancialAddress`, `V2::MoneyManagement::InboundTransfer`, `V2::MoneyManagement::OutboundPayment`, `V2::MoneyManagement::OutboundSetupIntent`, `V2::MoneyManagement::PayoutIntent`, `V2::MoneyManagement::PayoutMethod`, `V2::MoneyManagement::PayoutMethodsBankAccountSpec`, `V2::MoneyManagement::ReceivedCredit`, `V2::MoneyManagement::RecipientVerification`, `V2::MoneyManagement::TransactionEntry`, and `V2::MoneyManagement::Transaction`
* Add support for `acknowledge`, `create`, `recipient_verifications`, and `retrieve` methods on resource `V2::MoneyManagement::RecipientVerification`
* Add support for `list` and `retrieve` methods on resources `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::ReceivedCredit`, and `V2::MoneyManagement::TransactionEntry`
* Add support for `list`, `refresh_regulatory_receipt`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::Transaction`
* Add support for `credit` method on resource `V2::MoneyManagement::FinancialAddressCreditSimulation`
* Add support for `retrieve` method on resource `V2::MoneyManagement::PayoutMethodsBankAccountSpec`
* Add support for `archive`, `list`, `retrieve`, and `unarchive` methods on resource `V2::MoneyManagement::PayoutMethod`
* Add support for `cancel`, `confirm`, `create`, `list`, `refresh_fx_quote`, `refresh_recipient_verification`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::PayoutIntent`
* Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::OutboundSetupIntent`
* Add support for `cancel`, `create`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::OutboundPayment`
* Add support for `create`, `list`, and `retrieve` methods on resources `V2::MoneyManagement::FinancialAddress` and `V2::MoneyManagement::InboundTransfer`
* Add support for `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::FinancialAccount`
* Add support for `archive`, `confirm_microdeposits`, `create`, `list`, `retrieve`, `send_microdeposits`, `unarchive`, and `update` methods on resource `V2::Core::Vault::UsBankAccount`
* Add support for `archive`, `create`, `list`, `retrieve`, and `unarchive` methods on resource `V2::Core::Vault::GbBankAccount`
* Add support for `reporting_chart`, `terminal_hardware_orders`, and `terminal_hardware_shop` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `wero_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `physical_address` on `Account::Company`, `AccountCreateParams::Company`, `AccountUpdateParams::Company`, and `TokenCreateParams::Account::Company`
* Add support for `proof_of_business_presence` on `AccountCreateParams::Document` and `AccountUpdateParams::Document`
* Add support for `subscription_pause` on `BillingPortal::Configuration::Feature`, `BillingPortal::ConfigurationCreateParams::Feature`, `BillingPortal::ConfigurationUpdateParams::Feature`, `BillingPortal::Session::Flow`, and `BillingPortal::SessionCreateParams::FlowDatum`
* Add support for `after_expiration` on `BillingPortal::SessionCreateParams` and `BillingPortal::Session`
* Add support for `setup_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, `SetupIntent::PaymentMethodOption::Card`, `SetupIntentConfirmParams::PaymentMethodOption::Card`, `SetupIntentCreateParams::PaymentMethodOption::Card`, and `SetupIntentUpdateParams::PaymentMethodOption::Card`
* Add support for `stored_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentAttemptRecord::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, and `PaymentRecord::PaymentMethodDetail::Card`
* Add support for `account_tax_ids`, `custom_fields`, `description`, and `footer` on `Checkout::SessionCreateParams::SubscriptionDatum::InvoiceSetting`, `PaymentLink::SubscriptionDatum::InvoiceSetting`, `PaymentLinkCreateParams::SubscriptionDatum::InvoiceSetting`, and `PaymentLinkUpdateParams::SubscriptionDatum::InvoiceSetting`
* Add support for `payment_intent_data` on `Checkout::SessionUpdateParams`
* Add support for `intended_submission_method` on `DisputeUpdateParams` and `Dispute`
* Add support for `appeal` on `Dispute::Evidence` and `DisputeUpdateParams::Evidence`
* Add support for `submission_method` on `Dispute::EvidenceDetail`
* Add support for `pause_schedules` on `InvoiceCreatePreviewParams::ScheduleDetail`
* Add support for `financial_account` on `Issuing::CardUpdateParams`
* Add support for `delivered_at` and `shipped_at` on `Issuing::Card::Shipping`
* Add support for `reference_status` and `reference` on `Refund::DestinationDetail::AfterpayClearpay`, `Refund::DestinationDetail::Klarna`, and `Refund::DestinationDetail::Paypal`
* Change `SubscriptionSchedule.pause_schedules` to be required
* Add support for `bw`, `ci`, `gh`, and `mu` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
* Add support for `utility_users_tax` on `Tax::Registration::CountryOption::Me` and `Tax::RegistrationCreateParams::CountryOption::Me`
* Add support for `reader_security` and `stripe_t600` on `Terminal::ConfigurationCreateParams`, `Terminal::ConfigurationUpdateParams`, and `Terminal::Configuration`
* Add support for `bank_accounts` and `cards` on `V2::Core::Account::Configuration::Recipient::Capability`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability`
* Add support for `payout_methods` on `V2::Core::Account::Default` and `V2::Core::AccountUpdateParams::Default`
* Add support for `alternatives` on `V2::Core::Account::FutureRequirement` and `V2::Core::Account::Requirement`
* Add support for `customer` and `subscription` on `EventsV1InvoiceUpcomingEvent`
* Add support for event notifications `V1CustomerDiscountSourceChangedEvent`, `V1EntitlementsActiveEntitlementSummaryEntitlementAddedEvent`, and `V1EntitlementsActiveEntitlementSummaryEntitlementRemovedEvent`
* Add support for event notifications `V1CustomerSubscriptionActiveEvent`, `V1CustomerSubscriptionCancelAtChangedEvent`, `V1CustomerSubscriptionDefaultPaymentMethodChangedEvent`, `V1CustomerSubscriptionIncompleteEvent`, `V1CustomerSubscriptionIncompleteExpiredEvent`, `V1CustomerSubscriptionItemAddedEvent`, `V1CustomerSubscriptionItemPriceChangedEvent`, `V1CustomerSubscriptionItemQuantityChangedEvent`, `V1CustomerSubscriptionItemRemovedEvent`, `V1CustomerSubscriptionItemTaxRatesChangedEvent`, `V1CustomerSubscriptionPastDueEvent`, `V1CustomerSubscriptionTrialingEvent`, and `V1CustomerSubscriptionUnpaidEvent` with related object `Subscription`
* Add support for event notifications `V1FinancialConnectionsAccountBalanceRefreshFailedEvent`, `V1FinancialConnectionsAccountBalanceRefreshSucceededEvent`, `V1FinancialConnectionsAccountInferredBalancesRefreshFailedEvent`, `V1FinancialConnectionsAccountInferredBalancesRefreshSucceededEvent`, `V1FinancialConnectionsAccountOwnershipRefreshFailedEvent`, `V1FinancialConnectionsAccountOwnershipRefreshSucceededEvent`, `V1FinancialConnectionsAccountRiskIntelligenceRefreshFailedEvent`, `V1FinancialConnectionsAccountRiskIntelligenceRefreshSucceededEvent`, `V1FinancialConnectionsAccountTransactionsRefreshFailedEvent`, and `V1FinancialConnectionsAccountTransactionsRefreshSucceededEvent` with related object `FinancialConnections::Account`
* Add support for event notifications `V1InvoiceDiscountAddedEvent`, `V1InvoiceDiscountRemovedEvent`, `V1InvoiceLineItemAddedEvent`, `V1InvoiceLineItemPricingChangedEvent`, `V1InvoiceLineItemQuantityChangedEvent`, and `V1InvoiceLineItemRemovedEvent` with related object `Invoice`
* Add support for event notifications `V1InvoicePaymentCanceledEvent` and `V1InvoicePaymentOpenEvent` with related object `InvoicePayment`
* Add support for event notifications `V1InvoiceitemAmountChangedEvent`, `V1InvoiceitemDiscountAddedEvent`, and `V1InvoiceitemDiscountRemovedEvent` with related object `InvoiceItem`
* Add support for event notifications `V1PriceActivatedEvent`, `V1PriceDeactivatedEvent`, `V1PriceLookupKeyChangedEvent`, and `V1PriceTaxBehaviorChangedEvent` with related object `Price`
* Add support for event notifications `V1ProductActivatedEvent`, `V1ProductDeactivatedEvent`, `V1ProductDefaultPriceChangedEvent`, and `V1ProductTaxCodeChangedEvent` with related object `Product`
* Add support for event notification `V1PromotionCodeFullyRedeemedEvent` with related object `PromotionCode`
* Add support for event notifications `V1SubscriptionSchedulePhaseAddedEvent`, `V1SubscriptionSchedulePhaseDefaultTaxRatesChangedEvent`, `V1SubscriptionSchedulePhaseEndDateChangedEvent`, `V1SubscriptionSchedulePhaseRemovedEvent`, and `V1SubscriptionSchedulePhaseTrialEndChangedEvent` with related object `SubscriptionSchedule`
* Add support for event notification `V2MoneyManagementAdjustmentCreatedEvent` with related object `V2::MoneyManagement::Adjustment`
* Add support for event notifications `V2MoneyManagementFinancialAccountCreatedEvent` and `V2MoneyManagementFinancialAccountUpdatedEvent` with related object `V2::MoneyManagement::FinancialAccount`
* Add support for event notifications `V2MoneyManagementFinancialAddressActivatedEvent` and `V2MoneyManagementFinancialAddressFailedEvent` with related object `V2::MoneyManagement::FinancialAddress`
* Add support for event notifications `V2MoneyManagementInboundTransferAvailableEvent`, `V2MoneyManagementInboundTransferBankDebitFailedEvent`, `V2MoneyManagementInboundTransferBankDebitProcessingEvent`, `V2MoneyManagementInboundTransferBankDebitQueuedEvent`, `V2MoneyManagementInboundTransferBankDebitReturnedEvent`, and `V2MoneyManagementInboundTransferBankDebitSucceededEvent` with related object `V2::MoneyManagement::InboundTransfer`
* Add support for event notifications `V2MoneyManagementOutboundPaymentCanceledEvent`, `V2MoneyManagementOutboundPaymentCreatedEvent`, `V2MoneyManagementOutboundPaymentFailedEvent`, `V2MoneyManagementOutboundPaymentPostedEvent`, `V2MoneyManagementOutboundPaymentReturnedEvent`, `V2MoneyManagementOutboundPaymentUnderReviewEvent`, and `V2MoneyManagementOutboundPaymentUpdatedEvent` with related object `V2::MoneyManagement::OutboundPayment`
* Add support for event notifications `V2MoneyManagementPayoutIntentCanceledEvent`, `V2MoneyManagementPayoutIntentCreatedEvent`, `V2MoneyManagementPayoutIntentPendingEvent`, `V2MoneyManagementPayoutIntentPostedEvent`, `V2MoneyManagementPayoutIntentProcessingEvent`, `V2MoneyManagementPayoutIntentRequiresActionEvent`, and `V2MoneyManagementPayoutIntentUpdatedEvent` with related object `V2::MoneyManagement::PayoutIntent`
* Add support for event notifications `V2MoneyManagementPayoutMethodCreatedEvent` and `V2MoneyManagementPayoutMethodUpdatedEvent` with related object `V2::MoneyManagement::PayoutMethod`
* Add support for event notifications `V2MoneyManagementReceivedCreditAvailableEvent`, `V2MoneyManagementReceivedCreditFailedEvent`, `V2MoneyManagementReceivedCreditReturnedEvent`, and `V2MoneyManagementReceivedCreditSucceededEvent` with related object `V2::MoneyManagement::ReceivedCredit`
* Add support for event notifications `V2MoneyManagementRecipientVerificationCreatedEvent` and `V2MoneyManagementRecipientVerificationUpdatedEvent` with related object `V2::MoneyManagement::RecipientVerification`
* Add support for event notifications `V2MoneyManagementTransactionCreatedEvent` and `V2MoneyManagementTransactionUpdatedEvent` with related object `V2::MoneyManagement::Transaction`
* Add support for error types `AlreadyCanceledError`, `BlockedByStripeError`, `CannotProceedError`, `CapabilityNotEnabledError`, `ControlledByAlternateResourceError`, `FeatureNotEnabledError`, `FinancialAccountNotOpenError`, `FxQuoteNeedsRefreshError`, `InsufficientFundsError`, `InvalidPaymentMethodError`, `InvalidPayoutMethodError`, `InvalidVaultedCredentialError`, `NotCancelableError`, `QuotaExceededError`, `RecipientNotNotifiableError`, `VerificationAttemptFailedError`, `VerificationExpiredError`, and `VerificationNotInitiatedError`
