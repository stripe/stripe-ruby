---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1988
semver_level: major
is_stripe_api_change: true
released_in_version: 20.1.0-alpha.2
---

* Add support for new resources `Radar::Rule`, `V2::MoneyManagement::FundingSession`, and `V2::MoneyManagement::InboundTransferMandate`
* Add support for `cancel`, `create`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::InboundTransferMandate`
* Add support for `create` method on resource `V2::MoneyManagement::FundingSession`
* Add support for `excluded_payout_destinations` on `AccountUpdateParams::Setting::Capital`
* Add support for `wero_payments` on `Account::Capability`
* ⚠️ Change type of `Charge::Outcome.rule` from `RadarRule` to `$Radar.Rule`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Swish`, `PaymentAttemptRecord::PaymentMethodDetail::Swish`, and `PaymentRecord::PaymentMethodDetail::Swish`
* Add support for `payment_settings` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `on_behalf_of` on `Checkout::Session`
* Add support for `flexible_credential` on `Issuing::Authorization`
* Add support for `fuels` on `Issuing::Transaction::PurchaseDetail`
* Add support for `us_bank_account` on `PaymentAttemptRecordReportFailedParams::PaymentMethodDetail`, `PaymentRecordReportPaymentAttemptFailedParams::PaymentMethodDetail`, `PaymentRecordReportPaymentAttemptParams::PaymentMethodDetail`, `PaymentRecordReportPaymentParams::PaymentMethodDetail`, `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail`, and `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail`
* Change type of `PaymentAttemptRecordReportFailedParams::PaymentMethodDetail.type` and `PaymentRecordReportPaymentAttemptFailedParams::PaymentMethodDetail.type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `fleet` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
* Add support for `subscription_reference` on `PaymentIntent::PaymentMethodOption::Paypay`, `PaymentIntentConfirmParams::PaymentMethodOption::Paypay`, `PaymentIntentCreateParams::PaymentMethodOption::Paypay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Paypay`
* Add support for `enablement_details` on `QuotePreviewSubscriptionSchedule::DefaultSetting::AutomaticTax`, `QuotePreviewSubscriptionSchedule::Phase::AutomaticTax`, `Subscription::AutomaticTax`, `SubscriptionSchedule::DefaultSetting::AutomaticTax`, and `SubscriptionSchedule::Phase::AutomaticTax`
* Change type of `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail.money_movement_type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `rules` on `Radar::PaymentEvaluation`
* ⚠️ Change type of `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail.money_movement_type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `bank_initiated_return` on `Radar::PaymentEvaluation::Signal`
* Add support for `utility_users_tax` on `Tax::Registration::CountryOption::Me`
* Add support for `enable_customer_cancellation` on `Terminal::ReaderActivateGiftCardParams`, `Terminal::ReaderCashoutGiftCardParams`, `Terminal::ReaderCheckGiftCardBalanceParams`, and `Terminal::ReaderReloadGiftCardParams`
* Add support for `vipps_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `business_custodial_storage` on `V2::Core::Account::Configuration::MoneyManager::Capability`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability`
* Add support for `offramp` and `onramp` on `V2::Core::Account::Configuration::MoneyManager::Capability::OutboundPayment`, `V2::Core::Account::Configuration::MoneyManager::Capability::OutboundTransfer`, `V2::Core::Account::Configuration::MoneyManager::Capability::ReceivedCredit`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::OutboundPayment`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::OutboundTransfer`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::ReceivedCredit`, `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::OutboundPayment`, `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::OutboundTransfer`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::ReceivedCredit`
* Add support for `pix` on `V2::Core::Account::Configuration::Recipient::Capability`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability`, `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum`, and `V2::MoneyManagement::PayoutMethod`
* Add support for `account` on `V2::MoneyManagement::FinancialAddressCreateParams`, `V2::MoneyManagement::FinancialAddressListParams`, and `V2::MoneyManagement::FinancialAddress`
* Add support for `supported_network_details` on `V2::MoneyManagement::FinancialAddress::CryptoWallet`
* Add support for `network_details` on `V2::MoneyManagement::InboundTransferCreateParams` and `V2::MoneyManagement::InboundTransfer`
* Add support for `bacs_debit` on `V2::MoneyManagement::InboundTransfer::From::PaymentMethod`
* Add support for `bic` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Aba` and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::SortCode`
* Add support for `originating_crypto_wallet`, `token_currency`, and `transaction_hash` on `V2::MoneyManagement::ReceivedCredit::CryptoWalletTransfer`
* Add support for `invoices` on `V2::Tax::IntegrationConfigurationUpdateParams` and `V2::Tax::IntegrationConfiguration`
* ⚠️ Remove support for `account` on `V2::Risk::InquiryListParams`
* Add support for `customer` and `subscription` on `EventsV1InvoiceUpcomingEvent`
* Add support for event notifications `V2MoneyManagementInboundTransferMandateActivatedEvent`, `V2MoneyManagementInboundTransferMandateCreatedEvent`, `V2MoneyManagementInboundTransferMandateExpiredEvent`, `V2MoneyManagementInboundTransferMandateRefusedEvent`, and `V2MoneyManagementInboundTransferMandateRevokedEvent` with related object `V2::MoneyManagement::InboundTransferMandate`
