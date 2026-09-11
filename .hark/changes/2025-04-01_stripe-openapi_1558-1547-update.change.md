---
title: ", [#1558](https://github.com/stripe/stripe-ruby/pull/1558), [#1547](https://github.com/stripe/stripe-ruby/pull/1547) Update generated code for beta"
pr_link: https://github.com/stripe/stripe-ruby/pull/1563
is_stripe_api_change: true
released_in_version: 14.1.0-beta.1
---

This release changes the pinned API version to `2025-03-31.preview`

### Breaking changes
  * Change type of `QuotePreviewInvoice::Parent::SubscriptionDetail.subscription` from `string` to `expandable($Subscription)`
  * Remove support for `value` on `TerminalReader::Action::CollectInput::Input::Selection::Choice`, `TerminalReader::Action::CollectInput::Input::Selection`, and `TerminalReader::CollectInputsParams::Input::Selection::Choice`

### Additions
  * Add support for `payment_method_options` on `ConfirmationToken::CreateParams`
  * Add support for `installments` on `ConfirmationToken::PaymentMethodOption::Card`
  * Change `BillingCreditBalanceSummary::RetrieveParams.customer`, `BillingCreditBalanceTransaction::ListParams.customer`, `BillingCreditGrant::CreateParams.customer`, `BillingPortalSession::CreateParams.customer`, `CustomerSession::CreateParams.customer`, `InvoiceItem::CreateParams.customer`, `PaymentMethod::AttachParams.customer`, and `Subscription::CreateParams.customer` to be optional
  * Add support for `update_line_items` on `CheckoutSession::CreateParams::Permission` and `CheckoutSession::Permission`
  * Add support for `billie` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
  * Add support for `id` and `text` on `TerminalReader::Action::CollectInput::Input::Selection::Choice`, `TerminalReader::Action::CollectInput::Input::Selection`, and `TerminalReader::CollectInputsParams::Input::Selection::Choice`
  * Add support for new resources `BalanceSettings`
  * Add support for `retrieve` and `update` methods on resource `BalanceSettings`
  * Add support for `create`, `delete`, `list`, `retrieve`, and `update` methods on a new `ExternalAccountService` class to access cards and bank accounts made available in the new path `v1/external_accounts`. Access this via `StripeClient.external_accounts`

#### New APIs for Money CardManagement

