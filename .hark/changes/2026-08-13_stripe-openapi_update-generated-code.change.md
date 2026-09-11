---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1925
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.6.0-alpha.1
---

* Add support for new resource `V2::Tax::OperationsResolveAddressResult`
* Add support for `resolve_address` method on resource `V2::Tax::OperationsResolveAddressResult`
* Add support for `confirm` and `fx_quote` methods on resource `V2::MoneyManagement::PayoutIntent`
* Add support for `customer_update` on `BillingPortal::Session::Flow`
* Add support for `funding_source_group` on `Charge::PaymentMethodDetail::Link`
* ⚠️ Remove support for `pricing_group` on `Charge::PaymentMethodDetail::Link`
* Add support for `celo` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
* Add support for `customer_portal` on `CustomerSession::Component`
* Add support for `applied_to_invoice` and `type` on `CustomerCustomerBalanceTransactionCreateParams`
* Add support for `classification_state` and `enrichment_state` on `FinancialConnections::Account`
* Add support for `country` on `FinancialConnections::Session::Filter`
* Add support for `classifications` and `enrichments` on `FinancialConnections::Transaction`
* Add support for `customer_balance` on `Invoice` and `QuotePreviewInvoice`
* Add support for `billie` on `Invoice::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, and `Subscription::PaymentSetting::PaymentMethodOption`
* Add support for `hold_amount_details` and `hold_amount` on `Issuing::Authorization::PendingRequest` and `Issuing::Authorization::RequestHistory`
* Add support for `network_decline_code` on `PaymentAttemptRecordReportFailedParams::PaymentMethodDetail::Card` and `PaymentRecordReportPaymentAttemptFailedParams::PaymentMethodDetail::Card`
* Add support for `setup_future_usage` on `PaymentIntent::PaymentMethodOption::Sequra`
* Add support for `status` on `QuotePreviewSubscriptionSchedule::PauseSchedule::Pause`, `QuotePreviewSubscriptionSchedule::PauseSchedule::Resume`, `SubscriptionSchedule::PauseSchedule::Pause`, and `SubscriptionSchedule::PauseSchedule::Resume`
* Change `SubscriptionScheduleCreateParams::PauseSchedule.pause` to be optional
* Change type of `SubscriptionScheduleUpdateParams::PauseSchedule.resume` from `pause_schedule_update_resume_params` to `emptyable(pause_schedule_update_resume_params)`
* Add support for `acquirer` on `EventsV2CoreHealthAuthorizationRateDropFiringEvent`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent`, `V2::Core::Health::Alert::AuthorizationRateDrop::Dimension`, and `V2::Core::Health::AlertHistoryEntry::AuthorizationRateDrop::Dimension`
* ⚠️ Change type of `EventsV2CoreHealthAuthorizationRateDropFiringEvent.type`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent.type`, `V2::Core::Health::Alert::AuthorizationRateDrop::Dimension.type`, and `V2::Core::Health::AlertHistoryEntry::AuthorizationRateDrop::Dimension.type` from `literal('issuer')` to `enum('acquirer'|'issuer')`
* Add support for `confirmation_method` on `V2::MoneyManagement::PayoutIntentCreateParams` and `V2::MoneyManagement::PayoutIntent`
* Add support for `estimated_fees` and `fx_quote` on `V2::MoneyManagement::PayoutIntent`
* Add support for `debited` on `V2::MoneyManagement::PayoutIntent::From`
* Add support for `confirm` on `V2::MoneyManagement::PayoutIntent::NextAction`
* ⚠️ Change type of `V2::MoneyManagement::PayoutIntent::NextAction.type` from `literal('handle_failure')` to `enum('confirm'|'handle_failure')`
* Add support for `credited` on `V2::MoneyManagement::PayoutIntent::To`
* Add support for event notification `V1BalanceSettingsUpdatedEvent` with related object `BalanceSettings`
* Add support for event notification `V1BillingCreditBalanceTransactionCreatedEvent` with related object `Billing::CreditBalanceTransaction`
* Add support for event notifications `V1BillingCreditGrantCreatedEvent` and `V1BillingCreditGrantUpdatedEvent` with related object `Billing::CreditGrant`
* Add support for event notifications `V1BillingMeterCreatedEvent`, `V1BillingMeterDeactivatedEvent`, `V1BillingMeterReactivatedEvent`, and `V1BillingMeterUpdatedEvent` with related object `Billing::Meter`
* Add support for event notifications `V1FinancialConnectionsAccountAccountNumbersUpdatedEvent`, `V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEvent`, `V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEvent`, `V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEvent`, and `V1FinancialConnectionsAccountUpcomingDeactivationEvent` with related object `FinancialConnections::Account`
* Add support for event notification `V1InvoicePaymentAttemptRequiredEvent` with related object `Invoice`
* Add support for error type `FxQuoteNeedsRefreshError`