* Add support for new resources `V2::Core::Vault::UsBankAccount`, `V2::FinancialAddressCreditSimulation`, `V2::FinancialAddressGeneratedMicrodeposits`, `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::FinancialAccount`, `V2::MoneyManagement::FinancialAddress`, `V2::MoneyManagement::InboundTransfer`, `V2::MoneyManagement::OutboundPaymentQuote`, `V2::MoneyManagement::OutboundPayment`, `V2::MoneyManagement::OutboundSetupIntent`, `V2::MoneyManagement::OutboundTransfer`, `V2::MoneyManagement::PayoutMethod`, `V2::MoneyManagement::PayoutMethodsBankAccountSpec`, `V2::MoneyManagement::ReceivedCredit`, `V2::MoneyManagement::ReceivedDebit`, `V2::MoneyManagement::TransactionEntry`, and `V2::MoneyManagement::Transaction`
* Add support for `create` method on resource `V2::MoneyManagement::OutboundPaymentQuote`
* Add support for `list` and `retrieve` methods on resources `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::FinancialAccount`, `V2::MoneyManagement::ReceivedCredit`, `V2::MoneyManagement::ReceivedDebit`, `V2::MoneyManagement::TransactionEntry`, and `V2::MoneyManagement::Transaction`
* Add support for `create`, `list`, and `retrieve` methods on resources `V2::MoneyManagement::FinancialAddress` and `V2::MoneyManagement::InboundTransfer`
* Add support for `cancel`, `create`, `list`, and `retrieve` methods on resources `V2::MoneyManagement::OutboundPayment` and `V2::MoneyManagement::OutboundTransfer`
* Add support for `archive`, `list`, `retrieve`, and `unarchive` methods on resource `V2::MoneyManagement::PayoutMethod`
* Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::OutboundSetupIntent`
* Add support for `retrieve` method on resource `V2::MoneyManagement::PayoutMethodsBankAccountSpec`
* Add support for new thin event `V2MoneyManagementFinancialAccountCreatedEvent` with related object `V2::MoneyManagement::FinancialAccount`
* Add support for new thin events `V2MoneyManagementFinancialAddressActivatedEvent` and `V2MoneyManagementFinancialAddressFailedEvent` with related object `V2::MoneyManagement::FinancialAddress`
* Add support for new thin events `V2MoneyManagementInboundTransferAvailableEvent`, `V2MoneyManagementInboundTransferBankDebitFailedEvent`, `V2MoneyManagementInboundTransferBankDebitProcessingEvent`, `V2MoneyManagementInboundTransferBankDebitQueuedEvent`, `V2MoneyManagementInboundTransferBankDebitReturnedEvent`, and `V2MoneyManagementInboundTransferBankDebitSucceededEvent` with related object `V2::MoneyManagement::InboundTransfer`
* Add support for new thin events `V2MoneyManagementOutboundPaymentCanceledEvent`, `V2MoneyManagementOutboundPaymentCreatedEvent`, `V2MoneyManagementOutboundPaymentFailedEvent`, `V2MoneyManagementOutboundPaymentPostedEvent`, and `V2MoneyManagementOutboundPaymentReturnedEvent` with related object `V2::MoneyManagement::OutboundPayment`
* Add support for new thin events `V2MoneyManagementOutboundTransferCanceledEvent`, `V2MoneyManagementOutboundTransferCreatedEvent`, `V2MoneyManagementOutboundTransferFailedEvent`, `V2MoneyManagementOutboundTransferPostedEvent`, and `V2MoneyManagementOutboundTransferReturnedEvent` with related object `V2::MoneyManagement::OutboundTransfer`
* Add support for new thin events `V2MoneyManagementReceivedCreditAvailableEvent`, `V2MoneyManagementReceivedCreditFailedEvent`, `V2MoneyManagementReceivedCreditReturnedEvent`, and `V2MoneyManagementReceivedCreditSucceededEvent` with related object `V2::MoneyManagement::ReceivedCredit`
* Add support for new thin events `V2MoneyManagementReceivedDebitCanceledEvent`, `V2MoneyManagementReceivedDebitFailedEvent`, `V2MoneyManagementReceivedDebitPendingEvent`, `V2MoneyManagementReceivedDebitSucceededEvent`, and `V2MoneyManagementReceivedDebitUpdatedEvent` with related object `V2::MoneyManagement::ReceivedDebit`
* Add support for new error types `AlreadyCanceledError`, `BlockedByStripeError`, `ControlledByDashboardError`, `FeatureNotEnabledError`, `FinancialAccountNotOpenError`, `InsufficientFundsError`, `InvalidPayoutMethodError`, `NotCancelableError`, and `RecipientNotNotifiableError`


#### New APIs for Accounts v2 in private preview
See [SaaS platform payments with subscription billing using Accounts v2](https://docs.stripe.com/connect/accounts-v2/saas-platform-payments-billing)

* Add support for new resources `V2::Core::AccountLink`, `V2::Core::Account`, `V2::Core::Person`, `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`
* Add support for `close`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Core::Account`
* Add support for `create` method on resources `V2::Core::AccountLink` and `V2::MoneyManagement::OutboundPaymentQuote`
* Add support for `acknowledge_confirmation_of_payee`, `archive`, `create`, `initiate_confirmation_of_payee`, and `retrieve` methods on resource `V2::Core::Vault::GbBankAccount`
* Add support for `archive`, `create`, `retrieve`, and `update` methods on resource `V2::Core::Vault::UsBankAccount`
* Add support for new thin events `V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationCustomerUpdatedEvent`, `V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationMerchantUpdatedEvent`, `V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationRecipientUpdatedEvent`, `V2CoreAccountIncludingIdentityUpdatedEvent`, and `V2CoreAccountIncludingRequirementsUpdatedEvent`
* Add support for new thin event `V2CoreAccountLinkCompletedEvent` with related object `V2::Core::AccountLink`
* Add support for new thin events `V2CoreAccountPersonCreatedEvent`, `V2CoreAccountPersonDeletedEvent`, and `V2CoreAccountPersonUpdatedEvent` with related object `V2::Core::Person`
